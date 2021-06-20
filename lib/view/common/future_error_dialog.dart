import 'package:flutter/material.dart';

Widget buildErrorDialog(BuildContext context, Object? error) {
  String errorMessage = error.toString();
  Future(() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Error'),
              content: Text(errorMessage),
              actions: <Widget>[
                MaterialButton(
                    onPressed: () => Navigator.of(context).pop('OK'),
                    child: Text('OK')),
              ],
            ));
  });
  return Container();
}
