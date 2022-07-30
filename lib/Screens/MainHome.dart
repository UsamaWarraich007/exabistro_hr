import 'package:exabistro_hr/Screens/Attendence.dart';
import 'package:exabistro_hr/Screens/Employees.dart';
import 'package:exabistro_hr/Screens/Leave.dart';
import 'package:exabistro_hr/Screens/Payroll.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Department.dart';
import 'Recruitment.dart';
import 'contracts.dart';
import 'expense_list.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
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
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: const Icon(Icons.menu_outlined),
      //     ),
      //   backgroundColor: Color(0xff152938),
      // ),
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
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
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child:Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),

                          // InkWell(
                          //   onTap: (){
                          //     _globelKey.currentState?.openDrawer();
                          //   },
                          //   child: Align(
                          //     alignment: Alignment.topLeft,
                          //     child:FaIcon(FontAwesomeIcons.alignLeft,size: 22,color: Colors.white,)
                          //
                          //   ),
                          // ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('Usama',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,

                              ),),
                          ),
                          SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('My Dashboard',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          // SizedBox(
                          //   height: 30,
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      // decoration: BoxDecoration(
                      //   color: Colors.red
                      // ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex:1,
                                  child: InkWell(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Employees()));
                                    },
                                    child: Card(
                                      elevation: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 25,top: 25),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Text('Employee',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            Text('289',
                                              style: TextStyle(
                                                color: Colors.black12,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),

                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Icon(Icons.person,
                                                size: 100,
                                                color: Colors.black12,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Payroll()));
                                    },
                                    child: Card(
                                      elevation: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 25,top: 25),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Text('Payroll',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            Text('289',
                                              style: TextStyle(
                                                color: Colors.black12,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),

                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Icon(Icons.payment_outlined,
                                                size: 100,
                                                color: Colors.black12,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex:1,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Attendence()));
                                    },
                                    child: Card(
                                      elevation: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 25,top: 25),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Text('Attendence',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            Text('289',
                                              style: TextStyle(
                                                color: Colors.black12,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),

                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Icon(Icons.present_to_all,
                                                size: 100,
                                                color: Colors.black12,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>leave()));
                                    },
                                    child: Card(
                                      elevation: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 25,top: 25),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Text('Leave',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            Text('289',
                                              style: TextStyle(
                                                color: Colors.black12,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),

                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Icon(Icons.pending_actions,
                                                size: 100,
                                                color: Colors.black12,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex:1,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Department()));
                                    },
                                    child: Card(
                                      elevation: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 25,top: 25),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Text('Department',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            Text('25',
                                              style: TextStyle(
                                                color: Colors.black12,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),

                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Icon(Icons.contacts_outlined,
                                                size: 100,
                                                color: Colors.black12,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Contracts()));
                                    },
                                    child: Card(
                                      elevation: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 25,top: 25),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Text('Contracts',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            Text('289',
                                              style: TextStyle(
                                                color: Colors.black12,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),

                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Icon(Icons.pending_actions,
                                                size: 100,
                                                color: Colors.black12,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex:1,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Recruitment()));
                                    },
                                    child: Card(
                                      elevation: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 25,top: 25),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Text('Recruitment',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            Text('25',
                                              style: TextStyle(
                                                color: Colors.black12,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),

                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Icon(Icons.receipt,
                                                size: 100,
                                                color: Colors.black12,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Expense_List()));
                                    },
                                    child: Card(
                                      elevation: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 25,top: 25),
                                        child: Column(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Text('Expanses',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            Text('289',
                                              style: TextStyle(
                                                color: Colors.black12,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold,
                                              ),),

                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Icon(Icons.monetization_on,
                                                size: 100,
                                                color: Colors.black12,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
