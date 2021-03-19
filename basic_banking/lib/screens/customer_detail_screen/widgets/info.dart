import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../../constants.dart';
import './custom_shape.dart';

class Info extends StatelessWidget {
  const Info({
    this.name,
    this.image,
    this.email,
    this.amount,
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize, amount;
  final String image, email, name;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 24, // 240
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
                  name,
                  style:
                      TextStyle(fontSize: defaultSize * 2.2, color: kTextColor),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ), //5
                Text(
                  email,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: kTextLigntColor),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ), //5
                Text(
                  '\$$amount',
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: kTextLigntColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
