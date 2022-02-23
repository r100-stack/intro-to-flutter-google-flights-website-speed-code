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
          const _SubRow(),
          const SizedBox(height: kDefaultMargin / 4),
          const _MainRow(),
        ],
      ),
    );
  }
}

class _SubRow extends StatelessWidget {
  const _SubRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildRoundTrip(),
        const SizedBox(width: 10.0),
        _buildClassSelector()
      ],
    );
  }

  DropdownButton<String> _buildClassSelector() {
    return DropdownButton<String>(
      value: 'Economy',
      underline: const SizedBox.shrink(),
      // decoration: InputDecoration(
      //     // prefixIcon: Icon(Icons.person),
      //
      //     ),
      items: [
        _buildDropdownMenuItem(Icons.person, 'Economy'),
        _buildDropdownMenuItem(Icons.person, 'Premium economy'),
        _buildDropdownMenuItem(Icons.person, 'Business'),
        _buildDropdownMenuItem(Icons.person, 'First'),
      ],
      onChanged: (String? value) => null,
    );
  }

  SizedBox _buildRoundTrip() {
    return SizedBox(
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
}

class _MainRow extends StatelessWidget {
  const _MainRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.0,
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(child: _buildTextField()),
                Expanded(child: _buildTextField()),
              ],
            ),
          ),
          const SizedBox(width: 16.0),
          Row(
            children: [_buildDateSelector()],
          )
        ],
      ),
    );
  }

  Widget _buildTextField() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.people),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Color(0xFFdadce0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: const BorderSide(color: Color(0xFF9aa0a6)),
        ),
      ),
    );
  }

  Widget _buildDateSelector() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFdadce0)),
          borderRadius: BorderRadius.circular(4.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(width: 16.0),
          Icon(Icons.people),
          const SizedBox(width: 8.0),
          Center(
            child: Text(
              'Thu, Mar 10',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(width: 2.0),
          _buildInkWellButton(Icons.chevron_left),
          _buildInkWellButton(Icons.chevron_right),
          Container(
            width: 1.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            color: Color(0xFFdadce0),
          ),
          const SizedBox(width: 16.0),
          Center(
            child: Text(
              'Thu, Mar 10',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(width: 2.0),
          _buildInkWellButton(Icons.chevron_left),
          _buildInkWellButton(Icons.chevron_right),
        ],
      ),
    );
  }

  Widget _buildInkWellButton(IconData icon) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => null,
        child: Icon(icon),
      ),
    );
  }
}
