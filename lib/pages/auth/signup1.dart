import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUp1State();
}

class _SignUp1State extends State<SignUp1> {
  String _logoPath = "assets/img/logo.png";
  double _imageSize = 100;
  bool _obscureText = true;
  Color _backgroundColor = Color(0xff040D51);
  Color _color = Color(0xff828AB7);
  final globalKey = GlobalKey<ScaffoldState>();
  UnderlineInputBorder _focusBorder =
      UnderlineInputBorder(borderSide: BorderSide(color: Colors.redAccent));

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(color: Colors.white70, fontSize: 18);
    return Theme(
      data: new ThemeData(
        primaryColor: Colors.white70,
        primaryColorDark: Colors.white70,
        splashColor: Colors.transparent,
        scaffoldBackgroundColor: _backgroundColor,
        accentColor: Colors.white70,
        cursorColor: Colors.white60,
      ),
      child: Scaffold(
          key: globalKey,
//          resizeToAvoidBottomInset: false,
          body: ListView(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image(
                image: AssetImage(_logoPath),
                width: _imageSize,
                height: _imageSize,
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: textStyle,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle: textStyle,
                    focusedBorder: _focusBorder,
                    suffixIcon: Icon(Icons.person, color: _color),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: _color),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: textStyle,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    labelStyle: textStyle,
                    focusedBorder: _focusBorder,
                    suffixIcon: Icon(
                      Icons.email,
                      color: _color,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: _color),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: textStyle,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: textStyle,
                    focusedBorder: _focusBorder,
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: _color,
                        )),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: _color),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                width: double.maxFinite,
                child: RaisedButton(
                  color: Color(0xFFF6188C),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Color(0xFFF50057))),
                  splashColor: Color(0xFFF50057),
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  onPressed: () => _showSnackBar(),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                        padding: const EdgeInsets.only(right: 5),
                        color: Colors.white,
                        height: 1),
                  ),
                  Expanded(
                      child: Container(
                    child: Text(
                      "You can also sign up with".toUpperCase(),
                      style: TextStyle(
                        color: _color,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.only(left: 5),
                        color: Colors.white,
                        height: 1),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Spacer(),
                  Expanded(
                    child: RaisedButton(
                      onPressed: () => _showSnackBar(),
                      color: Color(0xFF262E72),
                      child: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white70,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(color: Color(0xFF262E72))),
                      splashColor: Color(0xFF262E72),
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: RaisedButton(
                      onPressed: () => _showSnackBar(),
                      color: Color(0xFF262E72),
                      child: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white70,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          side: BorderSide(color: Color(0xFF262E72))),
                      splashColor: Color(0xFF262E72),
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }

  void _showSnackBar() {
    final snackBar =
        SnackBar(content: Text('This feature isn\'t implemented.'));
    globalKey.currentState.showSnackBar(snackBar);
  }
}
