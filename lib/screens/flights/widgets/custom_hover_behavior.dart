import 'package:flutter/material.dart';

class CustomHoverBehavior extends StatefulWidget {
  const CustomHoverBehavior({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<CustomHoverBehavior> createState() => _CustomHoverBehaviorState();
}

class _CustomHoverBehaviorState extends State<CustomHoverBehavior> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
