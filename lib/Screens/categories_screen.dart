import 'package:flutter/material.dart';
import '../Models/Data/dummy_data.dart';
import '../Widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Delimeals'), ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
        children: DUMMY_CATEGORIES
            .map((catData) => CategoryItem(
                  title: catData.title,
                  color: catData.color,
                  categoryId: catData.id,
                
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 100),
    ),
      ),
    );
  }
}
