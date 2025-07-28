import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Greeting App"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hello World!",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 10),
              Text("Welcome to Flutter!", style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),
              Image.network(
                width: 300,
                "https://d1uxiwmpc9j4yg.cloudfront.net/images/all/flutter5786_1687632217.jpeg",
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green.shade900,
                      content: Text("Button Pressed!"),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: Text("Press Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
