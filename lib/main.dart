import 'package:confirmation_slider_example/success.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Confirmation Slider';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Total Amount: \$48',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ConfirmationSlider(
              height: 64.0, // by default 70.0
              width: 300.0, // by default 300.0
              backgroundColor: Color(0xFFFBE0E6), // by default white
              // backgroundShape: BorderRadius.circular(0.0), // by default circular
              foregroundColor: Color(0xFFC41A3B), // by default blueAccent
              // foregroundShape: BorderRadius.circular(0.0), // by default circular
              // icon: Icons.arrow_forward, //by default chevron_right
              iconColor: Color(0xFFFBE0E6), //by default white
              text: 'Slide to pay', // by default slide to confirm
              textStyle: TextStyle(
                fontWeight: FontWeight.bold, // by default bold
                color: Colors.grey, // by default black26
                fontSize: 18.0,
              ),
              // shadow: BoxShadow(
              //   color: Colors.black, // by default black38
              //   offset: Offset(0,4), // by default (0,2)
              //   blurRadius: 4.0, // by default 2.0
              //   spreadRadius: 8.0 // by default 0
              // ),
              onConfirmation: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Success(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
