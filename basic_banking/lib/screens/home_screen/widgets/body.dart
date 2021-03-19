import 'package:flutter/material.dart';

import '../../../models/facilities_bundle.dart';
import './facility_grid.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gridItem = GridBundle().gridItem;
    double defaultSize = SizeConfig.defaultSize;
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(defaultSize * 2.0),
            child: GridView.builder(
              itemCount: gridItem.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 20,
                childAspectRatio: 1.65,
              ),
              itemBuilder: (ctx, i) => FacilityGridItem(
                id: gridItem[i].id,
                title: gridItem[i].title,
                description: gridItem[i].description,
                btnText: gridItem[i].btnText,
                imageSrc: gridItem[i].imageSrc,
                btnIcon: gridItem[i].btnIcon,
                backgroundColor: gridItem[i].backgroundColor,
                onClick: gridItem[i].onClick,
              ),
            ),
          ),
        )
      ],
    );
  }
}
