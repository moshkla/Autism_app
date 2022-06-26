import 'package:flutter/material.dart';

navigateTo({context, page}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
          (route) => true);
}
// void initState() {
//   Timer.periodic(const Duration(seconds: 40), (timer) {
//     print("object");
//   });
//   super.initState();
// }

//  class NumberModel{
//   final String name,image;
//   NumberModel({
//     required this.image,
//     required this.name,
//
//   });
// }
//   List<NumberModel> numbers=[
//
//     NumberModel(image: "", name: "",),
//   ];

/*upadteNewSelectedValue(NumerModel newvalue){
  newmumbers.add(newvalue);
  notifyListeners();
}*/

// numbers[index].name
// List<NumberModel> newnumbers =[];
// newmumbers.add(mumbers[index])
// newmumbers.remove(newmumbers[index].name);n
