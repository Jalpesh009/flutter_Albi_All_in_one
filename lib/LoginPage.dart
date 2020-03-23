import 'package:flutter/material.dart';
import 'package:flutter_demo/HomePage.dart';
import 'package:flutter_demo/SignUpScreen.dart';

import 'helpers/Constants.dart';

// 1
class LoginPage extends StatelessWidget {
  // 2
  final _pinCodeController = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  // 3
  @override
  Widget build(BuildContext context) {
    // 3a

    final logo = CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: bigRadius,
      //child:appLogo,
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/images/loader.gif',
        image:
            'http://www.albiorixtech.com/wp-content/uploads/2019/01/logo_albiorix-1-e1577458535109.png',
      ),
    );

    // 3b
    final pinCode = TextFormField(
      controller: _pinCodeController,
      keyboardType: TextInputType.phone,
      maxLength: 4,
      maxLines: 1,
      autofocus: false,
      decoration: InputDecoration(
          hintText: pinCodeHintText,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          hintStyle: TextStyle(color: appYellowColor)),
      style: TextStyle(
        color: appDarkGreyColor,
      ),
    );

    // 3c
    final loginButton = Padding(
      key: _scaffoldKey,
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          if (_pinCodeController.text.isEmpty) {
            Scaffold.of(_scaffoldKey.currentContext).showSnackBar(SnackBar(
                content: Text('Enter pincode'),
                backgroundColor: appOrangeColor));
            //new Tooltip(message: "Hello World", child: new Text("foo"));
          } else {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new HomePage()));
          }
          /*return showDialog(

            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(_pinCodeController.text),
              );
            },
          );*/
        },
        padding: EdgeInsets.all(12),
        color: appOrangeColor,
        child: Text(loginButtonText, style: TextStyle(color: Colors.white)),
      ),
    );

    final signup = new Column(
      children: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new SignUpScreen()));
          },
          child: new Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: new Text(
                "Don't Have An Account? Click Here",
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 15.0),
              )),
        )
      ],
    );

    // 3d
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: bigRadius),
            pinCode,
            SizedBox(height: buttonHeight),
            loginButton,
            SizedBox(height: buttonHeight),
            signup
          ],
        ),
      ),
    );
  }

  _displaySnackBar(BuildContext context) {
    final snackBar = SnackBar(content: Text('Are you talkin\' to me?'));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
