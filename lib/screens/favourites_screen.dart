import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../model/meal.dart';

class FavouritesScreen extends StatelessWidget {
  // const FavouritesScreen({ Key? key }) : super(key: key);
  final List<Meal> favoriteMeal;
  FavouritesScreen(this.favoriteMeal);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeal.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some..'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeal.length,
        itemBuilder: (context, index) {
          return MealItem(
            id: favoriteMeal[index].id,
            title: favoriteMeal[index].title,
            imgUrl: favoriteMeal[index].imageUrl,
            duration: favoriteMeal[index].duration,
            complexity: favoriteMeal[index].complexity,
            affordability: favoriteMeal[index].affordability,
          );
        },
      );
    }
  }
}
