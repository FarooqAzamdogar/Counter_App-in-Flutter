import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CounterPage> {
  int _counter = 0;
  void _increamentCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You push the button many times"),
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
                onPressed: _increamentCounter, child: Text("Increament!"))
          ],
        ),
      ),
    );
  }
}
