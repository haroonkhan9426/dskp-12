import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/colors.dart';
import 'package:movie_app/core/constants/styles.dart';
import 'package:movie_app/ui/custom_widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///
              /// Logo icon
              ///
              Center(
                child: Image(
                  image: AssetImage('assets/images/movies_icon.png'),
                  height: 150,
                  width: 150,
                ),
              ),

              SizedBox(height: 20),

              ///
              /// App Name text
              ///
              Center(
                child: Text(
                  'Movie App',
                  style: subHeadTextStyle,
                ),
              ),

              ///
              /// Email TextField sections
              ///
              CustomTextField(
                titleText: 'Email',
                hintText: 'Email here',
              ),

              SizedBox(height: 15),

              CustomTextField(
                titleText: 'Password',
                hintText: 'Password here',
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 17),
                  child: Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
