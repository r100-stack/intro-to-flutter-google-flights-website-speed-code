import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        color: Colors.grey,
        onPressed: () => null,
      ),
      title: SvgPicture.asset(
        'assets/google_logo.svg',
        width: 74,
        height: 24,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.apps),
          onPressed: () => null,
          color: Colors.grey,
        ),
        const SizedBox(width: 8.0),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Center(
            child: ElevatedButton(
              onPressed: () => null,
              child: const Text('Sign in'),
            ),
          ),
        ),
      ],
    );
  }
}
