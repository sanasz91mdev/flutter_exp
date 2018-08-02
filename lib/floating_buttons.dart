import 'package:flutter/material.dart';
import 'package:flutter_experiments/custom_text_field.dart';

class FormUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FormUIState();
}

class FormUIState extends State<FormUI> {
  final TextEditingController _amountController1 = TextEditingController();
  final TextEditingController _amountController2 = TextEditingController();
  final TextEditingController _amountController3= TextEditingController();
  final TextEditingController _amountController4= TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: ListView(
        children: <Widget>[
          CustomTextField(
            icon: Icons.person,
            focusNode: FocusNode(),
            keyboardType: TextInputType.text,
            hintText: "name",
            labelText: "name",
            hasError: false,
            validator: (String t) => _validateIdentifier(t),
            controller: TextEditingController(),
            maxLength: 50,
          ),
          CustomTextField(
            icon: Icons.account_balance,
            focusNode: FocusNode(),
            keyboardType: TextInputType.text,
            hintText: "name",
            labelText: "name",
            hasError: false,
            validator:  (String t) => _validateIdentifier(t),
            controller: TextEditingController(),
            maxLength: 50,
          ),
          CustomTextField(
            icon: Icons.directions_bike,
            focusNode: FocusNode(),
            keyboardType: TextInputType.text,
            hintText: "name",
            labelText: "name",
            hasError: false,
            validator:  (String t) => _validateIdentifier(t),
            controller: TextEditingController(),
            maxLength: 50,
            maxLines: 3,
          ),
          CustomTextField(
            icon: Icons.directions_car,
            focusNode: FocusNode(),
            keyboardType: TextInputType.text,
            hintText: "name",
            labelText: "name",
            hasError: false,
            validator:  (String t) => _validateIdentifier(t),
            controller: TextEditingController(),
            maxLength: 50,
            maxLines: 3,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){print("Sana");},child: Icon(Icons.add),),
    );
  }

  String _validateIdentifier(String t) {return null;}
}
