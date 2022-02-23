import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workshop_demo_website/screens/flights/widgets/custom_hover_behavior.dart';

class TripCard extends StatefulWidget {
  const TripCard({Key? key}) : super(key: key);

  @override
  State<TripCard> createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return CustomHoverBehavior(
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        child: InkWell(
          onTap: () => null,
          hoverColor: Colors.transparent,
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            height: 132.0,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                color: Color(0xFFdadce0),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/miami.jpeg',
                  height: 132.0,
                  width: 134.0,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 11.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Miami',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16.0),
                        ),
                        Text(
                          'May 19-25',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xFF70757a),
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/delta.png',
                              width: 16.0,
                              height: 16.0,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 8.0),
                            Text(
                              '1 stop · 4 hr 42 min',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color(0xFF70757a),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '\$185',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.0),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
