import 'package:flutter/material.dart';
import '../Screens/meal_detail.dart';
import './Screens/category_meals_screen.dart';
import './Screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delimeals',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          displayLarge: TextStyle(
            fontFamily: 'RobotoCondensed',
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          displayMedium: TextStyle(
            fontFamily: 'RobotoCondensed',
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          displaySmall: TextStyle(
            fontFamily: 'RobotoCondensed',
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          titleLarge: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          titleMedium: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 18,
          ),
          titleSmall: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 16,
          )
        )
      ),
      //home: const CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/':(context) => CategoriesScreen(),
        CategoryMealsScreen.routeName:(context) => CategoryMealsScreen(),
        MealDetailScreen.routeName:(context) => MealDetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        child: Text('Navigation Time'),
      ),
    );
  }
}
