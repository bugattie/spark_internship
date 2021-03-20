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
  final _form = GlobalKey<FormState>();
  var _editedTransaction = Transaction(
    id: null,
    senderEmail: '',
    receiverEmail: '',
    amount: 0,
  );

  void _saveForm() {
    final isValid = _form.currentState.validate();
    if (!isValid) return;
    _form.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserData>(context, listen: false);
    final _currentUser = ModalRoute.of(context).settings.arguments as User;
    double defaultSize = SizeConfig.defaultSize;

    return Form(
      key: _form,
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
                      _editedTransaction = Transaction(
                        id: null,
                        senderEmail: _currentUser.email,
                        receiverEmail: selectItem,
                        amount: _editedTransaction.amount,
                      );
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
                    onFieldSubmitted: (_) {
                      _saveForm();
                    },
                    onSaved: (value) {
                      _editedTransaction = Transaction(
                        id: null,
                        senderEmail: _currentUser.email,
                        receiverEmail: _editedTransaction.receiverEmail,
                        amount: double.parse(value),
                      );
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter an amount';
                      }
                      if (double.tryParse(value) == null) {
                        return 'Please enter a valid amount';
                      }
                      if (double.parse(value) <= 0) {
                        return 'Please enter an that is greater than zero.';
                      }
                      if (double.parse(value) >= _currentUser.amount) {
                        return "You don't have that much amount ";
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton.icon(
            onPressed: () {
              _saveForm();
            },
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
