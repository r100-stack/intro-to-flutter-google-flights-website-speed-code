import 'package:flutter/material.dart';

class LeftSelector extends StatelessWidget {
  const LeftSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      child: Column(
        children: [],
      ),
    );
  }

  Widget _buildButton() {
    return Material(
      child: InkWell(
        child: Container(
          child: Column(
            children: [
              Icon(Icons.airplanemode_active),
            ],
          ),
        ),
      ),
    );
  }
}
