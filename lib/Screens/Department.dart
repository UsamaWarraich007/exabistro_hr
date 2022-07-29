import 'package:exabistro_hr/Screens/EmployeeDetail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'AddDepartment.dart';
import 'DepartmentEmployee.dart';

class Department extends StatefulWidget {
  const Department({Key? key}) : super(key: key);

  @override
  _DepartmentState createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate =  DateTime.now();
  }
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
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child:Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: FaIcon(FontAwesomeIcons.chevronLeft,size: 22,color: Colors.white,),

                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: (){

                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddDepartment()));

                              },
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.add_box_rounded,size: 40,color: Colors.white,),

                              ),
                            ),
                          ),

                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     // InkWell(
                          //     //   onTap: (){
                          //     //     _globelKey.currentState?.openDrawer();
                          //     //   },
                          //     //   child: Align(
                          //     //       alignment: Alignment.topLeft,
                          //     //       child: FaIcon(FontAwesomeIcons.alignLeft,size: 22,color: Colors.white,)
                          //     //
                          //     //   ),
                          //     // ),
                          //     InkWell(
                          //       onTap: (){
                          //
                          //       },
                          //       child: Align(
                          //         alignment: Alignment.topLeft,
                          //         child: Icon(Icons.add_box_rounded,size: 40,color: Colors.white,),
                          //
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('Exabistro',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,

                              ),),
                          ),
                          SizedBox(height: 5,),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('Department',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),

                        ],
                      ),
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
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [

                                    Column(
                                      crossAxisAlignment:CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Department',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        Text('10',
                                          style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                          ),),

                                      ],
                                    ),
                                    Container(
                                      height: 120,
                                      width: 170,
                                      // height: MediaQuery.of(context).size.height * 0.2,
                                      decoration: BoxDecoration(
                                          image:DecorationImage(
                                            image: AssetImage('Images/Employee.png'),
                                            fit:  BoxFit.fill,
                                          )),
                                    )

                                  ],
                                ),
                              ),
                            ),
                            //Listview of employee
                            Expanded(
                              child: Container(
                                child: ListView.builder(
                                    itemCount: 10,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Card(
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DepartmentEmployee()));
                                          },
                                          child: ListTile(
                                              leading: const Icon(Icons.contacts_outlined),
                                              trailing: const Text(
                                                "25",
                                                style: TextStyle(color: Colors.green, fontSize: 15,fontWeight: FontWeight.bold),
                                              ),
                                              title: Text("Department Name",
                                                  style: TextStyle( fontSize: 15,fontWeight: FontWeight.bold)
                                              )),
                                        ),
                                      );
                                    }),
                              ),
                            ),

                          ],
                        )
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
