import 'package:flutter/material.dart';
import 'package:summation_add/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Summation App",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int summationResult = 0;
  int firstNumber = 0;
  int secondNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sum App"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
        child: Center(
          child: Column(
            children: [
              Text(
                "sumation Result = $summationResult",
                style: myTextStyle(),
              ),
              SizedBox(height: 30,),
              TextField(
                decoration: myInputDecoration('first number'),
                // decoration: InputDecoration(
                //   border: OutlineInputBorder(),
                //   hintText: 'Enter First Number',
                // ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: myInputDecoration('second number'),
                // decoration: InputDecoration(
                //   border: OutlineInputBorder(),
                //   hintText: 'Enter Second Number',
                // ),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: myButtonStyle(),
                    onPressed: (){

                    }, child: Text('Add')),
              )
            ],
          ),
        ),
      ),
    );
  }
}


