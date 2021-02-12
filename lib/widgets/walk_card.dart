import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petapp/themes/constant.dart';

class WalkCard extends StatelessWidget {
  final String imgSrc;
  final String title;
  final String location;
  final String member;
  final String orgBy;

  const WalkCard({
    Key key,
    this.imgSrc,
    this.title,
    this.location,
    this.member,
    this.orgBy,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 10),
      child: Container(
          decoration: BoxDecoration(
              color: textWhite,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 8,
                    offset: Offset(3, 1))
              ]),
          child: Container(
              width: 250,
              child: Column(
                children: [
                  Image.asset(imgSrc),
                  Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(children: [
                        Text(title,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.locationArrow, size: 17),
                            SizedBox(width: 15),
                            Text(location, style: contentBlack),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(FontAwesomeIcons.users, size: 17),
                            SizedBox(width: 15),
                            Text(member, style: contentBlack),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.account_circle, size: 17),
                            SizedBox(width: 15),
                            RichText(
                                text: TextSpan(
                                    text: "Organized by ",
                                    style: contentBlack,
                                    children: [
                                  TextSpan(
                                      text: orgBy,
                                      style: TextStyle(color: primary)),
                                ]))
                          ],
                        ),
                      ]))
                ],
              ))),
    );
  }
}
