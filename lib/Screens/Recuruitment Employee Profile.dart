import 'package:exabistro_hr/Screens/EmployePerformence.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'EmployeeAttendence.dart';





Color c = const Color(0xff152938);
Color c1 = const Color(0xff426c23);
Color ye =const Color(0xffffcc00);



class RecruitmentEmployeeProfile extends StatefulWidget {
  const RecruitmentEmployeeProfile({Key? key,}) : super(key: key);


  @override
  State<RecruitmentEmployeeProfile> createState() => _RecruitmentEmployeeProfileState();
}

class _RecruitmentEmployeeProfileState extends State<RecruitmentEmployeeProfile> {
  GlobalKey<ScaffoldState> _globelKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _globelKey,
      drawer: Drawer(
        child: ListView(
          children: [

          ],
        ),
      ),

      body:   Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            //bg
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  image:DecorationImage(
                    image: AssetImage('Images/bg.png'),
                    fit:  BoxFit.fill,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(23.0),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // InkWell(
                        //   onTap: (){
                        //     _globelKey.currentState?.openDrawer();
                        //   },
                        //   child: Align(
                        //     alignment: Alignment.topLeft,
                        //     child: Icon(Icons.menu_outlined,size: 40,color: Colors.white,),
                        //
                        //   ),
                        // ),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: FaIcon(FontAwesomeIcons.chevronLeft,size: 22,color: Colors.white,),

                          ),
                        ),
                        // InkWell(
                        //   onTap: (){
                        //
                        //   },
                        //   child: Align(
                        //     alignment: Alignment.topLeft,
                        //     child: FaIcon(FontAwesomeIcons.penToSquare,size: 22,color: Colors.white,),
                        //
                        //   ),
                        // ),
                      ],
                    ),

                    SizedBox(
                      height:  MediaQuery.of(context).size.height * 0.1+50,
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        // decoration: BoxDecoration(
                        //   color: Colors.red
                        // ),
                        child: Column(
                          children: [
                            //percentage
                            Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  //mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Text('Employees',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    Text('@designer',
                                      style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 20,

                                      ),),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(18.0),
                                                    )
                                                )
                                            ),
                                            onPressed: (){
                                             // Navigator.push(context, MaterialPageRoute(builder: (context)=>EmployeePerformance()));
                                            }, child: Text("Accept",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(18.0),
                                                    )
                                                )
                                            ),
                                            onPressed: (){
                                              //Navigator.push(context, MaterialPageRoute(builder: (context)=>EmployeeAttendence()));
                                            }, child: Text("Reject",style: TextStyle(color: Colors.white),))
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                            //Listview of employee
                            Expanded(
                              child: SingleChildScrollView(
                                child: Container(
                                    child: Column(
                                      children: [
                                        Card(
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: ListTile(
                                            // leading: const Icon(Icons.person),
                                            // trailing: const Text(
                                            //   "28%",
                                            //   style: TextStyle(color: Colors.green, fontSize: 15,fontWeight: FontWeight.bold),
                                            // ),
                                            title: Text("Father Name",
                                                style: TextStyle(color: Colors.black26, fontSize: 15,fontWeight: FontWeight.bold)
                                            ),
                                            subtitle: Text("Employee ",
                                                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        ),
                                        Card(
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: ListTile(
                                            // leading: const Icon(Icons.person),
                                            // trailing: const Text(
                                            //   "28%",
                                            //   style: TextStyle(color: Colors.green, fontSize: 15,fontWeight: FontWeight.bold),
                                            // ),
                                            title: Text("Gender",
                                                style: TextStyle(color: Colors.black26, fontSize: 15,fontWeight: FontWeight.bold)
                                            ),
                                            subtitle: Text("Male ",
                                                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        ),
                                        Card(
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: ListTile(
                                            // leading: const Icon(Icons.person),
                                            // trailing: const Text(
                                            //   "28%",
                                            //   style: TextStyle(color: Colors.green, fontSize: 15,fontWeight: FontWeight.bold),
                                            // ),
                                            title: Text("Salary",
                                                style: TextStyle(color: Colors.black26, fontSize: 15,fontWeight: FontWeight.bold)
                                            ),
                                            subtitle: Text("30,000 ",
                                                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        ),
                                        Card(
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: ListTile(
                                            // leading: const Icon(Icons.person),
                                            // trailing: const Text(
                                            //   "28%",
                                            //   style: TextStyle(color: Colors.green, fontSize: 15,fontWeight: FontWeight.bold),
                                            // ),
                                            title: Text("email",
                                                style: TextStyle(color: Colors.black26, fontSize: 15,fontWeight: FontWeight.bold)
                                            ),
                                            subtitle: Text("usama@gmail.com ",
                                                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        ),
                                        Card(
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: ListTile(
                                            // leading: const Icon(Icons.person),
                                            // trailing: const Text(
                                            //   "28%",
                                            //   style: TextStyle(color: Colors.green, fontSize: 15,fontWeight: FontWeight.bold),
                                            // ),
                                            title: Text("Phone No",
                                                style: TextStyle(color: Colors.black26, fontSize: 15,fontWeight: FontWeight.bold)
                                            ),
                                            subtitle: Text("03020101306 ",
                                                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 50,
                                          width: 200,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    backgroundColor: MaterialStateProperty.all<Color>(ye),
                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                        RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(18.0),
                                                        )
                                                    )
                                                ),onPressed: (){}, child: Center(child: Text("Add Employee",style: TextStyle(fontSize: 20),))),
                                          ),)
                                      ],
                                    )

                                ),
                              ),
                            ),

                          ],
                        )
                    ),

                  ],
                ),
              ),
            ),

            Positioned(
              top:  MediaQuery.of(context).size.height * 0.1+50,
              left:  MediaQuery.of(context).size.width / 2-65,
              child: Container(
                height: 130,width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(65),
                    image:DecorationImage(
                      image: AssetImage('Images/edward.jfif'),
                      fit:  BoxFit.fill,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
