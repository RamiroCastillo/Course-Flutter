import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  var computerData = <Computer>[
    Computer(computerMake: "HP", model: "Pavilion", price: 7000.0),
    Computer(computerMake: "Lenovo", model: "E15", price: 5000.0),
    Computer(computerMake: "Dell", model: "XPS", price: 3500.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
            sortColumnIndex: 2,
            sortAscending: false,
            columns: <DataColumn>[
              DataColumn(
                label: const Text('Computer Make'),
                numeric: false,
                onSort: (i, b) {
                  setState(
                    () {
                      computerData.sort(
                          (a, b) => a.computerMake.compareTo(b.computerMake));
                    },
                  );
                },
              ),
              DataColumn(
                label: const Text("Model"),
                numeric: false,
                onSort: (i, b) {
                  setState(
                    () {
                      computerData.sort((a, b) => a.model.compareTo(b.model));
                    },
                  );
                },
              ),
              DataColumn(
                label: const Text('Price'),
                numeric: true,
                onSort: (i, b) {
                  setState(
                    () {
                      computerData.sort((a, b) => a.price.compareTo(b.price));
                    },
                  );
                },
              ),
            ],
            rows: computerData
                .map(
                  (x) => DataRow(
                    cells: [
                      DataCell(Text(x.computerMake)),
                      DataCell(Text(x.model)),
                      DataCell(Text((x.price).toString())),
                    ],
                  ),
                )
                .toList()),
      ),
    );
  }
}

class Computer {
  String computerMake;
  String model;
  double price;

  Computer(
      {required this.computerMake, required this.model, required this.price});
}
