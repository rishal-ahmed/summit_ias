import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:summit_ias/core/constant/colors.dart';
import 'package:summit_ias/core/routes/route_generator.dart';
import 'package:summit_ias/core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Summit IAS',
          theme: ThemeData(
            primarySwatch: Colors.lightBlue,
            fontFamily: GoogleFonts.robotoFlex(
              color: kWhite,
            ).fontFamily,
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: routeRoot,
        );
      },
    );
  }
}
