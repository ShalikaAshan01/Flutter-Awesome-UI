import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/raised_gradient_button.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Login5 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Login5State();

}

class _Login5State extends State<Login5>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 250,
            child: RotatedBox(
              quarterTurns: 2,
              child: WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [Colors.teal, Colors.teal.shade200],
                    [Colors.green.shade200, Colors.lightGreen],
                  ],
                  durations: [19440, 10800],
                  heightPercentages: [0.20, 0.35],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.topRight,
                ),
                waveAmplitude: 0,
                size: Size(
                  double.infinity,
                  double.infinity,
                ),
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*0.75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 55,
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
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedGradientButton(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [Colors.teal,Colors.green, Colors.lightGreen]),
                              borderRadius: BorderRadius.all(Radius.circular(80)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[500],
                                  offset: Offset(0.0, 1.5),
                                  blurRadius: 1.5,
                                ),
                              ]),
                          onPressed: () {

                          }),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        "Don\'t have an Account? Signup here",style: TextStyle(color: Colors.teal),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}