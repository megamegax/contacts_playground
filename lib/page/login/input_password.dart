import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputPassword extends StatelessWidget {
  const InputPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(labelText: 'Password'),
      ),
    );
  }
}
