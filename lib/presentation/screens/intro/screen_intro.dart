import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:summit_ias/core/constant/colors.dart';
import 'package:summit_ias/core/constant/images.dart';
import 'package:summit_ias/core/constant/sizes.dart';
import 'package:summit_ias/presentation/widgets/buttons/custom_material_button.dart';

class ScreenIntro extends StatelessWidget {
  const ScreenIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 15,
            child: Container(
              height: double.infinity,
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
          ),
          Expanded(
            flex: 2,
            child: FractionallySizedBox(
              heightFactor: .55,
              widthFactor: .85,
              child: CustomMaterialBtton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.keyboard_double_arrow_left,
                      color: kWhite,
                      size: 22.sp,
                    ),
                    dWidth1,
                    Text(
                      'Slide to Learn',
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
