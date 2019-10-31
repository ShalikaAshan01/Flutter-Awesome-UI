import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  String _logoPath = "assets/img/logo.png";
  double _imageSize = 50;
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(color: Colors.white70, fontSize: 14);
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xFF161B29),
        key: globalKey,
        body: Container(
          child: CustomPaint(
              size: screenSize,
              painter: _BackGround(),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(_logoPath),
                        width: _imageSize,
                        height: _imageSize,
                      ),
                      Text(
                        "Flutter UI",
                        style: TextStyle(color: Colors.white70, fontSize: 18),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "WELCOME",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF00CE88)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "BACK!",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFE2E5EC)),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width / 4,
                        right: screenSize.width / 8),
                    child: TextField(
                      style: textStyle,
                      decoration: InputDecoration(
                        labelText: "username".toUpperCase(),
                        labelStyle: textStyle,
                        enabledBorder: new UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                        focusedBorder: new UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenSize.width / 6,
                        right: screenSize.width / 5),
                    child: TextField(
                      style: textStyle,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "password".toUpperCase(),
                        labelStyle: textStyle,
                        enabledBorder: new UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                        focusedBorder: new UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(
                        left: screenSize.width / 14,
                        right: screenSize.width / 4),
                    width: 500,
                    child: RaisedButton(
                      child: Text("LOGIN"),
                      color: Color(0xFF00CC8B),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        setState(() {
                          _showSnackBar();
                        });
                      },
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Don\'t have an Account? ",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ),
                        Container(
                          child: Text("Sign Up ",
                              style: TextStyle(color: Color(0xFF00CC8B))),
                        ),
                        Container(
                          child: Text("here",
                              style: TextStyle(color: Colors.white70)),
                        )
                      ],
                    ),
                  ),
                  Spacer()
                ],
              )),
        ));
  }

  void _showSnackBar() {
    final snackBar =
        SnackBar(content: Text('This feature isn\'t implemented.'));
    globalKey.currentState.showSnackBar(snackBar);
  }
}

class _BackGround extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint();
    paint.color = Color(0xFF558b2f);
    paint.strokeWidth = 100;
    paint.isAntiAlias = true;

    var path = Path();
    path.lineTo(0, size.height / 2);
    path.lineTo(size.width / 3, 0);
    path.close();
    canvas.drawPath(path, paint);

    var path2 = Path();
    path2.moveTo(size.width, size.height);
    path2.lineTo(size.width, size.height / 2);
    path2.lineTo(size.width / 1.5, size.height);
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
