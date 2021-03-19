import 'package:flutter/material.dart';

import '../../customer_detail_screen/widgets/custom_shape.dart';
import '../../../size_config.dart';
import '../../../constants.dart';

class BarDetails extends StatelessWidget {
  final double defaultSize;
  final String image, heading;

  BarDetails({
    this.defaultSize,
    this.image,
    this.heading,
  });

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 24,
      child: Stack(
        children: [
          ClipPath(
            clipper: CustomShapeBar(),
            child: Container(
              height: defaultSize * 10,
              color: kPrimaryColor,
            ),
          ),
          Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: defaultSize),
                  height: defaultSize * 14,
                  width: defaultSize * 14,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: defaultSize * 0.8,
                    ),
                    color: Color(0xFF1976D3),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                  ),
                ),
                Text(
                  heading,
                  style:
                      TextStyle(fontSize: defaultSize * 2.2, color: kTextColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
