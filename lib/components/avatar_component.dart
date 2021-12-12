import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  final ImageProvider? imageAvatar;
  final double radiusCircle = 30;
  const AvatarComponent({Key? key, required this.imageAvatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radiusCircle,
      // backgroundImage: imageAvatar,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: radiusCircle - 5,
        backgroundImage: imageAvatar,
      ),
    );
  }
}
