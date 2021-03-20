import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/transaction.dart';
import '../../../models/user.dart';
import '../../../size_config.dart';
import '../../../constants.dart';

class BuildAppForm extends StatefulWidget {
  final double defaultSize;
  BuildAppForm({this.defaultSize});
  @override
  _BuildAppFormState createState() => _BuildAppFormState();
}

class _BuildAppFormState extends State<BuildAppForm> {
  String _currentItemSelected = 'janedoe@service.com';

  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context, listen: false);
    final _currentUser = ModalRoute.of(context).settings.arguments as User;
    double defaultSize = SizeConfig.defaultSize;

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Select a person'),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultSize * 1.0,
                    vertical: defaultSize * 0.5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(defaultSize * 1.0),
                  ),
                  child: DropdownButton(
                    icon: Icon(Icons.arrow_drop_down_outlined),
                    iconSize: 42,
                    underline: SizedBox(),
                    items: userData.users.map((User dropDownItem) {
                      return DropdownMenuItem(
                        value: dropDownItem.email,
                        child: Text(dropDownItem.email),
                      );
                    }).toList(),
                    onChanged: (String selectItem) {
                      setState(() {
                        _currentItemSelected = selectItem;
                      });
                    },
                    value: _currentItemSelected,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Select Amount'),
                Container(
                  width: defaultSize * 21.5,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      hintText: '5000.0',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.attach_money),
            label: Text('Transfer Amount'),
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              fixedSize: Size(300, 50),
            ),
          ),
        ],
      ),
    );
  }
}
