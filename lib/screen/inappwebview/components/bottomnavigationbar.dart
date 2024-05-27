
import 'package:flutter/material.dart';

import '../inappwebview_screen.dart';



Row bottomNavigationPage() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton(onPressed: () {
        inAppWebViewController.goBack();
      }, icon: const Icon(Icons.arrow_back_ios)),
      IconButton(onPressed: () {
        inAppWebViewController.goForward();
      }, icon: const Icon(Icons.arrow_forward_ios)),
      IconButton(onPressed: () {
        inAppWebViewController.reload();
      }, icon: const Icon(Icons.refresh)),
      IconButton(onPressed: () {

      }, icon: const Icon(Icons.add_box_outlined)),
      IconButton(onPressed: () {

      }, icon: const Icon(Icons.home)),
    ],
  );
}
