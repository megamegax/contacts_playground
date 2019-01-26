import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.contact_phone,
        size: 200,
      ),
    );
  }
}
