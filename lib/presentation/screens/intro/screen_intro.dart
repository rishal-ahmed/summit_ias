import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:slider_button/slider_button.dart';
import 'package:summit_ias/core/constant/colors.dart';
import 'package:summit_ias/core/constant/images.dart';
import 'package:summit_ias/core/routes/routes.dart';

class ScreenIntro extends StatelessWidget {
  const ScreenIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 90.h,
            width: double.infinity,
            alignment: Alignment.topLeft,
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              ),
              image: DecorationImage(
                image: AssetImage(kImageIntro),
                fit: BoxFit.cover,
                alignment: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 5.w),
              child: FittedBox(
                child: Text.rich(
                  TextSpan(
                    text: 'Start Learning with \n',
                    style: TextStyle(
                      fontSize: 21.sp,
                      fontWeight: FontWeight.w300,
                      color: kWhite,
                    ),
                    children: [
                      TextSpan(
                        text: 'SUMMIT IAS',
                        style: TextStyle(
                          fontSize: 23.sp,
                          fontWeight: FontWeight.w500,
                          color: kWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 10.h,
            child: FractionallySizedBox(
              heightFactor: .65,
              widthFactor: .85,
              child: SliderButton(
                action: () => Navigator.pushNamed(context, routePhoneNumber),
                label: Text(
                  'Slide to Learn',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                icon: Icon(
                  Icons.keyboard_double_arrow_right,
                  color: kWhite,
                  size: 22.sp,
                ),

                //Adjust effects such as shimmer and flag vibration here
                shimmer: true,
                alignLabel: const Alignment(0, 0),

                ///Change All the color and size from here.
                width: double.infinity,
                // radius: 20,
                buttonColor: primaryColor,
                backgroundColor: primaryColor,
                highlightedColor: primaryColor,
                baseColor: kWhite,
              ),
              // child: CustomMaterialBtton(
              //   onPressed: () =>
              //       Navigator.pushNamed(context, routeVerification),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Icon(
              //         Icons.keyboard_double_arrow_left,
              //         color: kWhite,
              //         size: 22.sp,
              //       ),
              //       dWidth1,
              //       Text(
              //         'Slide to Learn',
              //         style: TextStyle(
              //           color: kWhite,
              //           fontSize: 18.sp,
              //           fontWeight: FontWeight.w500,
              //         ),
              //       )
              //     ],
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
