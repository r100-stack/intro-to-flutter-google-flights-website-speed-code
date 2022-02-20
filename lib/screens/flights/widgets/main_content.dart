import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFlightContent extends StatelessWidget {
  const MainFlightContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800.0,
      constraints: const BoxConstraints(
        maxWidth: 1200.0,
      ),
      child: Column(
        children: [
          SvgPicture.asset('assets/flights_3.svg'),
          Text(
            'Flights',
            style: TextStyle(
              fontFamily: 'GoogleFont',
              fontWeight: FontWeight.w500,
              fontSize: 50.0
            ),
          )
        ],
      ),
    );
  }
}
