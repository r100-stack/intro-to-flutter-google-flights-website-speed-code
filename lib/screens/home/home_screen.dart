import 'package:flutter/material.dart';
import 'package:flutter_workshop_demo_website/screens/flights/flights_screen.dart';
import 'package:flutter_workshop_demo_website/screens/home/widgets/custom_app_bar.dart';
import 'package:flutter_workshop_demo_website/screens/home/widgets/left_selector.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverToBoxAdapter(
            child: Row(
              children: const [
                LeftSelector(),
                Expanded(child: FlightsScreen()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
