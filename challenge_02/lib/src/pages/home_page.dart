import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '1');
                },
                child: Text("Ir a página 1", style: TextStyle(fontSize: 20.0))),
            SizedBox(
              height: 250.0,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '2');
                },
                child: Text("Ir a página 2", style: TextStyle(fontSize: 20.0))),
          ],
        ),
      ),
      backgroundColor: Colors.orange,
    );
  }
}
