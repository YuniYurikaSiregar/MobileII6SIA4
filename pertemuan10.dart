import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Yuni Yurika - 6 SIA 4'),
      ),
      body: ListView(children: <Widget>[
        Center(
            child: Text('Data Mahasiswa',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        DataTable(
          columns: [
            DataColumn(label: Text('NIRM')),
            DataColumn(label: Text('Nama Mahasiswa')),
            DataColumn(label: Text('Jurusan')),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('2018020582')),
              DataCell(Text('Yuni Yurika')),
              DataCell(Text('Sistem Informasi')),
            ]),
            DataRow(cells: [
              DataCell(Text('2018020562')),
              DataCell(Text('Verawaty')),
              DataCell(Text('Sistem Informasi')),
            ]),
            DataRow(cells: [
              DataCell(Text('2019020656')),
              DataCell(Text('Cici Anas')),
              DataCell(Text('Sistem Informasi')),
            ]),
          ],
        ),
      ]),
    );
  }
}