import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workshop_demo_website/screens/flights/widgets/custom_hover_behavior.dart';

class TripCard extends StatefulWidget {
  const TripCard({Key? key}) : super(key: key);

  @override
  State<TripCard> createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return CustomHoverBehavior(
      child: const SizedBox.shrink(),
    );
  }
}
