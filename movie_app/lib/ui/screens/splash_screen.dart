import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/colors.dart';
import 'package:movie_app/core/constants/styles.dart';
import 'package:movie_app/ui/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _nextScreen();
    super.initState();
  }

  _nextScreen() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///
            /// Logo icon
            ///
            Image(
              image: AssetImage('assets/images/movies_icon.png'),
              height: 150,
              width: 150,
            ),

            SizedBox(height: 20),

            ///
            /// App Name text
            ///
            Text(
              'Movie App',
              style: subHeadTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
