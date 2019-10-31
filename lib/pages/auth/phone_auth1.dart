import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/auth/phone_auth_continue_one.dart';
import 'package:flutter_ui/widgets/raised_gradient_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhoneAuth1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _PhoneAuth1State();
}

class _PhoneAuth1State extends State<PhoneAuth1>{

  Color _bgColor = Color(0xFFF5F5F5);
  Color _color1 = Color(0xFF2682C4);
  Color _color2 = Color(0xFF56C2B5);
  TextEditingController _textEditingController = TextEditingController();
  Country _country;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: _bgColor,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: size.width,
        height: size.height,
        child: CustomPaint(
          painter: _CustomBackground(),
          child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10,size.height*0.2,10,0),
                child: Icon(
                    FontAwesomeIcons.idCard,
                    size: 60,
                    color: _color2,
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  child: Text("Mobile Number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text("Enter your phone number we will send you an OTP code."
                    ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
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
                              Container(
                                child:  CountryPickerDropdown(
                                  initialValue: 'lk',
                                  itemBuilder: _buildDropdownItem,
                                  onValuePicked: (Country country) {
                                    _country = country;
                                  },
                                ),
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "076 1234 597",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(color: Colors.black87)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(color: Colors.teal)
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                    height: 0.5,
                                    fontSize: 14
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 30,),
                          RaisedGradientButton(
                            child: Text(
                              'Continue',
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
                              setState(() {
                                String number = _country != null ?  _country.phoneCode:"94";
                                number += _textEditingController.text;
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>PhoneAuthContinueOne(number: number,)));
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
          ),
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Container(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}(${country.isoCode})"),
      ],
    ),
  );
}
class _CustomBackground extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    Offset firstControlPoint, firstEndPoint;

    paint.color = Colors.white;

    //top left
    path.moveTo(0, size.height*0.22);
    firstControlPoint = Offset(size.width * 0.1, size.height * 0.1);
    firstEndPoint = Offset(size.width*0.12, 0);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(0, 0);
    path.moveTo(0, 0);
    path.lineTo(firstEndPoint.dx, firstEndPoint.dy);

    path.close();
    canvas.drawPath(path, paint);

    //top right
    path = Path();

    path.moveTo(size.width*0.65,0);
    firstControlPoint = Offset(size.width * 0.7, size.height * 0.09);
    firstEndPoint = Offset(size.width, size.height*0.13);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, 0);
    path.moveTo(size.width, 0);
    path.lineTo(firstEndPoint.dx, firstEndPoint.dy);

    path.close();
    canvas.drawPath(path, paint);

    //center left
    path = Path();
    path.moveTo(0, size.height * 0.44);

    firstControlPoint = Offset(size.width * 0.25, size.height * 0.56);
    firstEndPoint = Offset(0, size.height * 0.8);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.close();

    canvas.drawPath(path, paint);

    //bottom right
    path = Path();
    path.moveTo(size.width, size.height * 0.84);

    firstControlPoint = Offset(size.width * 0.7, size.height * 0.86);
    firstEndPoint = Offset(size.width * 0.7, size.height);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}