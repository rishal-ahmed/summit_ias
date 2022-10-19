import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:summit_ias/core/constant/colors.dart';
import 'package:summit_ias/core/constant/images.dart';
import 'package:summit_ias/core/routes/routes.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    afterSplash(context);
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: Svg(kBgLines), fit: BoxFit.cover),
          ),
          child: Image.asset(
            titleLogo,
            width: 60.w,
            height: 60.w,
          ),
        ),
      ),
    );
  }

  Future<void> afterSplash(context) async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushNamedAndRemoveUntil(
        context, routeIntro, ModalRoute.withName(routeRoot));
  }
}
