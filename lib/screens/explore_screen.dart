import 'package:flutter/material.dart';
import 'package:fooderlich/components/components.dart';
import 'package:fooderlich/components/today_recipe_list_view.dart';
import '../models/models.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
// 1
  final mockService = MockFooderlichService();
  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// 2
// TODO 1: Add TodayRecipeListView FutureBuilder
    // 1
    return FutureBuilder(
      // 2
      future: mockService.getExploreData(),
      // 3
      builder: (context, AsyncSnapshot<ExploreData> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('error happens when we fetching the data'),
            );
          }
          // 5
          final recipes = snapshot.data?.todayRecipes ?? [];
          final friendPosts = snapshot.data?.friendPosts ?? [];
          return ListView(
// 6
            scrollDirection: Axis.vertical,
            children: [
// 7
              TodayRecipeListView(recipes: recipes),
// 8
              const SizedBox(height: 16),
// 9
// TODO: Replace this with FriendPostListView
              FriendPostListView(friendPosts: friendPosts),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.amber,
            ),
          );
        }
      },
    );
  }
}
