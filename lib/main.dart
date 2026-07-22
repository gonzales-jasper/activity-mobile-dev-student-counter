import 'package:flutter/material.dart';

const Color darkMaroon = Color(0xFF4B1426);
const Color darkGreen = Color(0xFF17433F);
const Color sageGreen = Color(0xFF558467);
const Color cream = Color(0xFFEFEABB);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: cream,
        appBarTheme: AppBarTheme(
          backgroundColor: darkMaroon,
          foregroundColor: Colors.white,
        ),
      ),
      home: CounterPage(),
    );
  }
}

class StudentInformation extends StatelessWidget {
  const StudentInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: sageGreen,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.school, color: Colors.white),
              SizedBox(width: 8),
              Text(
                'Student Information',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Name: Jasper N. Gonzales',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Text(
            'Course and Section: BSIT 3GG1',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Text(
            'Activity: Flutter Widgets Activity',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter = counter + 1;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter = counter - 1;
      }
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Counter App'),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.info_outline), onPressed: resetCounter),
        ],
      ),
      body: Column(
        children: [
          StudentInformation(),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current Count: ',
                style: TextStyle(fontSize: 20, color: darkMaroon),
              ),

              Text(
                '$counter',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: counter == 0 ? darkMaroon : darkGreen,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: decrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: sageGreen,
                  foregroundColor: Colors.white,
                ),
                child: Text('Decrease'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: resetCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkMaroon,
                  foregroundColor: Colors.white,
                ),
                child: Text('Reset'),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        backgroundColor: darkMaroon,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
