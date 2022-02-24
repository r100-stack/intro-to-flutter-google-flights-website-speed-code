import 'package:flutter/material.dart';
import 'package:flutter_workshop_demo_website/screens/flights/widgets/custom_hover_behavior.dart';
import 'package:flutter_workshop_demo_website/screens/flights/widgets/trip_card.dart';

class TripsTile extends StatelessWidget {
  const TripsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 42.0),
      constraints: BoxConstraints(maxWidth: 992.0),
      child: Column(
        children: [
          _buildTopRow(),
          _buildMainRow(),
        ],
      ),
    );
  }

  Widget _buildTopRow() {
    return Row(
      children: [
      ],
    );
  }

  Widget _buildMainRow() {
    return Row(
      children: [
        Expanded(child: _buildLeft()),
        const SizedBox(width: 8.0),
        Expanded(child: _buildRight()),
      ],
    );
  }

  Widget _buildLeft() {
    return Column(
      children: [
        TripCard(),
        TripCard(),
        TripCard(),
      ],
    );
  }

  Widget _buildRight() {
    return CustomHoverBehavior(
      child: const SizedBox.shrink(),
    );
  }
}
