import 'package:flutter/material.dart';

class RankingPage extends StatelessWidget {
  const RankingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg-ornament.jpg"),
              repeat: ImageRepeat.repeat,
            ),
          ),
          child: Icon(
            Icons.table_chart,
            size: 150.0,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
