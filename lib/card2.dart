import 'package:flutter/material.dart';
import 'package:fooderlich/components/author_component.dart';

import 'fooderlich_theme.dart';

class Card2 extends StatefulWidget {
  const Card2({Key? key}) : super(key: key);
  @override
  _Card2State createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  final String text1 = 'Recipe';
  final String text2 = 'Smoothies';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(25),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            const AuthorComponent(
              author: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
            Positioned(
              child: Text(
                text1,
                style: FooderlichTheme.lightTextTheme.headline1,
              ),
              bottom: 0,
              right: 0,
            ),
            Positioned(
              bottom: 70,
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  text2,
                  style: FooderlichTheme.lightTextTheme.headline1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
