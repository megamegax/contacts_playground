import 'package:contacts_playground/page/contacts/contacts_page.dart';
import 'package:contacts_playground/page/placeholder_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  int _currentIndex = 0;
  bool _searchMode = false;
  final List<Widget> _children = [ContactsPage(), PlaceholderWidget(Colors.deepOrange), PlaceholderWidget(Colors.green)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Switch(
          value: _searchMode,
          onChanged: (value) {
            setState(() {
              _searchMode = value;
            });
          },
          activeColor: Colors.green,
        ), // Here we take the value from the MyHomePage object
        // that
        // was created by
        // the App.build method, and use it to set our appbar title.
        title: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          elevation: 10,
          child: TextField(
              decoration: new InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  filled: true,
                  border: new OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(10.0),
                    ),
                  ),
                  fillColor: Colors.white,
                  hintText: 'Looking for ${_searchMode ? "teams" : "people"}')),
        ),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(onTap: onTabTapped, currentIndex: _currentIndex, items: [
        BottomNavigationBarItem(icon: Icon(Icons.contacts), title: Text("Contacts")),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text("Favorites")),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Profile"))
      ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
