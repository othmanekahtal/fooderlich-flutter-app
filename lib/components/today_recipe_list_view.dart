import 'package:flutter/material.dart';
// 1
import '../components/components.dart';
import '../models/models.dart';

class TodayRecipeListView extends StatefulWidget {
  final List<ExploreRecipe> recipes;
  const TodayRecipeListView({Key? key, required this.recipes})
      : super(key: key);

  @override
  _TodayRecipeListViewState createState() => _TodayRecipeListViewState();
}

class _TodayRecipeListViewState extends State<TodayRecipeListView> {
  @override
  Widget build(BuildContext context) {
// 3
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
// 4
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
// 5
          Text('Recipes of the Day',
              style: Theme.of(context).textTheme.headline1),
// 6
          const SizedBox(height: 16),
// 7
          Container(
            height: 400,
            color: Colors.transparent,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: widget.recipes.length,
              itemBuilder: (context, index) {
                final recipe = widget.recipes[index];
                return buildCard(recipe);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCard(ExploreRecipe recipe) {
    if (recipe.cardType == RecipeCardType.card1) {
      return Card1(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card2) {
      return Card2(recipe: recipe);
    } else if (recipe.cardType == RecipeCardType.card3) {
      return Card3(recipe: recipe);
    } else {
      throw Exception('This card doesn\'t exist yet');
    }
  }
}
