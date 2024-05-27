import 'package:advance_flutter_ch3/screen/Connectivity/connectivity_screen.dart';
import 'package:advance_flutter_ch3/screen/inappwebview/inappwebview_screen.dart';
import 'package:advance_flutter_ch3/screen/inappwebview/provider/LinearProgressIndicator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => IndicatorProvider(),)
    ],
      child: MyApp(),
    ),
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
