import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';
class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;

  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }
  _navigatetohome()async{
    await Future.delayed(const Duration(seconds: 3), (){} );
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Dashboard()));
  }
  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Stack(children: [
          Positioned(top: 150, left: 45, child: _buildTop()),
        ]),
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              children: [
                const Text(
                'Welcome To Home',
                style: TextStyle(
                color: Color(0xFF252525),
                fontSize: 24,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                height: 0,
                ),
              ),
              Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/Welcome.png',
                        height: 350,
                        width: 400,     
                      )
                    ],
                  ),
                ),
                 const SizedBox(height: 0),
              const SizedBox(
                width: 310,
                child: Text(
                  'Currently The Next Part of Home Activity & Fragementation is under development. The upcoming Part 2 is coming Soon........',
                  style: TextStyle(
                    color: Color(0xFF252525),
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              )
            ],  
            ),
          ),
          

        ],
      ),
    );
  }
}
 