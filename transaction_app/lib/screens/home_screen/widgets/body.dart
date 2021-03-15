import 'package:flutter/material.dart';
import 'package:transaction_app/models/recipe_bundle.dart';

import '../widgets/recipe_bundle_card.dart';
import '../../../models/recipe_bundle.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gridItem = GridItem();
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: GridView.builder(
              itemCount: gridItem.gridItem.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 20,
                childAspectRatio: 1.65,
              ),
              itemBuilder: (ctx, i) => RecipeBundleCard(gridItem.gridItem[i]),
            ),
          ),
        )
      ],
    );
  }
}
