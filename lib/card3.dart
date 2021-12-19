import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card3 extends StatefulWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  _Card3State createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/mag2.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.6),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 40,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Recipe Trends',
                  style: FooderlichTheme.darkTextTheme.headline2,
                ),
                const SizedBox(height: 30),
                Center(
                  /// Wrap is a layout widget that attempts to lay out each of its children adjacent to the previous children. If there’s not enough space, it wraps to the next line.
                  child: Wrap(
                    /// Place the children as close to the left, i.e. the start, as possible
                    alignment: WrapAlignment.start,

                    /// Apply a 12-pixel space between each child in the main axis.
                    spacing: 12,

                    /// Apply a 12-pixel space between each child in the cross axis.
                    runSpacing: 12,

                    /// add list of the chip
                    children: [
                      Chip(
                        label: Text('Healthy',
                            style: FooderlichTheme.darkTextTheme.bodyText1),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {
                          print('delete');
                        },
                      ),
                      Chip(
                        label: Text('Vegan',
                            style: FooderlichTheme.darkTextTheme.bodyText1),
                        backgroundColor: Colors.black.withOpacity(0.7),
                        onDeleted: () {
                          print('delete');
                        },
                      ),
                      Chip(
                        label: Text('Carrots',
                            style: FooderlichTheme.darkTextTheme.bodyText1),
                        backgroundColor: Colors.black.withOpacity(0.7),
                      ),
                      Chip(
                        label: Text(
                          'Greens',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(.7),
                      ),
                      Chip(
                        label: Text(
                          'Wheat',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(.7),
                      ),
                      Chip(
                        label: Text(
                          'Pescetarian',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(.7),
                      ),
                      Chip(
                        label: Text(
                          'MInt',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(.7),
                      ),
                      Chip(
                        label: Text(
                          'Lemongrass',
                          style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        backgroundColor: Colors.black.withOpacity(.7),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
