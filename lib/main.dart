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

  // int summationResult = 0;
  // int firstNumber = 0;
  // int secondNumber = 0;

  Map<String, double> numberList = {
    "num1":0,
    "num2":0,
    "num3":0,
  };

  double sumResult = 0;

  ///--------------------------- Build Method Start ------------------------///

  @override
  Widget build(BuildContext context) {

    myInputOnChange(inputKey, inputValue){
      setState(() {
        numberList.update(inputKey, (value) => double.parse(inputValue));
      });
    }

    /// addition method
    addAllNumber(){
      setState(() {
        sumResult = numberList['num1']!+numberList['num2']!+numberList['num3']!;
        print(sumResult);
      });
    }

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
                "sumation Result = $sumResult",
                style: myTextStyle(),
              ),
              SizedBox(height: 30,),
              TextField(
                onChanged: (value){
                  myInputOnChange("num1", value);
                },
                decoration: myInputDecoration('first number'),
              ),
              SizedBox(height: 10,),
              TextField(
                onChanged: (value){
                  myInputOnChange("num2", value);
                },
                decoration: myInputDecoration('second number'),
              ),
              SizedBox(height: 10,),
              TextField(
                onChanged: (value){
                  myInputOnChange("num3", value);
                },
                decoration: myInputDecoration('Third number'),
              ),
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: myButtonStyle(),
                    onPressed: (){
                        addAllNumber();
                    }, child: Text('Add')),
              )
            ],
          ),
        ),
      ),
    );
  }
}


