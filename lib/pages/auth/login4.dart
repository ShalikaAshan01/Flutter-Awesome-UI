import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/raised_gradient_button.dart';

class Login4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Login4State();
}

class _Login4State extends State<Login4> {
  Color _color = Color(0xFF2863F7);
  Color _color1 = Color(0xFFF58D1F);
  Color _color2 = Color(0xFFFDB127);
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: globalKey,
      resizeToAvoidBottomInset: false,
      body: Container(
        height: size.height,
        width: size.width,
        child: CustomPaint(
          painter: _CustomBackground(),
          child: ListView(
            children: <Widget>[
              SizedBox(height: size.height * 0.17),
              Container(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 38,
                        color: _color,
                        fontWeight: FontWeight.w800),
                  )),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  decoration: InputDecoration(labelText: "Username"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: "Password"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 25),
                alignment: Alignment.topRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15, color: _color),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(right: 25),
                child: Align(
                  alignment: Alignment.topRight,
                  child: RaisedGradientButton(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [_color1, _color2]),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[500],
                            offset: Offset(0.0, 1.5),
                            blurRadius: 1.5,
                          ),
                        ]),
                    width: size.width * 0.45,
                    onPressed: () {
                      setState(() {
                        _showSnackBar();
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(right: 25),
                alignment: Alignment.topRight,
                child: Text(
                  "Don\'t have account? Signup",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15, color: _color),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSnackBar() {
    final snackBar =
        SnackBar(content: Text('This feature isn\'t implemented.'));
    globalKey.currentState.showSnackBar(snackBar);
  }
}

class _CustomBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    Color _color1 = Color(0xFFCFDAF5);
    Color _color2 = Color(0xFF8B66F5).withAlpha(950);
    Color _color3 = Color(0xFFBFD0FC).withAlpha(1400);
    Color _color4 = Color(0xFFD1DEFE).withAlpha(1200);

    Offset firstControlPoint, firstEndPoint;

    paint.color = _color1;

    path.moveTo(0, size.height * 0.86);

    firstControlPoint = Offset(size.width * 0.5, size.height * 0.98);
    firstEndPoint = Offset(size.width, size.height * 0.8);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(0, size.height);
    path.moveTo(size.width, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);

    path = Path();
    paint.color = _color2;

    firstControlPoint = Offset(size.width * 0.3193, size.height * 0.65);
    firstEndPoint = Offset(size.width * 0.4, size.height * 0.825);
    path.moveTo(0, size.height * 0.61);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    Offset secondControlPoint = Offset(size.width * 0.464, size.height * 0.98);
    Offset secondEndPoint = Offset(size.width, size.height * 0.94);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(0, size.height);
    path.moveTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.94);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);

//    top right
    path = Path();
    path.moveTo(0, size.height * 0.05);
    paint.color = _color3;

    firstControlPoint = Offset(size.width * 0.41, size.height * 0.05);
    firstEndPoint = Offset(size.width * 0.54, size.height * 0.15);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    secondControlPoint = Offset(size.width * 0.74, size.height * 0.3);
    secondEndPoint = Offset(size.width, size.height * 0.28);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0);
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.05);

    path.close();
    canvas.drawPath(path, paint);

    path = Path();
    path.moveTo(0, size.height * 0.03);
    paint.color = _color4;

    firstControlPoint = Offset(size.width * 0.4, size.height * 0.06);
    firstEndPoint = Offset(size.width * 0.54, size.height * 0.2);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    secondControlPoint = Offset(size.width * 0.65, size.height * 0.3);
    secondEndPoint = Offset(size.width, size.height * 0.24);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0);
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.03);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
