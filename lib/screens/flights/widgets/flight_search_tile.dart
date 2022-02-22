import 'package:flutter/material.dart';
import 'package:flutter_workshop_demo_website/constants/dimension_constants.dart';

class FlightSearchTile extends StatelessWidget {
  const FlightSearchTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      constraints: BoxConstraints(maxWidth: 992.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(60, 64, 67, .3),
            offset: Offset(0, 1),
            blurRadius: 3.0,
          ),
          BoxShadow(
              color: Color.fromRGBO(60, 64, 67, .15),
              offset: Offset(0, 4),
              blurRadius: 8.0,
              spreadRadius: 3.0),
        ],
      ),
      child: Column(
        children: [
          _buildSubRow(),
          const SizedBox(height: kDefaultMargin / 4),
          _buildMainRow(),
        ],
      ),
    );
  }

  Widget _buildSubRow() {
    return Row(
      children: [
        SizedBox(
          width: 141.0,
          child: DropdownButton<String>(
            value: 'Round trip',
            underline: const SizedBox.shrink(),
            // decoration: InputDecoration(
            //     // prefixIcon: Icon(Icons.person),
            //
            //     ),
            items: [
              _buildDropdownMenuItem(Icons.person, 'Round trip'),
              _buildDropdownMenuItem(Icons.person, 'One way'),
              _buildDropdownMenuItem(Icons.person, 'Multi-city'),
            ],
            onChanged: (String? value) => null,
          ),
        ),
      ],
    );
  }

  DropdownMenuItem<String> _buildDropdownMenuItem(IconData icon, String text) {
    return DropdownMenuItem(
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10.0),
          Text(text),
        ],
      ),
      value: text,
    );
  }

  Widget _buildMainRow() {
    return Row();
  }
}
