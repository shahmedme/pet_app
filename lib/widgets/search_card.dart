import 'package:flutter/cupertino.dart';
import 'package:petapp/themes/constant.dart';

class SearchCard extends StatelessWidget {
  final Map itemOne;
  final Map itemTwo;

  const SearchCard({
    Key key,
    this.itemOne,
    this.itemTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Container(
                width: double.infinity,
                height: 140,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              color: card3,
                              borderRadius: BorderRadius.circular(15)),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(itemOne["title"],
                                    style: TextStyle(
                                        fontSize: 13,
                                        height: 1.5,
                                        color: textWhite)),
                              ))),
                    ),
                    Positioned(
                      right: -20,
                      top: -10,
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(itemOne["img"])),
                    )
                  ],
                ))),
        SizedBox(width: 20),
        Flexible(
            child: Container(
                width: double.infinity,
                height: 140,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              color: card3,
                              borderRadius: BorderRadius.circular(15)),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(itemTwo["title"],
                                    style: TextStyle(
                                        fontSize: 13,
                                        height: 1.5,
                                        color: textWhite)),
                              ))),
                    ),
                    Positioned(
                      right: -20,
                      top: -10,
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(itemTwo["img"])),
                    )
                  ],
                ))),
      ],
    );
  }
}
