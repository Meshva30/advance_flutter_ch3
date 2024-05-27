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
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/img/m1.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
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
                        "assets/img/bg1.png",
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'No Internet Connection',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Text(
                  textAlign: TextAlign.center,
                  ' Check your connection,then refresh the page.',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 50,
                  width: 130,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  child: Text(
                    'Refresh',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
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
