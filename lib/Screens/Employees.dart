import 'package:exabistro_hr/Screens/EmployeeDetail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Employees extends StatefulWidget {
  const Employees({Key? key}) : super(key: key);

  @override
  _EmployeesState createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
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
                            child: Text('Employees',
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
                                        Text('Employees',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        Text('250',
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
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>EmployeeDetail()));
                                          },
                                          child: ListTile(
                                              leading: const Icon(Icons.person),
                                              trailing: const Text(
                                                "28%",
                                                style: TextStyle(color: Colors.green, fontSize: 15,fontWeight: FontWeight.bold),
                                              ),
                                              title: Text("Usama",
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
