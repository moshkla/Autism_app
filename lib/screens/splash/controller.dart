import 'dart:async';
import 'package:Autism/helper/methods.dart';
import 'package:Autism/screens/create_profile/view.dart';


class SplashController
{
  void timer(context) {
    Timer(const Duration(seconds: 3), () {
      navigateTo(context: context, page: CreateProfileScreen());

    });

  }
}

