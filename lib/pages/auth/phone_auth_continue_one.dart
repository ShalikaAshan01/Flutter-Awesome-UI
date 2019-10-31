import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/raised_gradient_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhoneAuthContinueOne extends StatefulWidget {
  final String number;

  PhoneAuthContinueOne({Key key, this.number}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PhoneAuthState(number);
}

class _PhoneAuthState extends State<PhoneAuthContinueOne> {
  Color _bgColor = Color(0xFFF5F5F5);
  Color _color1 = Color(0xFF2682C4);
  Color _color2 = Color(0xFF56C2B5);
  IconData _icon = FontAwesomeIcons.solidCheckCircle;

  FocusNode _focusNode;
  FocusNode _focusNode1;
  FocusNode _focusNode2;
  FocusNode _focusNode3;
  FocusNode _focusNode4;
  FocusNode _focusNode5;

  var _formKey = GlobalKey<FormState>();
  final globalKey = GlobalKey<ScaffoldState>();
  final String number;

  TextEditingController _textEditingController1 = TextEditingController();
  TextEditingController _textEditingController2 = TextEditingController();
  TextEditingController _textEditingController3 = TextEditingController();
  TextEditingController _textEditingController4 = TextEditingController();
  TextEditingController _textEditingController5 = TextEditingController();
  TextEditingController _textEditingController6 = TextEditingController();

  _PhoneAuthState(this.number);


  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode1 = FocusNode();
    _focusNode2 = FocusNode();
    _focusNode3 = FocusNode();
    _focusNode4 = FocusNode();
    _focusNode5 = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    _focusNode4.dispose();
    _focusNode5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: globalKey,
      backgroundColor: _bgColor,
      body: Container(
        width: size.width,
        height: size.height,
        child: CustomPaint(
            painter: _CustomBackground(),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10, size.height * 0.2, 10, 0),
                    child: Icon(
                      _icon,
                      size: 60,
                      color: _color2,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Text(
                      "Enter Code",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "We have sent a text message with a 6 digit verification code to $number.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 45, 10, 45),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: _textEditingController1,
                                      autofocus: true,
                                      focusNode: _focusNode,
                                      maxLength: 1,
                                      decoration: InputDecoration(
                                        counter: Offstage(),
                                        hintText: "1",
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: Colors.black87)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide:
                                                BorderSide(color: Colors.teal)),
                                      ),
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.none,
                                      onChanged: (value) {
                                        if (value.length == 1)
                                          FocusScope.of(context)
                                              .requestFocus(_focusNode1);
                                      },
                                      style:
                                          TextStyle(height: 0.5, fontSize: 14),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      controller: _textEditingController2,
                                      focusNode: _focusNode1,
                                      maxLength: 1,
                                      decoration: InputDecoration(
                                        counter: Offstage(),
                                        hintText: "2",
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: Colors.black87)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide:
                                                BorderSide(color: Colors.teal)),
                                      ),
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.none,
                                      onChanged: (value) {
                                        if (value.length == 1)
                                          FocusScope.of(context)
                                              .requestFocus(_focusNode2);
                                        if (value.length == 0) {
                                          FocusScope.of(context)
                                              .requestFocus(_focusNode);
                                        }
                                      },
                                      style:
                                          TextStyle(height: 0.5, fontSize: 14),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      maxLength: 1,
                                      controller: _textEditingController3,
                                      focusNode: _focusNode2,
                                      decoration: InputDecoration(
                                        counter: Offstage(),
                                        hintText: "3",
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: Colors.black87)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide:
                                                BorderSide(color: Colors.teal)),
                                      ),
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.none,
                                      onChanged: (value) {
                                        if (value.length == 1)
                                          FocusScope.of(context)
                                              .requestFocus(_focusNode3);
                                        if (value.length == 0) {
                                          FocusScope.of(context)
                                              .requestFocus(_focusNode1);
                                        }
                                      },
                                      style:
                                          TextStyle(height: 0.5, fontSize: 14),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      maxLength: 1,
                                      controller: _textEditingController4,
                                      focusNode: _focusNode3,
                                      decoration: InputDecoration(
                                        counter: Offstage(),
                                        hintText: "4",
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: Colors.black87)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide:
                                                BorderSide(color: Colors.teal)),
                                      ),
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.none,
                                      onChanged: (value) {
                                        if (value.length == 1)
                                          FocusScope.of(context)
                                              .requestFocus(_focusNode4);
                                        if (value.length == 0) {
                                          FocusScope.of(context)
                                              .requestFocus(_focusNode2);
                                        }
                                      },
                                      style:
                                          TextStyle(height: 0.5, fontSize: 14),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      maxLength: 1,
                                      controller: _textEditingController5,
                                      focusNode: _focusNode4,
                                      decoration: InputDecoration(
                                        counter: Offstage(),
                                        hintText: "5",
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: Colors.black87)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide:
                                                BorderSide(color: Colors.teal)),
                                      ),
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.none,
                                      onChanged: (value) {
                                        if (value.length == 1)
                                          FocusScope.of(context)
                                              .requestFocus(_focusNode5);
                                        if (value.length == 0) {
                                          FocusScope.of(context)
                                              .requestFocus(_focusNode3);
                                        }
                                      },
                                      style:
                                          TextStyle(height: 0.5, fontSize: 14),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.all(8),
                                    child: TextFormField(
                                      controller: _textEditingController6,
                                      focusNode: _focusNode5,
                                      decoration: InputDecoration(
                                        counter: Offstage(),
                                        hintText: "6",
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: Colors.black87)),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide:
                                                BorderSide(color: Colors.teal)),
                                      ),
                                      keyboardType: TextInputType.number,
                                      maxLength: 1,
                                      textInputAction: TextInputAction.none,
                                      onChanged: (value) {
                                        if (value.length == 0) {
                                          FocusScope.of(context)
                                              .requestFocus(_focusNode4);
                                        }
                                      },
                                      style:
                                          TextStyle(height: 0.5, fontSize: 14),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            RaisedGradientButton(
                              child: Text(
                                'Verify',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700),
                              ),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [_color1, _color2]),
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[500],
                                      offset: Offset(0.0, 1.5),
                                      blurRadius: 1.5,
                                    ),
                                  ]),
                              onPressed: () {
                                setState(() {
                                  String value = _textEditingController1.text;
                                  value += _textEditingController2.text;
                                  value += _textEditingController3.text;
                                  value += _textEditingController4.text;
                                  value += _textEditingController5.text;
                                  value += _textEditingController6.text;
                                  final snackBar =
                                  SnackBar(content: Text('You entered $value'));
                                  globalKey.currentState.showSnackBar(snackBar);
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

class _CustomBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    Offset firstControlPoint, firstEndPoint;

    paint.color = Colors.white;

    //top left
    path.moveTo(0, size.height * 0.13);
    firstControlPoint = Offset(size.width * 0.1, size.height * 0.09);
    firstEndPoint = Offset(size.width * 0.2, 0);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(0, 0);
    path.moveTo(0, 0);
    path.lineTo(firstEndPoint.dx, firstEndPoint.dy);

    path.close();
    canvas.drawPath(path, paint);

    //bottom left
    path = Path();
    path.moveTo(0, size.height * 0.84);

    firstControlPoint = Offset(size.width * 0.3, size.height * 0.86);
    firstEndPoint = Offset(size.width * 0.3, size.height);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
