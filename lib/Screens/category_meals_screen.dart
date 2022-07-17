import 'package:flutter/material.dart';
import '../Models/Data/dummy_data.dart';
import '../Widgets/meal_iem.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen({Key? key,required this.categoryId,required this.categoryTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArg['catTitle'];
    final categoryId = routeArg['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle.toString())),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: categoryMeals[index].id,
            imgUrl: categoryMeals[index].imageUrl,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            duration: categoryMeals[index].duration,
            title: categoryMeals[index].title,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
