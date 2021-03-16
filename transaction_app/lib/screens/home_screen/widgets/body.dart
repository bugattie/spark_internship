import 'package:flutter/material.dart';
import 'package:transaction_app/models/facilities_bundle.dart';

import 'facility_bundle_card.dart';
import '../../../models/facilities_bundle.dart';
// import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gridItem = GridItem();
    // double defaultSize = SizeConfig.defaultSize;
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
              itemCount: gridItem.gridItem.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 20,
                childAspectRatio: 1.65,
              ),
              itemBuilder: (ctx, i) => FacilityBundleCard(gridItem.gridItem[i]),
            ),
          ),
        )
      ],
    );
  }
}
