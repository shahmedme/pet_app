import 'package:flutter/material.dart';
import 'package:petapp/themes/constant.dart';

class DogCard extends StatelessWidget {
  const DogCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 83,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: Container(
                  height: 65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(color: primary, blurRadius: 0.5),
                      ]),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 70.0),
                          child: Text(
                              "Loca is lost in your neighborhood! Help us find her!",
                              style: contentWhite)))),
            ),
            Container(child: Image.asset("assets/images/lolo_dog.png"))
          ],
        ));
  }
}
