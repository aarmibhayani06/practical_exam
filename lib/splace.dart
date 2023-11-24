import 'package:flutter/material.dart';
import 'package:practical_exam/Clickbutton.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10),() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => click()));
    }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151515),
      body: Stack(
        children:[ Container(
          height: double.infinity,
          width: double.infinity,
          decoration:BoxDecoration(
         gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.redAccent,
              Colors.yellow,
              Colors.orangeAccent
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
          ),
        ),
          child: Center(child:Image.asset('assets/image.png',height: 200,width: 200,)),
      ),
        ]
      )
    );
  }
}
