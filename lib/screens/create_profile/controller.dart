import 'dart:async';
import 'package:Autism/helper/methods.dart';
import 'package:Autism/screens/test/enter_page/view.dart';


class CreateProfileController
{
  void timer(context) {
    Timer(const Duration(seconds: 4), () {
      navigateTo(context: context, page: Enter_Page());

    });

  }
}
