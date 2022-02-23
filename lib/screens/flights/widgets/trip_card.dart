import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TripCard extends StatefulWidget {
  const TripCard({Key? key}) : super(key: key);

  @override
  State<TripCard> createState() => _TripCardState();
}

class _TripCardState extends State<TripCard> {
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
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 11.0),
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
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0),
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
        ),
      ),
    );
  }
}
