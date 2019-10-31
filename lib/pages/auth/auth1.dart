import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/raised_gradient_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Auth1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Auth1State();
}

class _Auth1State extends State<Auth1> {
  Color _bgColor = Color(0xFFF5F5F5);
  Color _color1 = Color(0xFF2682C4);
  Color _color2 = Color(0xFF56C2B5);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Shader linearGradient = LinearGradient(
      colors: <Color>[_color1,_color2],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    return Scaffold(
      backgroundColor: _bgColor,
      body: Container(
        width: size.width,
        height: size.height,
        child: CustomPaint(
            painter: _BackgroundPainter(),
            child: Column(
              children: <Widget>[
                Spacer(),
                Container(
                  child: Text(
                    "Flutter Awesome UI",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        foreground: Paint()..shader = linearGradient),
                  ),
                ),
                Spacer(),
                Container(
                  padding: const EdgeInsets.fromLTRB(25.0, 0, 25, 0),
                  width: double.maxFinite,
                  child: RaisedButton.icon(
                    color: Color(0xFF4267B2),
                    onPressed: () {},
                    elevation: 3,
                    icon: Icon(FontAwesomeIcons.facebookF,color: Colors.white,),
                    label: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Text(
                        'FACEBOOK',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: RaisedGradientButton(
                    child: Text(
                      'Mobile Number',
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
                    onPressed: () {
                      Navigator.pushNamed(context, "/auth/phone/one");
                    },
                  ),
                ),
                Container(
                  child: Text(
                    "Trouble signing in?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black87),
                  ),
                ),
                Spacer(),
                Container(
                  child: Text(
                    "By clicking sign up you agree to the terms and conditions",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.black87),
                  ),
                ),
                Spacer()
              ],
            )),
      ),
    );
  }
}

class _BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    Color _color1 = Color(0xFFFFFFFF);
    Offset firstControlPoint, firstEndPoint;

    //top round
    path.moveTo(0, size.height * 0.24);
    paint.color = _color1;

    firstControlPoint = Offset(size.width * 0.6, size.height * 0.4);
    firstEndPoint = Offset(size.width, size.height * 0.22);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, 0);
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.24);
    path.close();
    canvas.drawPath(path, paint);

    path.moveTo(0, size.height * 0.24);
    paint.color = _color1;

    firstControlPoint = Offset(size.width * 0.6, size.height * 0.4);
    firstEndPoint = Offset(size.width, size.height * 0.22);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, 0);
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.24);
    path.close();
    canvas.drawPath(path, paint);

    path.moveTo(0, size.height * 0.24);
    paint.color = _color1;

    firstControlPoint = Offset(size.width * 0.6, size.height * 0.4);
    firstEndPoint = Offset(size.width, size.height * 0.22);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, 0);
    path.moveTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.24);
    path.close();

    canvas.drawPath(path, paint);

    //bottom left
    path = Path();
    path.moveTo(0, size.height * 0.84);
    paint.color = _color1;

    firstControlPoint = Offset(size.width * 0.3, size.height * 0.86);
    firstEndPoint = Offset(size.width * 0.3, size.height);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);

    //center right
    path = Path();
    path.moveTo(size.width, size.height * 0.44);
    paint.color = _color1;

    firstControlPoint = Offset(size.width * 0.85, size.height * 0.56);
    firstEndPoint = Offset(size.width, size.height * 0.64);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
