import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContactsState();
  }
}

class ContactsState extends State<ContactsPage> {
  final dio = new Dio(); // for http requests
  List names = new List(); // names we get from API
  List filteredNames = new List(); // names filtered by search text
  ContactsState() {
    _getNames();
  }

  @override
  Widget build(BuildContext context) {
    return _buildList();
  }

  void _getNames() async {
    final response = await dio.get('https://swapi.co/api/people');
    List tempList = new List();
    for (int i = 0; i < response.data['results'].length; i++) {
      tempList.add(response.data['results'][i]);
    }

    setState(() {
      names = tempList;
      filteredNames = names;
    });
  }

  Widget _buildList() {
    return ListView.builder(
      itemCount: filteredNames.length,
      itemBuilder: (BuildContext context, int index) {
        return new ListTile(
          title: Row(children: <Widget>[
            Container(
              height: 64,
              width: 64,
              color: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(filteredNames[index]['name']),
            ),
          ]),
          onTap: () => print(filteredNames[index]['name']),
        );
      },
    );
  }
}
