# Advance Flutter Ch-3

## 3.1 connectivity_plus package

##### Connectivity Plus is a **Flutter plugin** that allows your apps to get information about currently active network types on a device, whether it's running on cellular, WiFi, or other connection types.

### Getting Started :

1. **Add it to your project** by including the following in your `pubspec.yaml`:

    ```yaml
    dependencies:
      flutter:
        sdk: flutter
      connectivity_plus: "^0.0.1"
    ```

2. **Download the dependency** by running:

    ```bash
    flutter pub get
    ```

## Usage :

Using the `Connectivity` API, you can find out which type of connection the device is using at the moment. Here's an example:

```dart
import 'package:connectivity_plus/connectivity_plus.dart';

final List<ConnectivityResult> connectivityResult = await Connectivity().checkConnectivity();

// This condition is for demo purposes only to explain every connection type.
if (connectivityResult.contains(ConnectivityResult.wifi)) {
  print("Device is connected to WiFi.");
} else if (connectivityResult.contains(ConnectivityResult.mobile)) {
  print("Device is connected to cellular data.");
} else {
  print("No active network connection.");
}
 ```

<div align="center">
  <img src="https://github.com/Meshva30/advance_flutter_ch3/assets/136339359/1bc6de3f-3054-4e3c-a447-4c6e20fbc709" height=500px hspace=20>
  <img src="https://github.com/Meshva30/advance_flutter_ch3/assets/136339359/2697560a-207f-4cbe-a9f9-bbd4db4a57a6" height=500px hspace=20>
  
  <video src="https://github.com/Meshva30/advance_flutter_ch3/assets/136339359/c657a864-c602-4618-9065-0f2230d42688"></video>
</div>





## 3.2 Chrome : flutter_inappwebview Package


`flutter_inappwebview` is a Flutter package that allows you to embed WebView widgets into your Flutter application with ease. It provides a comprehensive set of features and functionalities, enabling you to control web content dynamically.

## Installation

Run `flutter pub get` to install the package.

## Usage

Here's a simple example demonstrating how to use `InAppWebView` and control it using its methods: `goBack`, `goForward`, `reload`, and `loadUrl`.


```dart
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Connectivity Network'),
        ),
        body:InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse("https://flutter.dev")),
        onWebViewCreated: (controller) {
          _webViewController = controller;
        },
      ),
    );
  }
}
```

### Screenshots

<div align="center">
  <img src= "https://github.com/Meshva30/advance_flutter_ch3/assets/136339359/b7d87b03-6116-43cc-b987-3d32db7941d3" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
  <img src= "https://github.com/Meshva30/advance_flutter_ch3/assets/136339359/73c2dd74-38a6-41d7-a10f-09cf71d8a860" width = 240> &nbsp;&nbsp;&nbsp;&nbsp;
</div>

### Video 

<div align="center">
    <video src="https://github.com/Meshva30/advance_flutter_ch3/assets/136339359/2a4f8e78-07df-46e1-ab84-4809285685b8" height=500px>
</div>
















