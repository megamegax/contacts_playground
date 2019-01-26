import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputUsername extends StatelessWidget {
  const InputUsername({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(labelText: 'Username'),
      ),
    );
  }
}
