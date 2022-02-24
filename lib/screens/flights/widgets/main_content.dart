import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_workshop_demo_website/constants/dimension_constants.dart';
import 'package:flutter_workshop_demo_website/screens/flights/widgets/flight_search_tile.dart';
import 'package:flutter_workshop_demo_website/screens/flights/widgets/trips_tile.dart';
import 'package:flutter_workshop_demo_website/screens/flights/widgets/warning_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class MainFlightContent extends StatelessWidget {
  const MainFlightContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1248.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: kDefaultMargin),
              const FlightSearchTile(),
              const WarningTile(),
              const TripsTile(),
            ],
          ),
        ),
      ),
    );
  }
}
