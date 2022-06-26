import 'package:flutter/material.dart';
class Question with ChangeNotifier {
  int totalScore = 0;
  Object? question1,
      question2,
      question3,
      question4,
      question5,
      question6,
      question7,
      question8,
      question9,
      question10,
      question11,
      question12,
      question13,
      question14,
      question15,
      question16,
      question17,
      question18,
      question19,
      question20,
      question21,
      question22,
      question23,
      question24,
      question25,
      question26,
      question27;

  updateQuestionsValue({
    required int index,
    required Object newValue,
  }) {
    if (index == 1) {
      question1 = newValue;
    } else if (index == 2) {
      question2 = newValue;
    } else if (index == 3) {
      question3 = newValue;
    } else if (index == 4) {
      question4 = newValue;
    } else if (index == 5) {
      question5 = newValue;
    } else if (index == 6) {
      question6 = newValue;
    } else if (index == 7) {
      question7 = newValue;
    } else if (index == 8) {
      question8 = newValue;
    } else if (index == 9) {
      question9 = newValue;
    } else if (index == 10) {
      question10 = newValue;
    } else if (index == 11) {
      question11 = newValue;
    } else if (index == 12) {
      question12 = newValue;
    } else if (index == 13) {
      question13 = newValue;
    } else if (index == 14) {
      question14 = newValue;
    } else if (index == 15) {
      question15 = newValue;
    } else if (index == 16) {
      question16 = newValue;
    } else if (index == 17) {
      question17 = newValue;
    } else if (index == 18) {
      question18 = newValue;
    } else if (index == 19) {
      question19 = newValue;
    } else if (index == 20) {
      question20 = newValue;
    } else if (index == 21) {
      question21 = newValue;
    } else if (index == 22) {
      question22 = newValue;
    } else if (index == 23) {
      question23 = newValue;
    } else if (index == 24) {
      question24 = newValue;
    } else if (index == 25) {
      question25 = newValue;
    } else if (index == 26) {
      question26 = newValue;
    } else if (index == 27) {
      question27 = newValue;
    }
    notifyListeners();
  }

  bool validateSelectedValue1() {
    if (question1 == null ||
        question2 == null ||
        question3 == null ||
        question4 == null ||
        question5 == null ||
        question6 == null ||
        question7 == null) {
      return false;
    } else {
      return true;
    }
  }

  bool validateSelectedValue2() {
    if (question8 == null ||
        question9 == null ||
        question10 == null ||
        question11 == null ||
        question12 == null ||
        question13 == null ||
        question14 == null) {
      return false;
    } else {
      return true;
    }
  }

  bool validateSelectedValue3() {
    if (question15 == null ||
        question16 == null ||
        question17 == null ||
        question18 == null ||
        question19 == null ||
        question20 == null ||
        question21 == null) {
      return false;
    } else {
      return true;
    }
  }

  bool validateSelectedValue4() {
    if (question22 == null ||
        question23 == null ||
        question24 == null ||
        question25 == null ||
        question26 == null ||
        question27 == null) {
      return false;
    } else {
      return true;
    }
  }

  correctValue() {
    totalScore += 2;
    notifyListeners();
  }

  someWhatValue() {
    totalScore += 1;
    notifyListeners();
  }

  noeValue() {
    totalScore ;
    notifyListeners();
  }
}


