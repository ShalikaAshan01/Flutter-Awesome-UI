import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/raised_gradient_button.dart';

class Login2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  String _logoPath = "assets/img/logo.png";
  double _imageSize = 150;
  final globalKey = GlobalKey<ScaffoldState>();

  Color _color1 = Color(0xFFE78500);
  Color _color2 = Color(0xFFED7F00);
  Color _color3 = Color(0xFFE65B00);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height =
        size.width > size.height ? size.height / 2 : size.height / 3;

    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      key: globalKey,
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            width: size.width,
            height: height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Image(
                  image: AssetImage(_logoPath),
                  width: _imageSize,
                  height: _imageSize,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Color(0xFFE2CDB3),
                          fontWeight: FontWeight.w700,
                          fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(80)),
                gradient: LinearGradient(colors: [_color1, _color2, _color3])),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              child: TextField(
                  style: TextStyle(color: Colors.black87),
                  decoration: InputDecoration(
                      hintText: "Email address",
                      hintStyle: TextStyle(color: Color(0xFF949494)),
                      icon: Icon(
                        Icons.email,
                        color: Color(0xFF949494),
                      ),
                      border: InputBorder.none)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                  color: Color(0xFFF7F7F7),
                  boxShadow: [
                    BoxShadow(color: Color(0xFFD5D5D5), blurRadius: 5.0)
                  ]),
              padding: EdgeInsets.only(left: 12, top: 8, bottom: 8),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              child: TextField(
                  style: TextStyle(color: Colors.black87),
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Color(0xFF949494)),
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color(0xFF949494),
                      ),
                      border: InputBorder.none)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                  color: Color(0xFFF7F7F7),
                  boxShadow: [
                    BoxShadow(color: Color(0xFFD5D5D5), blurRadius: 5.0)
                  ]),
              padding: EdgeInsets.only(left: 12, top: 8, bottom: 8),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Color(0xFF9F9F9F),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: RaisedGradientButton(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [_color1, _color2]),
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[500],
                        offset: Offset(0.0, 1.5),
                        blurRadius: 1.5,
                      ),
                    ]),
                onPressed: () {
                  setState(() {
                    _showSnackBar();
                  });
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              signUpText("Don\'t have an Account? ", Colors.black87),
              signUpText("Register", _color3),
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  Widget signUpText(String text, Color color) {
    return Container(
      child: Text(
        text,
        style:
            TextStyle(color: color, fontSize: 15, fontWeight: FontWeight.w600),
      ),
    );
  }
  void _showSnackBar() {
    final snackBar =
    SnackBar(content: Text('This feature isn\'t implemented.'));
    globalKey.currentState.showSnackBar(snackBar);
  }
}
