import 'package:flutter/material.dart';
// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  var text;
  var ontap;

  CustomCard({required this.text, required this.ontap});
  @override
  Widget build(BuildContext context) {
    final Height=MediaQuery.of(context).size.height;
    final Width=MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        child: GestureDetector(
          onTap: ontap,
          child: Card(
            elevation: 8,
            color: Colors.teal,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    'asset/image/cricket2.png',
                    height: Width*0.12,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: Width*0.044,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomCard2 extends StatelessWidget {
  var text;
  var ontap;
  var color;

  CustomCard2({required this.text, required this.ontap, required this.color});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 95,
        child: GestureDetector(
          onTap: ontap,
          child: Card(
            elevation: 10,
            color: color,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Image.asset(
                    'asset/image/stadium.png',
                    height: 40,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  FittedBox(
                    child: Text(
                      text,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Screen_s extends StatelessWidget {
  var text;
  var children;
  Screen_s({required this.text, required this.children});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Signika',
              fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.teal,
        toolbarHeight: 70,
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
