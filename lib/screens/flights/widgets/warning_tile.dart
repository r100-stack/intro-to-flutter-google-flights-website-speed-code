import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WarningTile extends StatelessWidget {
  const WarningTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 42.0),
      constraints: BoxConstraints(maxWidth: 992.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFdadce0)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [

        ],
      ),
    );
  }
}
