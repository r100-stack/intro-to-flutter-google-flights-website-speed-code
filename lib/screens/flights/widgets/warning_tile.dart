import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WarningTile extends StatelessWidget {
  const WarningTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 42.0),
      constraints: BoxConstraints(maxWidth: 992.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFdadce0)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Color(0xFFfef7e0),
              borderRadius: BorderRadius.circular(4.0),
            ),
            child: Icon(
              Icons.info_outline,
              color: Color(0xFFf29900),
            ),
          ),
          const SizedBox(width: 24.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Active travel advisory',
                  style: TextStyle(fontSize: 20.0, color: Color(0xFF202124)),
                ),
                const SizedBox(height: 4.0),
                RichText(
                  text: TextSpan(
                    text:
                        "There's a government travel advisory related to coronavirus (COVID-19).",
                    style: TextStyle(fontSize: 14.0, color: Color(0xFF202124), fontFamily: 'GoogleFont'),
                    children: [
                      TextSpan(
                        text: ' More Details',
                        style: TextStyle(
                          color: Color(0xFF1a73e8),
                          fontWeight: FontWeight.w500,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () => null
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
