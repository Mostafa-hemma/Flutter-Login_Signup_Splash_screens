// ignore_for_file: prefer_const_constructors

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:on_boarding_app/buttons.dart';
import 'package:on_boarding_app/login.dart';
import 'package:on_boarding_app/textfield.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

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
                  "Register",
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
          Padding(
            padding: EdgeInsets.only(right: 280),
            child: Text(
              "Email",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          text_field(
              width: 30,
              height: 10,
              textInputType: TextInputType.emailAddress,
              hinttext: "Eg. example@gmail.com",
              bordercolor: Colors.teal,
              borderwidth: 1.0,
              borderraduis: 5.0,
              labeltext: ""),
          SizedBox(
            height: 8,
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
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              "Password",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          text_field(
              width: 30,
              height: 6,
              textInputType: TextInputType.visiblePassword,
              hinttext: "Password",
              bordercolor: Colors.teal,
              borderwidth: 1.0,
              borderraduis: 5.0,
              labeltext: ""),
          SizedBox(
            height: 10,
          ),
          button(
              width: 325,
              background: Colors.teal,
              raduis: 8.0,
              text: "Register",
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
              Text("Has any account?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: Text(
                    "Sign in here",
                    style: TextStyle(color: Colors.teal),
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
