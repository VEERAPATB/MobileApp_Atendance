import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/sign_in.dart';
class LaunchScreen extends StatefulWidget {
  const LaunchScreen({super.key});

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetologin();
  }
  _navigatetologin()async{
    await Future.delayed(const Duration(seconds: 3), (){} );
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
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
          Positioned(top: 320, child: _buildTop()),
        ]),
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/Logo_big.png',
            height: 200,
            width: 200,
          )
        ],
      ),
    );
  }
}
 