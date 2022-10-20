import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:summit_ias/core/constant/colors.dart';
import 'package:summit_ias/core/constant/sizes.dart';
import 'package:summit_ias/presentation/widgets/app_bars/app_bar_widget.dart';

class ScreenVerification extends StatelessWidget {
  const ScreenVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: const AppBarWidget(
        title: Text('Verify Phone'),
        backgroundColor: kWhite,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your\nOTP Number',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 17.sp,
                color: kBlack87,
              ),
            ),
            dHeight1,
            Text(
              'A Verification code has been sent to \n9876543210',
              style: TextStyle(
                fontSize: 15.sp,
                color: const Color(0xff585858),
                // color: kColorDim2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
