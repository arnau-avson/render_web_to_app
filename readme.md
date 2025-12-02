# Flutter Web Rendering

This project is a Flutter template to convert any website into a cross-platform executable application (Windows, Android, iOS, Web).

## Description

The app loads a website in a `WebView` and displays it as if it were a native application. The main code is in `renderizacion_flutter/lib/main.dart`.

## Usage

1. Edit the URL in `main.dart` to the website you want to convert into an executable.
2. Run the project on your desired platform for development:
   - **Windows:**
     ```powershell
     flutter run -d windows
     ```
   - **Android/iOS/Web:**
     ```powershell
     flutter run -d <device>
     ```

## Requirements

- Flutter SDK
- Visual Studio (for Windows)
- CMake

## Main dependencies
- `webview_flutter` (Android/iOS/Web)
- `webview_windows` (Windows)

## Build for Windows

To generate the Windows executable:
```bash
flutter build windows
```

## Development on Windows

To run the app in development mode on Windows:
```bash
flutter run -d windows
```

## Customization

- Change the URL in the WebView controller in `main.dart` to display any website.

---

This project is intended only to render websites as executables, with no additional logic.
