import 'package:flutter/material.dart';
import '../Models/Data/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal_detail';

  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(title: Text('${selectedMeal.title}')),
      body: Column(
        children: [
          Container(
            child: Image.network(
              selectedMeal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Ingredients',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Container(
            width: 300,
            height: 200,
            child: ListView.builder(
              itemCount: selectedMeal.ingredients.length,
              itemBuilder: ((context, index) => Card(
                    child: Text('${selectedMeal.ingredients[index]}'),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
