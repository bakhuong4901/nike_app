import 'package:flutter/material.dart';

class DataTableDemo extends StatefulWidget {
  const DataTableDemo({Key? key}) : super(key: key);

  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
      ),
      body: Container(
        child: DataTable(
          sortColumnIndex: 0,
          sortAscending: true,
          columns: [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Year'))
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('Dash'), showEditIcon: true),
              DataCell(Text('2018')),
            ]),
            DataRow(cells: [
              DataCell(Text('Gopher'),placeholder: true),
              DataCell(Text('2009')),
            ]),
          ],
        ),
      ),
    );
  }
}
