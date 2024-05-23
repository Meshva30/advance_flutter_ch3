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




















