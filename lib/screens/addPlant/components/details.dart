import 'package:flutter/material.dart';
import 'package:greenify/components/rounded_button.dart';
import 'package:greenify/components/rounded_input_field.dart';
import 'package:greenify/constants.dart';

class Details extends StatelessWidget {
  const Details({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(children: [
        TextFormField(
          decoration: InputDecoration(
            labelText: "Plant Name",
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(),
            ),
          ),
          validator: (val) {
            if (val.length == 0) {
              return "Email cannot be empty";
            } else {
              return null;
            }
          },
          keyboardType: TextInputType.name,
          style: TextStyle(
            fontFamily: "Poppins",
          ),
        ),
        // ignore: deprecated_member_use
        RaisedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.location_pin,
          ),
          label: Text("Add Location"),
        )
      ]),
    );
  }
}
