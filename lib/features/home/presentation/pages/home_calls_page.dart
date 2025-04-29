import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/bottom_nav_bar_widget.dart';

class HomeCallsPage extends StatelessWidget {
  const HomeCallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //    bottomNavigationBar:const BottomNavBarWidget(),
      body: Center(
        child: Text("Calls"),
      ),
    );
  }
}
