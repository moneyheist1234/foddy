import 'package:flutter/material.dart';
import 'package:foddy/data/dummy_data.dart';
import 'package:foddy/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Pick Your Category')),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
          ),
          children: [
            for (final category in availableCategories)
              CategoryGridItem(
                  category: category) // Corrected "catergory" to "category"
          ],
        ),
      ),
    );
  }
}
