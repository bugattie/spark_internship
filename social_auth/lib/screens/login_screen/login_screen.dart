import 'package:flutter/material.dart';

import './widgets/login_detail.dart';
import '../../size_config.dart';
import './widgets/top_bar.dart';
import '../../constants.dart';

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     double defaultSize = SizeConfig.defaultSize;
//     return Scaffold(
//       backgroundColor: kPrimaryColor,
//       body: ChangeNotifierProvider(
//         create: (context) => GoogleSignInProvider(),
//         child: StreamBuilder(
//           stream: FirebaseAuth.instance.authStateChanges(),
//           builder: (context, snapshot) {
//             final provider = Provider.of<GoogleSignInProvider>(context);

//             if (provider.isSigningIn)
//               return buildLoading();
//             else if (snapshot.hasData)
//               return LoginUserDetailScreen();
//             else
//               return SignUpWidget(defaultSize: defaultSize);
//           },
//         ),
//       ),
//     );
//   }

//   Widget buildLoading() => Center(child: CircularProgressIndicator());
// }
class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: defaultSize * 28.7,
              child: TopBar(defaultSize: defaultSize),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultSize * 8),
                  ),
                ),
                child: LoginDetail(defaultSize: defaultSize),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class SignUpWidget extends StatelessWidget {
//   const SignUpWidget({
//     Key key,
//     @required this.defaultSize,
//   }) : super(key: key);

//   final double defaultSize;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Container(
//             alignment: Alignment.center,
//             height: defaultSize * 28.7,
//             child: TopBar(defaultSize: defaultSize),
//           ),
//           Expanded(
//             child: Container(
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(defaultSize * 8),
//                 ),
//               ),
//               child: LoginDetail(defaultSize: defaultSize),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
