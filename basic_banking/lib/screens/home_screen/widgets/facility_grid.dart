import 'package:flutter/material.dart';

import '../../../size_config.dart';

class FacilityGridItem extends StatelessWidget {
  final String id, title, description, imageSrc, btnText, onClick;
  final Color btnColor, backgroundColor;
  final Icon btnIcon;

  FacilityGridItem({
    this.id,
    this.title,
    this.description,
    this.onClick,
    this.btnText,
    this.imageSrc,
    this.btnColor,
    this.backgroundColor,
    this.btnIcon,
  });

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return AspectRatio(
      aspectRatio: 1.65,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
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
                      title,
                      style: TextStyle(
                        fontSize: defaultSize * 2.2,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: defaultSize * 0.5,
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: defaultSize * 1.5,
                      ),
                    ),
                    Spacer(),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF6BBFB0),
                        onPrimary: Colors.white,
                        textStyle: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      icon: btnIcon,
                      label: Text(
                        btnText,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed(onClick);
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
                imageSrc,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
