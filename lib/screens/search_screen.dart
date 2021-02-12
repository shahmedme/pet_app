import 'package:flutter/cupertino.dart';
import 'package:petapp/themes/constant.dart';
import 'package:petapp/widgets/search_card.dart';

class SearchScreen extends StatelessWidget {
  final List<Map> items = [
    {"title": "Vet \nClinics", "img": "assets/images/card_1.png"},
    {"title": "Places \nto Eat", "img": "assets/images/card_2.png"},
    {"title": "Places \nto Walk", "img": "assets/images/card_3.png"},
    {"title": "Spas \n&Salons", "img": "assets/images/card_4.png"},
    {"title": "Shops \n& Products", "img": "assets/images/card_5.png"},
    {"title": "Walk \nGroups", "img": "assets/images/card_6.png"},
    {"title": "Animals", "img": "assets/images/card_7.png"},
    {"title": "Walk \nGroups", "img": "assets/images/card_8.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text("Find anything you need for your pets",
                  style: appSubTitle, textAlign: TextAlign.center),
              SizedBox(height: 30),
              SearchCard(itemOne: items[0], itemTwo: items[1]),
              SearchCard(itemOne: items[2], itemTwo: items[3]),
              SearchCard(itemOne: items[4], itemTwo: items[5]),
              SearchCard(itemOne: items[6], itemTwo: items[7]),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
