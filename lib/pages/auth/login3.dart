import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Login3State();
}

class _Login3State extends State<Login3> {
  String _logoPath = "assets/img/logo.png";
  Color _color1 = Color(0xFF27569E);
  Color _color2 = Color(0xFF3A3485);
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        key: globalKey,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height / 2,
                width: size.width,
                child: Image(
                  image: AssetImage(_logoPath),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [_color1, _color2])),
              ),
              Container(
                height: 600,
                padding: EdgeInsets.only(
                    top: (size.height / 2.4), left: 25, right: 25),
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 80),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w800),
                          ),
                        ),
                        TextField(
                          decoration:
                              InputDecoration(labelText: "Email Address"),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(labelText: "Password"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: size.width / 1.5,
                  padding: EdgeInsets.only(top: size.height / 2.4 + 234),
                  child: RaisedButton(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      onPressed: () {
                        setState(() {
                          _showSnackBar();
                        });
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35))),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: size.height / 2.4 + 340),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Colors.black87),
                ),
              )
            ],
          ),
        ));
  }

  void _showSnackBar() {
    final snackBar =
        SnackBar(content: Text('This feature isn\'t implemented.'));
    globalKey.currentState.showSnackBar(snackBar);
  }
}
