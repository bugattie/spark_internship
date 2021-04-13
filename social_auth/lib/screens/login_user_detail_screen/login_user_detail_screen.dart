import 'package:flutter/material.dart';

import './widgets/custom_clipper.dart';
import '../../constants.dart';
import '../../size_config.dart';

class LoginUserDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: CustomShapeBar(),
            child: Container(
              // alignment: Alignment.centerLeft,
              width: double.infinity,
              height: defaultSize * 30,
              color: kPrimaryColor,
              child: Container(
                padding: EdgeInsets.only(left: defaultSize * 3.5),
                margin: EdgeInsets.only(top: defaultSize * 8),
                child: Text(
                  'Profile',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: defaultSize * 35,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: -50,
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: defaultSize),
                            height: defaultSize * 14,
                            width: defaultSize * 14,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: defaultSize * 0.8,
                              ),
                              color: Color(0xFF1976D3),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/icons/user.jpg'),
                              ),
                            ),
                          ),
                          Text(
                            'John Doe',
                            style: TextStyle(
                                fontSize: defaultSize * 2.2, color: kTextColor),
                          ),
                          SizedBox(
                            height: defaultSize / 2,
                          ), //5
                          Text(
                            'johndoe@gmail.com',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: kTextLightColor),
                          ),
                          // Spacer(),
                          SizedBox(
                            height: defaultSize * 8,
                          ), //5
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.exit_to_app),
                            label: Text('Logout'),
                            style: ElevatedButton.styleFrom(
                              primary: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
