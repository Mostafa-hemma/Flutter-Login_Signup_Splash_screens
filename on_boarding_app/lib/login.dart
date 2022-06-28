// ignore_for_file: prefer_const_constructors

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:on_boarding_app/Signup.dart';
import 'package:on_boarding_app/buttons.dart';
import 'package:on_boarding_app/textfield.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          //alignment: Alignment.center,
          // ignore: prefer_const_constructors
          child: Column(
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image.asset(
                'images/555.png',
                height: 125,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              )),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.only(right: 200),
            child: Text(
              "Welcome to 7krave",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.teal,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Help",
                    style: TextStyle(
                        color: Colors.teal, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(right: 210),
            child: Text(
              "Phone Number",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                //SizedBox(height: 20.0),
                child: CountryCodePicker(
                  onChanged: print,
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: 'IT',
                  favorite: ['+39', 'FR'],
                  // optional. Shows only country name and flag
                  showCountryOnly: false,
                  // optional. Shows only country name and flag when popup is closed.
                  showOnlyCountryWhenClosed: false,
                  // optional. aligns the flag and the Text left
                  alignLeft: false,
                ),
              ),
              Expanded(
                flex: 3,
                //SizedBox(height: 20.0),
                child: text_field(
                    width: 30,
                    height: 10,
                    textInputType: TextInputType.phone,
                    hinttext: "Eg. 111315622",
                    bordercolor: Colors.teal,
                    borderwidth: 20,
                    borderraduis: 5.0,
                    labeltext: ""),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          button(
              width: 325,
              background: Colors.teal,
              raduis: 8.0,
              text: "Sign in",
              textcolor: Colors.white,
              navigate: () => {}),
          SizedBox(
            height: 10,
          ),
          Text("Or"),
          SizedBox(
            height: 10,
          ),
          button(
            width: 325,
            background: Colors.teal,
            raduis: 8.0,
            text: "Sign With Google",
            icon: Icons.group_add_outlined,
            textcolor: Colors.white,
            navigate: () => {},
            isicon: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have any account?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                  child: Text(
                    "Register here",
                    style: TextStyle(color: Colors.teal),
                  )),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
                "use the application according to policy rules.Any kinds of violations will be subject to review",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                  //fontWeight: FontWeight.bold),
                )),
          ),
        ],
      )),
    );
  }
}
