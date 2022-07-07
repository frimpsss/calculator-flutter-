import 'package:flutter/material.dart';
import 'Buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> Buttons = [
    "c",
    "del",
    "%",
    "/",
    "9",
    "8",
    "7",
    "*",
    "6",
    "5",
    "4",
    "-",
    "3",
    "2",
    "1",
    "+",
    "0",
    ".",
    "(ans)",
    "=",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue[50],
                child: Center(
                  child: GridView.builder(
                      itemCount: Buttons.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0 || index == 1) {
                          return MyButton(
                              Colors.amber, Buttons[index], Colors.white);
                        } else {
                          return MyButton(
                              isOperator(Buttons[index])
                                  ? Colors.blue[900]
                                  : Colors.white,
                              Buttons[index],
                              isOperator(Buttons[index])
                                  ? Colors.white
                                  : Colors.blue[900]);
                        }
                      }),
                ),
              )),
        ],
      ),
    );
  }
}

bool isOperator(String x) {
  if (x == '+' || x == '-' || x == '*' || x == '/' || x == '=' || x == '%') {
    return true;
  }

  return false;
}
