import 'package:flutter/material.dart';
import 'package:petapp/themes/constant.dart';
import 'package:petapp/widgets/dog_card.dart';
import 'package:petapp/widgets/walk_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text("Hi, Feran", style: appTitle),
                SizedBox(height: 10),
                Text(
                  "Check out the new products, group, events, places and more",
                  style: contentBlack,
                ),
                SizedBox(height: 30),
                DogCard(),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Walk Groups".toUpperCase(),
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      WalkCard(
                        imgSrc: "assets/images/card_dog_1.png",
                        title: "Meet our lovely dogs walking with us",
                        location: "Valencia, Spain",
                        member: "8 members",
                        orgBy: "Laura",
                      ),
                      WalkCard(
                        imgSrc: "assets/images/card_dog_2.png",
                        title: "Meet our lovely dogs walking with us",
                        location: "Valencia, Spain",
                        member: "8 members",
                        orgBy: "Laura",
                      ),
                    ],
                  ),
                )
              ],
            )),
      ],
    ));
  }
}
