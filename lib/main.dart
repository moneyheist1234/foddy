import 'package:flutter/material.dart';
import 'screens/categories.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/meals.dart';
import 'package:foddy/data/dummy_data.dart'; // Import the dummy data

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  print(
      'Dummy Meals Length: ${dummyMeals.length}'); // Check the length of dummyMeals
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: MealsScreen(
        title: 'Delicious Meals',
        meals: dummyMeals, // Pass the dummy meals to MealsScreen
      ),
    );
  }
}
