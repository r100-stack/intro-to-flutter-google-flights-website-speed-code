import 'package:flutter/material.dart';
import 'package:flutter_workshop_demo_website/screens/home/widgets/left_selector.dart';
import 'package:flutter_workshop_demo_website/screens/flights/widgets/main_content.dart';

class FlightsScreen extends StatelessWidget {
  const FlightsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          LeftSelector(),
          MainFlightContent(),
        ],
      ),
    );
  }
}
