import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/submit_page.dart';
import 'package:flutter_application_1/screens/show_detail.dart';
class Submit extends StatefulWidget {
  const Submit({super.key});

  @override
  State<Submit> createState() => _SubmitState();
}

class _SubmitState extends State<Submit> {
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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Stack(children: [
          Positioned(top: 0, left: 0, child: _buildTop()),
          Positioned(bottom: 115, left: 65, child: _buildBottom()),
        ]),
        
        bottomNavigationBar: NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: 0,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            NavigationDestination(icon: Icon(Icons.access_time), label: "Attendance"),
            NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),
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
          const SizedBox(height: 10),
          Image.asset(
            'assets/images/Logo_big.png',
            height: 150,
            width: 150,
          ),
          const SizedBox(height: 10),   
          Positioned(top: 0, child: _TopicText()),
        ],    
      ),   
    ); 
  }
  Widget _TopicText(){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          _Topic("Attendance "),
          _text("Detailed information on your chosen subject, and you can"),
          _text("check in from the button below."),
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
  Widget _Topic(String text){
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
         fontSize: 24
      ),
    );
  }

  Widget _buildBottom(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
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
        _buildGreyText("Week: 6"),
        const SizedBox(height: 5),
        _text("07 Oct. 2566"),
        const SizedBox(height: 15),
        _buildGreyText("Instructor's name"),
        const SizedBox(height: 5),
        _buildGreyText("Mr. Makawat Patanapanich"),
        const SizedBox(height: 5),
        _buildGreyText("Mr. Raksit Panwong"),
        const SizedBox(height: 40),

        Row(    
          children: [         
              ElevatedButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, '/login/attendance/success');
                //showDialog(
                  //context: context, 
                  //builder: (context) => const CustomDialogWidget()
                  //);
              }, 
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(380, 50)
              ),
              icon: const Icon(
                Icons.access_time_rounded,
                size: 32.0,
              ),
              label: const Text("Check-In"),
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
class CustomDialogWidget extends StatelessWidget{
  const CustomDialogWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Dialog(
      child: Container(
        decoration:  BoxDecoration(
          color: const Color(0xff2A303E),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildalert()
          ],
        ),
      ),
    );
  }

  Widget _buildalert(){
    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.error_outline_outlined, color: Colors.red,size: 88.0,),      
                ],
              ),
            ),
            const Text(
              "You are about to Check In your chosen subject.",
              style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Text(
              "You will not be able to check in again. Are you sure you want to edit this record?",
              style: TextStyle(
              color: Colors.white, fontSize: 10, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      fixedSize: const Size(130, 35)
                    ),
                  onPressed: (){
                    //Navigator.pushNamed(context, '/login/attendance');
                  }, 
                  icon: const Icon(
                    Icons.cancel_outlined,
                    color: Colors.black,
                    size: 24.0,
                  ),
                  label: const Text(
                    "Cancel",
                    style: TextStyle(
                    color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),                 
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      fixedSize: const Size(140, 35)
                    ),
                  
                  onPressed: (){
                    // Navigator.push(context as BuildContext, MaterialPageRoute(builder:  (context) =>) Show_Detail());
                  }, 
                  icon: const Icon(
                    Icons.subdirectory_arrow_right_rounded,
                    color: Colors.black,
                    size: 24.0,
                  ),
                  label: const Text(
                    "Approve",
                    style: TextStyle(
                      color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),                 
                  ),
              ],           
            ),
            const SizedBox(height: 30),         
        ],    
      ),   
    );  
  }
}