import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Auth5 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Auth5State();
}

class _Auth5State extends State<Auth5>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
        height: size.height,
        width: size.width,
        child: CustomPaint(
          painter: _BackGroundPainter(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: size.width * 0.5,left: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Welcome",style: TextStyle(
                        color: Colors.white70,
                        fontSize: 30,
                        fontWeight: FontWeight.w800
                    ),),
                    Text("Back",style: TextStyle(
                        color: Colors.white70,
                        fontSize: 30,
                        fontWeight: FontWeight.w800
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BackGroundPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Color _color1 = Color(0xFFF69935);
    Color _color2 = Color(0xFF4D4F64);
    Color _color3 = Color(0xFF58C1E7);

    Path path = Path();
    Paint paint = Paint();

    path.moveTo(0, 0);

    path.quadraticBezierTo(size.width*0.5, size.height * 0.45, size.width, size.height * 0.5);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = _color3;
    path.close();
    canvas.drawPath(path, paint);

    path = Path();
    path.moveTo(0, size.height * 0.4);
    path.quadraticBezierTo(size.width*0.6, size.height * 0.6, size.width*0.6, size.height*0.25);
    path.quadraticBezierTo(size.width*0.6, size.height*0.12, size.width, size.height*0.1);

    path.lineTo(size.width, 0);
    paint.color = _color2;
    path.close();
    canvas.drawPath(path, paint);

    path = Path();
    paint.color = _color2;
    path.lineTo(size.width*1.0005, 0);
    path.lineTo(0, size.height*0.4002);
    path.close();
    canvas.drawPath(path, paint);


    path = Path();
    path.moveTo(0, size.height*0.2);
    path.quadraticBezierTo(size.width * 0.135, size.height * 0.178, size.width * 0.281, size.height*0.0889);
    path.quadraticBezierTo(size.width * 0.4, size.height * 0.0113, size.width*0.8, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.width*0.8);
    path.close();
    paint.color = _color1;
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}