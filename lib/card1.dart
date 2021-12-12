import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';


class Card1 extends StatefulWidget {
  const Card1({Key? key}) : super(key: key);

  @override
  _Card1State createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.all(25),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            image: DecorationImage(
              image: AssetImage('assets/mag1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Text(
                category,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              Positioned(
                child: Text(
                  title,
                  style: FooderlichTheme.darkTextTheme.headline2,
                ),
                top: 25,
              ),
              Positioned(
                child: Text(
                  description,
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                ),
                right: 0,
                bottom: 25,
              ),
              Positioned(
                child: Text(
                  chef,
                  style: FooderlichTheme.darkTextTheme.bodyText1,
                ),
                right: 0,
                bottom: 0,
              ),
            ],
          ),
      ),
    );
  }
}
