import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_workshop_demo_website/constants/dimension_constants.dart';
import 'package:flutter_workshop_demo_website/screens/flights/widgets/flight_search_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFlightContent extends StatelessWidget {
  const MainFlightContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Container(
        height: 800.0,
        constraints: const BoxConstraints(maxWidth: 1248.0),
        child: Column(
          children: [
            SvgPicture.asset('assets/flights_3.svg', width: 1248),
            const Text(
              'Flights',
              style: TextStyle(
                  fontFamily: 'GoogleFont',
                  fontWeight: FontWeight.w500,
                  fontSize: 56.0),
            ),
            const SizedBox(height: kDefaultMargin),
            const FlightSearchTile()
          ],
        ),
      ),
    );
  }
}
