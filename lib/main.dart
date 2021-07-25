import 'package:book_selling_flutter/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: bgColor),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding * 2),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Explore thousands of\nbooks in go',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 28),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: defaultPadding, right: defaultPadding),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(width: 0.0)),
                    fillColor: bgColor2,
                    filled: true,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.white54),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white54,
                    ),
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding, vertical: defaultPadding * 2),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Famous Books',
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                ),
              ),
              ListViewBooks(
                imgSrc: 'images/book1.png',
                label: 'Motivational',
                star: '4.5',
                text: 'Out Of The Dark Knight',
              ),
              SizedBox(
                height: 15,
              ),
              ListViewBooks(
                imgSrc: 'images/book1.png',
                label: 'Sports',
                star: '4.3',
                text: 'Snake Bites The Eagle',
              ),
              SizedBox(
                height: 15,
              ),
              ListViewBooks(
                imgSrc: 'images/book1.png',
                label: 'Fitness',
                star: '4.7',
                text: 'The Dark Knight',
              ),
              SizedBox(
                height: 15,
              ),
              ListViewBooks(
                imgSrc: 'images/book1.png',
                label: 'Travel',
                star: '4.2',
                text: 'Out Of The Dark Knight',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
