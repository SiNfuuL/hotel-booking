import 'package:booking_hotel/core/styles/colors.dart';
import 'package:booking_hotel/presentation/view/toggle_booking_bar.dart';
import 'package:booking_hotel/presentation/widget/headline_text.dart';
import 'package:booking_hotel/presentation/widget/progress_dialog.dart';
import 'package:booking_hotel/presentation/widget/switch_botton.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),

      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: ToggleTabBar(),
        ),
      ),

    );
  }
}