import 'package:flutter/material.dart';

class Show_Detail extends StatefulWidget {
  const Show_Detail({super.key});

  @override
  State<Show_Detail> createState() => _Show_DetailState();
}

class _Show_DetailState extends State<Show_Detail> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [    
          Positioned(top: 0, left: 0, child: _buildTop()),
          Positioned(bottom: 80, left: 130, child: _buildBottom()),
        ]),
        
        bottomNavigationBar: NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: 0,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            NavigationDestination(icon: Icon(Icons.access_time), label: "Attendance"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Setting",),
          ],
        ),
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.menu, color: Colors.black,size: 32.0,),
                  Icon(Icons.notifications, color: Colors.black, size: 32.0,),        
                ],
              ),
            ),
          const SizedBox(height: 35),
          Image.asset(
            'assets/images/Logo_big.png',
            height: 125,
            width: 175,
          ),
          const SizedBox(height: 15),   
          Positioned(top: 0, child: _TopicText()),
        ],    
      ),   
    ); 
  }
  Widget _TopicText(){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _Topictext("Success Check-In Complete"),
          _text("07 Oct. 2566 - 11:26"),
          _text("รหัสอ้างอิง 202312078DJamO68ZgYGTH"),
        ],
    );
  }
  Widget _text(String text){
    return Text(
      text,
      style: const TextStyle(
        color: Colors.grey,
      ),
    );
  }
  Widget _Topictext(String text){
    return Text(
      text,
      style: const TextStyle(
        color: Colors.greenAccent,
         fontSize: 17
      ),
    );
  }

  Widget _buildBottom(){
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Information Attendance",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 15),
        _buildGreyText("CE454 / 436A"),
        const SizedBox(height: 5),
        _buildGreyText("Mobile Application Development (LECT)"),
        const SizedBox(height: 5),
        _buildGreyText("Room B4-305 / No. 24"),
        const SizedBox(height: 15),
        _buildGreyText("Veerapat Bunkwang"),
        const SizedBox(height: 5),
        _buildGreyText("1630902094"),
        const SizedBox(height: 15),
        _buildGreyText("Week: 6"),
        const SizedBox(height: 15),
        _buildGreyText("Check In"),
        const SizedBox(height: 5),
        _buildGreyText(" 8:26"),
        const SizedBox(height: 15),
        _buildGreyText("Check Out"),
        const SizedBox(height: 5),
        _buildGreyText(" Haven't checked out yet."),
        const SizedBox(height: 40),
        Row(
          children: [
            ElevatedButton.icon(
              onPressed: (){
                 Navigator.pushNamed(context, '/login/home');
              }, 
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(270, 40),
                      side: const BorderSide(color: Colors.black),
                    ),
              icon: const Icon(
                Icons.home_filled,
                color: Colors.black,
                size: 24.0,
              ),
              label: const Text(
                "Home",
                style: TextStyle(
                      color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }
}