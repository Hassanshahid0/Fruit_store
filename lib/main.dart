import 'package:flutter/material.dart';
import 'package:fruite_app/signup.dart';
import 'package:fruite_app/Sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();

  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welome_page(),
      debugShowCheckedModeBanner: false,
      title: "FruitShop",
    );
  }
}

class Welome_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              child: Text(
            'Welcome',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          )),
          SizedBox(height: 20),
          Container(
            width: 250,
            height: 35,
            child: ElevatedButton(
              child: Text('Login',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signin()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(3, 166, 150, 10),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            width: 250,
            height: 35,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signup()),
                );
              },
              child: Text('Signup',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(3, 166, 150, 10),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
