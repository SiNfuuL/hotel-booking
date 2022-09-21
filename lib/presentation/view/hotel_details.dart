import 'package:booking_hotel/core/styles/colors.dart';
import 'package:booking_hotel/presentation/view/my_app_bar.dart';
import 'package:booking_hotel/presentation/widget/review_widget.dart';
import 'package:booking_hotel/presentation/widget/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelDetails extends StatefulWidget {
  const HotelDetails({super.key});

  @override
  State<HotelDetails> createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: MyAppBar(
          isCompletedAppBar: true,
          title: 'Reviews',
          leadingIcon: const Icon(Icons.close),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ReviewWidget();
          },
          itemCount: 6,
        ),
      ),
    );
  }
}
