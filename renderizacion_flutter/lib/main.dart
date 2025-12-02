import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_windows/webview_windows.dart' as win;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Render',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: defaultTargetPlatform == TargetPlatform.windows
          ? const WebViewWindowsScreen()
          : const WebViewScreen(),
    );
  }
}

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://ciberkpis.avson.eu/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CiberKPIs')),
      body: WebViewWidget(controller: _controller),
    );
  }
}

class WebViewWindowsScreen extends StatefulWidget {
  const WebViewWindowsScreen({super.key});

  @override
  State<WebViewWindowsScreen> createState() => _WebViewWindowsScreenState();
}

class _WebViewWindowsScreenState extends State<WebViewWindowsScreen> {
  final win.WebviewController _controller = win.WebviewController();
  bool _initialized = false;

  @override
  void initState() {
    super.initState();
    _initWebView();
  }

  Future<void> _initWebView() async {
    await _controller.initialize();
    await _controller.loadUrl('https://ciberkpis.avson.eu/');
    setState(() {
      _initialized = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _initialized
          ? win.Webview(_controller)
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
