import 'package:flutter/material.dart';
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
        const SizedBox(width: 16.0),
        Text(
          'Trips from Baton Rouge',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
        ),
        const SizedBox(width: 16.0),
        Text(
          'Round Trip · 1 passenger',
          style: TextStyle(fontSize: 14.0, color: Color(0xFF70757a)),
        ),
        IconButton(
          icon: Icon(Icons.info_outline),
          onPressed: () => null,
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        Spacer(),
        TextButton(
          onPressed: () => null,
          style: TextButton.styleFrom(primary: Color(0xFF1a73e8)),
          child: Text(
            'Explore destinations',
            style: TextStyle(
              color: Color(0xFF174ea6),
              fontWeight: FontWeight.w500,
            ),
          ),
        )
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
    return _RightMap();
  }
}

class _RightMap extends StatefulWidget {
  const _RightMap({Key? key}) : super(key: key);

  @override
  State<_RightMap> createState() => _RightMapState();
}

class _RightMapState extends State<_RightMap> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHover = true),
      onExit: (event) => setState(() => isHover = false),
      child: TweenAnimationBuilder(
        duration: Duration(milliseconds: 150),
        tween: Tween<double>(begin: 0.0, end: isHover ? 1.0 : 0.0),
        builder: (context, double progress, child) => Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
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
          child: Image.asset('assets/map.png'),
        ),
      ),
    );
  }
}
