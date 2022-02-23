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
    return MouseRegion(
      onEnter: (event) => setState(() => isHover = true),
      onExit: (event) => setState(() => isHover = false),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0.0, end: isHover ? 1.0 : 0.0),
        duration: Duration(milliseconds: 150),
        curve: Curves.decelerate,
        builder: (context, double progress, child) => Container(
          margin: const EdgeInsets.only(
              left: 2.0, right: 2.0, top: 2.0, bottom: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              // BoxShadow(
              //   color: Color.fromRGBO(60, 64, 67, .3 * progress),
              //   offset: Offset(0, 1),
              //   blurRadius: 3.0,
              // ),
              // BoxShadow(
              //     color: Color.fromRGBO(60, 64, 67, .15 * progress),
              //     offset: Offset(0, 4),
              //     blurRadius: 8.0,
              //     spreadRadius: 3.0),
              BoxShadow(
                color: Color.fromRGBO(60, 64, 67, .3 * progress),
                offset: Offset(0, 1),
                blurRadius: 2.0,
              ),
              BoxShadow(
                  color: Color.fromRGBO(60, 64, 67, .15 * progress),
                  offset: Offset(0, 1),
                  blurRadius: 3.0,
                  spreadRadius: 0.0),
            ],
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
