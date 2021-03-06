import 'package:flutter/material.dart';
import '../Screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String categoryId;
  final String title;
  final Color color;

  const CategoryItem(
      {Key? key,
      required this.title,
      required this.color,
      required this.categoryId})
      : super(key: key);

  // void selectCategory(BuildContext ctx) {
  //   Navigator.of(ctx)
  //       .push(MaterialPageRoute(builder: (_) => CategoryMealsScreen(categoryId: categoryId,categoryTitle: title,)));
  // }

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/category-meals', arguments: {
      'id': categoryId,
      'catTitle': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
