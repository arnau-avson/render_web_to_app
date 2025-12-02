# Renderización Flutter

Este proyecto es una plantilla Flutter para convertir cualquier página web en una aplicación ejecutable multiplataforma (Windows, Android, iOS, Web).

## Descripción

La app carga una web en un `WebView` y la muestra como si fuera una aplicación nativa. El código principal está en `renderizacion_flutter/lib/main.dart`.

## Uso

1. Modifica la URL en `main.dart` para la web que quieras convertir en ejecutable.
2. Ejecuta el proyecto en la plataforma deseada:
   - **Windows:**
     ```powershell
     flutter run -d windows
     ```
   - **Android/iOS/Web:**
     ```powershell
     flutter run -d <dispositivo>
     ```

## Requisitos

- Flutter SDK
- Visual Studio (para Windows)
- CMake

## Dependencias principales
- `webview_flutter` (Android/iOS/Web)
- `webview_windows` (Windows)

## Build para Windows

Para generar el ejecutable de Windows:
```bash
flutter build windows
```

## Desarrollo en Windows

Para ejecutar la app en modo desarrollo en Windows:
```bash
flutter run -d windows
```

## Personalización

- Cambia la URL en el controlador del WebView en `main.dart` para mostrar cualquier web.

---

Este proyecto está pensado únicamente para renderizar webs como ejecutables, sin lógica adicional.
