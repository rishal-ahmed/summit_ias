import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:summit_ias/core/constant/colors.dart';
import 'package:summit_ias/core/constant/images.dart';
import 'package:summit_ias/core/constant/sizes.dart';
import 'package:summit_ias/domain/utils/validators/validators.dart';
import 'package:summit_ias/presentation/widgets/buttons/custom_material_button.dart';
import 'package:summit_ias/presentation/widgets/text_fields/text_field_widget.dart';

class ScreenVerification extends StatelessWidget {
  const ScreenVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 90.h,
              width: 55.w,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: primaryColor,
                image: DecorationImage(
                  image: Svg(kBgLines),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    kImageOTP,
                    width: 55.w,
                    height: 55.w,
                  ),
                  dHeight1,
                  Text(
                    'You’ll recieve a 4 digit code\n to verify next.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 10.h,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: FractionallySizedBox(
                widthFactor: .8,
                heightFactor: .7,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: TextFeildWidget(
                        labelText: 'Phone Number',
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        inputBorder: const UnderlineInputBorder(),
                        textInputType: TextInputType.phone,
                        inputFormatters: Validators.digitsOnly,
                      ),
                    ),
                    dWidth5,
                    Expanded(
                      flex: 3,
                      child: CustomMaterialBtton(
                        onPressed: () {},
                        buttonText: 'Continue',
                        height: double.infinity,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
