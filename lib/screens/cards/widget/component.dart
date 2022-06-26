import 'package:Autism/screens/cards/dictionary_card/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final nameOfCard;
  const AppBarItem({Key? key, required this.nameOfCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 5,
            spreadRadius: 1,
            color: Colors.grey,
          ),
        ],
      ),
      child: Transform.translate(offset: const Offset(0, 12),
     child: Row(
        children: [
          const Spacer(),
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_outlined,
                size: 35,
              )),
          const Spacer(
            flex: 3,
          ),
          Text(
            nameOfCard,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 40),
          ),
          const Spacer(
            flex: 3,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DictionaryCard();
                  },
                ),
              );
            },
            child: Container(
              height: 60,
              width: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 2,
                  ),
                  Image.asset(
                    'assets/images/dictionary.png',
                    height: 35,
                    width: 35,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Dictionary',
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      )),
    );
  }
}
