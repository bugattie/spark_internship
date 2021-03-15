import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../models/recipe_bundle.dart';
// import '../../customer_screen/customer_screen.dart';

class RecipeBundleCard extends StatelessWidget {
  final GridBundle productItem;

  RecipeBundleCard(this.productItem);
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return AspectRatio(
      aspectRatio: 1.65,
      child: Container(
        decoration: BoxDecoration(
          color: productItem.backgroundColor,
          borderRadius: BorderRadius.circular(
            SizeConfig.defaultSize * 1.8,
          ), // 10 * 1.8 = 18
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      productItem.title,
                      style: TextStyle(
                        fontSize: defaultSize * 2.2,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: defaultSize * 0.5,
                    ),
                    Text(
                      productItem.description,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                    Spacer(),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: productItem.btnColor,
                        onPrimary: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      icon: Icon(Icons.person_outline_sharp),
                      label: Text(
                        productItem.btnText,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(productItem.onClick);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 0.71,
              child: Image.asset(
                productItem.imageSrc,
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
