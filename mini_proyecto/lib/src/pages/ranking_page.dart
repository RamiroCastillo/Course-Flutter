import 'package:flutter/material.dart';

class RankingPage extends StatelessWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.home,
              size: 150.0,
              color: Colors.amber,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Ranking",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}
