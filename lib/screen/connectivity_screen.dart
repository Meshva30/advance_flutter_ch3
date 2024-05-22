import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityScreen extends StatelessWidget {
  const ConnectivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          if (snapshot.data!.contains(ConnectivityResult.mobile) ||
              snapshot.data!.contains(ConnectivityResult.wifi)) {
            return Column(
              children: [],
            );
          } else {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 150, left: 20),
                  child: Container(
                      height: 300,
                      width: 370,
                      child: Image.asset(
                        "assets/img/images.png",
                        fit: BoxFit.cover,
                      )),
                ),
                Text(
                  'Oooops!',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'No Internet Connection found Checkyour connection',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: Text(
                    'Try Again',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
