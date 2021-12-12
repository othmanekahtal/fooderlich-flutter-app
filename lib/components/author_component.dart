///to select the current style text in theme ==> style: Theme.of(context).textTheme.bodyText1,
/// we have icon with border and another without border (favorite{without widget} and favorite_border{with border})
///
///
///
import 'package:flutter/material.dart';
import 'package:fooderlich/components/avatar_component.dart';

import '../fooderlich_theme.dart';

class AuthorComponent extends StatefulWidget {
  final String author;
  final String title;
  final ImageProvider imageProvider;
  const AuthorComponent({
    Key? key,
    required this.author,
    required this.title,
    required this.imageProvider,
  }) : super(key: key);

  @override
  _AuthorComponentState createState() => _AuthorComponentState();
}

class _AuthorComponentState extends State<AuthorComponent> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              AvatarComponent(
                imageAvatar: widget.imageProvider,
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.author,
                    style: FooderlichTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    widget.title,
                    style: FooderlichTheme.lightTextTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                liked = true;
              });
              final snackBar = SnackBar(
                content: Text(
                  'Favorite Pressed',
                  style: FooderlichTheme.darkTextTheme.headline6,
                ),
                backgroundColor: Colors.red.shade200,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            iconSize: 30,
            icon: liked
                ? Icon(
                    Icons.favorite,
                    color: Colors.red.shade800,
                  )
                : Icon(
                    Icons.favorite_border,
                    color: Colors.grey.shade400,
                  ),
          )
        ],
      ),
    );
  }
}
