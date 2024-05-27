import 'package:advance_flutter_ch3/screen/inappwebview/provider/LinearProgressIndicator_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:provider/provider.dart';

import 'components/bottomnavigationbar.dart';

late InAppWebViewController inAppWebViewController;
TextEditingController txtSearch = TextEditingController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextFormField(
                controller: txtSearch,
                decoration: InputDecoration(
                    hintText: 'Search or type address',
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    suffixIcon: IconButton(
                        onPressed: () {
                          Provider.of<IndicatorProvider>(context, listen: false)
                              .search(txtSearch.text);

                          inAppWebViewController.loadUrl(
                              urlRequest: URLRequest(
                                  url: WebUri(
                                      'https://www.google.com/search?q=${Provider.of<IndicatorProvider>(context, listen: false).searchText}&sca_esv=453cf80c9d34ac6b&sca_upv=1&rlz=1C1CHBD_enIN1099IN1101&sxsrf=ADLYWILO4ZE1r6P0Ha8wvoqAglAm7r1t5A%3A1716482160781&ei=cHBPZpCsL93V1e8PtZ-C2AM&ved=0ahUKEwiQpNOrmqSGAxXdavUHHbWPADsQ4dUDCBE&uact=5&oq=flutter&gs_lp=Egxnd3Mtd2l6LXNlcnAiB2ZsdXR0ZXIyChAjGIAEGCcYigUyChAjGIAEGCcYigUyBBAjGCcyChAAGIAEGEMYigUyCxAAGIAEGLEDGIMBMggQABiABBixAzILEAAYgAQYsQMYgwEyCxAAGIAEGLEDGIoFMgsQABiABBixAxiDATIIEAAYgAQYsQNIphZQ5wpYnRJwAngBkAEBmAGmAqABug6qAQYwLjEyLjG4AQPIAQD4AQGYAgSgAskCwgIKEAAYsAMY1gQYR8ICDRAAGIAEGLADGEMYigXCAgUQABiABJgDAIgGAZAGCpIHAzIuMqAHgnM&sclient=gws-wiz-serp')));
                        },
                        icon: Icon(Icons.search)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none)),
              ),
            )),
      ),
      body: Stack(
        children: [
          InAppWebView(
              initialUrlRequest: URLRequest(
                url: WebUri(
                    'https://www.google.com/search?q=${Provider.of<IndicatorProvider>(context, listen: false).searchText}&sca_esv=453cf80c9d34ac6b&sca_upv=1&rlz=1C1CHBD_enIN1099IN1101&sxsrf=ADLYWILO4ZE1r6P0Ha8wvoqAglAm7r1t5A%3A1716482160781&ei=cHBPZpCsL93V1e8PtZ-C2AM&ved=0ahUKEwiQpNOrmqSGAxXdavUHHbWPADsQ4dUDCBE&uact=5&oq=flutter&gs_lp=Egxnd3Mtd2l6LXNlcnAiB2ZsdXR0ZXIyChAjGIAEGCcYigUyChAjGIAEGCcYigUyBBAjGCcyChAAGIAEGEMYigUyCxAAGIAEGLEDGIMBMggQABiABBixAzILEAAYgAQYsQMYgwEyCxAAGIAEGLEDGIoFMgsQABiABBixAxiDATIIEAAYgAQYsQNIphZQ5wpYnRJwAngBkAEBmAGmAqABug6qAQYwLjEyLjG4AQPIAQD4AQGYAgSgAskCwgIKEAAYsAMY1gQYR8ICDRAAGIAEGLADGEMYigXCAgUQABiABJgDAIgGAZAGCpIHAzIuMqAHgnM&sclient=gws-wiz-serp'),
              ),
              onWebViewCreated: (controller) {
                inAppWebViewController = controller;
              },
              onProgressChanged: (controller, progresss) {
                Provider.of<IndicatorProvider>(context, listen: false)
                    .onProgress(progresss);
              }),
          (Provider.of<IndicatorProvider>(context, listen: true).progress < 1)
              ? Align(
                  alignment: Alignment.bottomCenter,
                  child: LinearProgressIndicator(
                      value:
                          Provider.of<IndicatorProvider>(context, listen: true)
                              .progress))
              : Container(),
        ],
      ),
      bottomNavigationBar: bottomNavigationPage(),
    );
  }
}
