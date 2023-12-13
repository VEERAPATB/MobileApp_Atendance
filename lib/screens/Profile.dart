import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          Positioned(top: 100, left: 60, child: _buildTop()),
          Positioned(bottom: 130, left: 85, child: _buildBottom()),
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
      child: Row (
        children: [
          Container(
            width: 122,
            height: 123,
            child: Stack(
              children: [
                Positioned(
                  left: 44.98,
                  top: 0.45,
                  child: Transform(
                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.52),
                    child: Container(
                      width: 89.95,
                      height: 89.95,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF9BA0A4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 74.41,
                  top: 0,
                  child: Transform(
                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.99),
                    child: Container(
                      width: 88.26,
                      height: 88.26,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF454545),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/Profile_image.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 183,
            height: 124,
            child: Stack(
              children: [
                Positioned(
                  left: 2,
                  top: 63.51,
                  child: SizedBox(
                    width: 162,
                    height: 15.12,
                    child: Text(
                      'Mr.VEERAPAT BUNKWANG',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 2,
                  top: 86.70,
                  child: SizedBox(
                    width: 150,
                    height: 13.11,
                    child: Text(
                      'นาย วีรภัทร  บุญกว้าง',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 11,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  left: 2,
                  top: 30.24,
                  child: SizedBox(
                    width: 87,
                    height: 17.14,
                    child: Text(
                      '1630902094',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      
    );
    
  }
  Widget _buildBottom(){
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Information Account",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 20),
        _buildGreyText("School"),
        const SizedBox(height: 5),
        _buildGreyText("Engineering"),
        const SizedBox(height: 5),
        _buildGreyText("วิศวกรรมศาสตร์"),
        const SizedBox(height: 15),
        _buildGreyText("Department"),
        const SizedBox(height: 5),
        _buildGreyText("Computer and Robotics Engineering"),
        const SizedBox(height: 5),
        _buildGreyText("วิศวกรรมคอมพิวเตอร์และหุ่นยนต์"),
        const SizedBox(height: 15),
        _buildGreyText("GPA"),
        const SizedBox(height: 5),
        _buildGreyText("3.86"),
        const SizedBox(height: 15),
        _buildGreyText("Student Account"),
        const SizedBox(height: 5),
        _buildGreyText("veerapat.bunk"),
        const SizedBox(height: 15),
        _buildGreyText("Email Address"),
        const SizedBox(height: 5),
        _buildGreyText("veerapat.bunk@bumail.net"),
        const SizedBox(height: 25),
        Column(
          children: [
            ElevatedButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, '/login/home');
              }, 
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(350, 40),
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
 