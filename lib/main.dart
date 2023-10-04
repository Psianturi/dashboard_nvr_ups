
import 'package:dashboard_nvr_ups/screens/Login/login_screen.dart';
import 'package:dashboard_nvr_ups/screens/coba.dart';
import 'package:dashboard_nvr_ups/screens/dashboard/dashboard_screen.dart';
import 'package:dashboard_nvr_ups/screens/main/components/side_menu.dart';
import 'package:dashboard_nvr_ups/screens/main/main_screen.dart';
import 'package:dashboard_nvr_ups/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'controllers/MenuAppController.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,

        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //     elevation: 0, backgroundColor: primaryColor,
        //     shape: const StadiumBorder(),
        //     maximumSize: const Size(double.infinity, 56),
        //     minimumSize: const Size(double.infinity, 56),
        //   ),
        // ),

          // inputDecorationTheme: const InputDecorationTheme(
          //   filled: true,
          //   fillColor: kPrimaryLightColor,
          //   iconColor: primaryColor,
          //   prefixIconColor: primaryColor,
          //   contentPadding: EdgeInsets.symmetric(
          //       horizontal: defaultPadding, vertical: defaultPadding),
          //   border: OutlineInputBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(30)),
          //     borderSide: BorderSide.none,
          //   ),
          // )),

      ),
        // home:  WelcomeScreen(),
      // home: MultiProvider(
      //   providers: [
      //     ChangeNotifierProvider(
      //       create: (context) => MenuAppController(),
      //     ),
      //   ],
      //   child: MainScreen(),
      // ),
        routes: {
          '/': (context) => const WelcomeScreen(),
          '/transaction': (context) => Coba(),
          '/logout': (context) => const LoginScreen(),
        }
        );
  }
}
