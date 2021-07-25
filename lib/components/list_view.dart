import 'package:flutter/material.dart';

import '../constants.dart';


class ListViewBooks extends StatelessWidget {
  const ListViewBooks({
    Key? key,
    @required this.text,
    @required this.label,
    @required this.imgSrc,
    @required this.star,
  }) : super(key: key);
  final text;
  final label;
  final imgSrc;
  final star;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 370,
            decoration: BoxDecoration(
                color: bgColor2, borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Image(
                  image: AssetImage(imgSrc),
                  height: 100,
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Container(
                        child: Text(
                          text,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(),
                          child: Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(),
                          child: Text(
                            star,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(),
                      child: Container(
                        height: 40,
                        width: 140,
                        child: Center(
                          child: Text(
                            label,
                            style:
                                TextStyle(color: Colors.orange, fontSize: 12),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
