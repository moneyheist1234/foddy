import 'package:flutter/material.dart';
import 'package:foddy/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    print(
        'Meals List Length: ${meals.length}'); // Debugging: Print length of meals

    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (ctx, index) => ListTile(
        title: Text(meals[index].title),
        onTap: () {
          // Define the action for the meal item here
        },
      ),
    );

    // Case 1: meals is empty
    if (meals.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Uh oh....nothing here!',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            const SizedBox(height: 16),
            Text(
              'Try selecting a different category!',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ],
        ),
      );
    }

    // Case 2: meals is not empty
    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(meals[index].title),
          onTap: () {
            // Define the action for the meal item here
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
