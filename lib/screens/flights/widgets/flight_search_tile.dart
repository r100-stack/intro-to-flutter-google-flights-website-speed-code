import 'package:flutter/material.dart';
import 'package:flutter_workshop_demo_website/constants/dimension_constants.dart';
import 'package:black_hole_flutter/black_hole_flutter.dart';

class FlightSearchTile extends StatelessWidget {
  const FlightSearchTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
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

  Widget _buildClassSelector() {
    return const SizedBox.shrink();
  }

  Widget _buildRoundTrip() {
    return const SizedBox.shrink();
  }

  Widget _buildDropdownMenuItem(IconData icon, String text) {
    return const SizedBox.shrink();
  }
}

class _MainRow extends StatelessWidget {
  const _MainRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.0,
      child: const SizedBox.shrink(),
    );
  }

  Widget _buildTextField() {
    return const SizedBox.shrink();
  }

  Widget _buildDateSelector() {
    return const SizedBox.shrink();
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
