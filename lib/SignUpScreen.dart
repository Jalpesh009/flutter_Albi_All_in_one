import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'helpers/Constants.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController name_controller = new TextEditingController();
  final TextEditingController password_controller = new TextEditingController();
  final TextEditingController email_controller = new TextEditingController();
  final TextEditingController re_password_controller =
      new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: true,
        body: new ListView(
          shrinkWrap: true,
          reverse: false,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: new Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    //  Navigator.of(context).pop(SIGN_UP_SCREEN);
                                  })),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 0.0, bottom: 0.0, top: 0.0),
                            child: new Text("SIGN UP",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                                textAlign: TextAlign.left),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                new SizedBox(
                  height: 30.0,
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Image.asset(
                      "assets/images/logo.png",
                      height: 100.0,
                      width: 220.0,
                      fit: BoxFit.scaleDown,
                    )
                  ],
                ),
                new Center(
                    child: new Center(
                  child: new Stack(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 30.0, right: 30.0),
                          child: new Form(
                            autovalidate: false,
                            child: new Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.0, right: 10.0),
                                  child: new Column(children: [
                                    TextField(
                                      onChanged: (text) {
                                        print("First text field: $text");
                                      },
                                    ),
                                    new Padding(
                                        padding: EdgeInsets.only(top: 50.0)),
                                    new TextFormField(
                                      decoration: new InputDecoration(
                                        contentPadding:
                                            EdgeInsets.only(left: 10.0),
                                        labelText: "Enter Email",
                                        prefixIcon: Padding(
                                            padding:
                                                EdgeInsets.only(right: 7.0),
                                            child: new Image.asset(
                                              "assets/images/user_icon.png",
                                              scale: 2.5,
                                            )),
                                        fillColor: Colors.white,
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(25.0),
                                          borderSide: new BorderSide(),
                                        ),

                                        //fillColor: Colors.green
                                      ),
                                      validator: (val) {
                                        if (val.length == 0) {
                                          return "Email cannot be empty";
                                        } else {
                                          return null;
                                        }
                                      },
                                      keyboardType: TextInputType.emailAddress,
                                      style: new TextStyle(
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                  ]),
                                ),
                                new Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.0, right: 10.0),
                                  child: new TextFormField(
                                    controller: name_controller,
                                    decoration: new InputDecoration(
                                        labelText: "Full Name*",
                                        filled: false,
                                        prefixIcon: Padding(
                                            padding:
                                                EdgeInsets.only(right: 7.0),
                                            child: new Image.asset(
                                              "assets/images/user_icon.png",
                                              scale: 2.5,
                                            ))),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                                new Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: new TextFormField(
                                      obscureText: false,
                                      controller: email_controller,
                                      decoration: new InputDecoration(
                                          labelText: "Email-Id",
                                          enabled: true,
                                          filled: false,
                                          prefixIcon: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 7.0),
                                              child: new Image.asset(
                                                "assets/images/email_icon.png",
                                                scale: 2.5,
                                              ))),
                                      keyboardType: TextInputType.text,
                                    )),
                                new Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: new TextFormField(
                                      obscureText: true,
                                      controller: password_controller,
                                      decoration: new InputDecoration(
                                          labelText: "Password*",
                                          enabled: true,
                                          filled: false,
                                          prefixIcon: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 7.0),
                                              child: new Image.asset(
                                                "assets/images/password_icon.png",
                                                scale: 2.5,
                                              ))),
                                      keyboardType: TextInputType.text,
                                    )),
                                new Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: new TextFormField(
                                      obscureText: true,
                                      controller: re_password_controller,
                                      decoration: new InputDecoration(
                                          labelText: "Confirm Password*",
                                          enabled: true,
                                          filled: false,
                                          prefixIcon: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 7.0),
                                              child: new Image.asset(
                                                "assets/images/password_icon.png",
                                                scale: 2.5,
                                              ))),
                                      keyboardType: TextInputType.text,
                                    )),
                                new Padding(
                                  padding: EdgeInsets.only(
                                      left: 0.0, top: 45.0, bottom: 20.0),
                                  child: new RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0)),
                                    onPressed: () {
                                      if (!(name_controller.value.text
                                              .toString()
                                              .trim()
                                              .length >
                                          0)) {
                                        Scaffold.of(context).showSnackBar(
                                            SnackBar(
                                                content: Text(
                                                    'Please enter user name'),
                                                backgroundColor:
                                                    appOrangeColor));
                                      }
                                      /* else if(!(email_controller.value.text.toString().trim().length>0))
                                      {

                                      }*/

                                      else if (!(password_controller.value.text
                                              .toString()
                                              .trim()
                                              .length >
                                          0)) {
                                        Scaffold.of(context).showSnackBar(
                                            SnackBar(
                                                content: Text(
                                                    'Please enter the password.'),
                                                backgroundColor:
                                                    appOrangeColor));
                                      } else if (!(re_password_controller
                                              .value.text
                                              .toString()
                                              .trim()
                                              .length >
                                          0)) {
                                        Scaffold.of(context).showSnackBar(SnackBar(
                                            content: Text(
                                                'Please enter the confirm password.'),
                                            backgroundColor: appOrangeColor));
                                      } else {
                                        if (re_password_controller.value.text
                                            .toString()
                                            .endsWith(password_controller
                                                .value.text
                                                .toString())) {
                                          /* var root = MaterialPageRoute(
                                              builder: (context) =>
                                                  new HomeScreen(name_controller
                                                      .value.text
                                                      .toString()));

                                          Navigator.of(context).pop(LOGIN_SCREEN);

                                          Navigator.pushReplacement(
                                              context, root);
*/

                                          //Navigator.of(context).pop(SIGN_UP_SCREEN);

                                        } else {
                                          Scaffold.of(context).showSnackBar(
                                              SnackBar(
                                                  content: Text(
                                                      'Your Password and confirm password do not match.'),
                                                  backgroundColor:
                                                      appOrangeColor));
                                        }
                                      }
                                    },
                                    child: new Text(
                                      "SignUp ",
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    color: Color(0xFF54C5F8),
                                    textColor: Colors.white,
                                    elevation: 5.0,
                                    padding: EdgeInsets.only(
                                        left: 80.0,
                                        right: 80.0,
                                        top: 15.0,
                                        bottom: 15.0),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ))
              ],
            )
          ],
        ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    name_controller.dispose();
    password_controller.dispose();
    email_controller.dispose();
    re_password_controller.dispose();
    super.dispose();
  }
}
