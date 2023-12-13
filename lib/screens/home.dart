import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Welcome, Veerapat \nSelect an Classes",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing:20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    SizedBox(
                      width:180.0,
                      height: 180.0,
                      child: Card(
                        color: Colors.black,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/images/CE481.png",width: 70.0,),                      
                              const SizedBox(height: 15),
                              TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/login/attendance/CE481');
                                  }, 
                                  child: const Text(
                                    '66_1_CE481_436A',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0
                                ),)
                              ),                                          
                            ],
                            ),                         
                          ),       
                        ),
                      ),
                    ),
                    SizedBox(
                      width:180.0,
                      height: 180.0,
                      child: Card(
                        color: const Color.fromARGB(255,21, 21, 21),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/images/CE323_1.png",width: 70.0,),
                              const SizedBox(
                                height: 10.0,
                              ),   
                              const SizedBox(height: 5),
                              TextButton(
                                  onPressed: (){}, 
                                  child: const Text(
                                    '65_2_CE323_336A',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0
                                ),)
                              ),                           
                            ],
                            ),
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      width:180.0,
                      height: 180.0,
                      child: Card(
                        color: const Color.fromARGB(255,21, 21, 21),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/images/CE327.png",width: 70.0,),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextButton(
                                  onPressed: (){}, 
                                  child: const Text(
                                    '66_1_CE327_436A',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0
                                ),)
                              ),     
                            ],
                            ),
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      width:180.0,
                      height: 180.0,
                      child: Card(
                        color: const Color.fromARGB(255,21, 21, 21),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/images/CE437.png",width: 70.0,),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextButton(
                                  onPressed: (){}, 
                                  child: const Text(
                                    '66_1_CE437_436A',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0
                                ),)
                              ),                             
                            ],
                            ),
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      width:180.0,
                      height: 180.0,
                      child: Card(
                        color: const Color.fromARGB(255,21, 21, 21),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/images/CE454.png",width: 70.0,),
                              const SizedBox(
                                height: 10.0,
                              ),  
                              TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/login/attendance/CE454');
                                  }, 
                                  child: const Text(
                                    '66_1_CE454_436A',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0
                                ),)
                              ),                        
                            ],
                            ),
                          )
                        ),
                      ),
                    ),
                    SizedBox(
                      width:180.0,
                      height: 180.0,
                      child: Card(
                        color: const Color.fromARGB(255,21, 21, 21),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child:Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset("assets/images/EN003.png",width: 70.0,),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextButton(
                                  onPressed: (){}, 
                                  child: const Text(
                                    '64_3_EN003_301G',
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0
                                ),)
                              ),                          
                            ],
                            ),
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ),
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
    );
  }
}