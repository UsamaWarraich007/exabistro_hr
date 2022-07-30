import 'package:exabistro_hr/Screens/EmployePerformence.dart';
import 'package:exabistro_hr/Screens/update_expense.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'AddExpense.dart';
import 'EmployeeAttendence.dart';

class Expense_List extends StatefulWidget {
  const Expense_List({Key? key}) : super(key: key);

  @override
  State<Expense_List> createState() => _Expense_ListState();
}

class _Expense_ListState extends State<Expense_List> {
  Color ye =const Color(0xffffcc00);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // key: _globelKey,
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

                                Navigator.push(context, MaterialPageRoute(builder: (context)=>addExpense()));

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
                            child: Text('Expenses',
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
                            //Listview of expenses
                            Expanded(
                              child: Container(
                                child: ListView.builder(
                                    itemCount: 10,
                                    itemBuilder: (BuildContext context, int index) {
                                      return Card(
                                          elevation: 8,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius
                                                    .circular(4)),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      child: Column(
                                                        children: [
                                                          SizedBox(height: 5,),
                                                          Padding(
                                                            padding: const EdgeInsets.all(12.0),
                                                            child: Container(
                                                              width: MediaQuery.of(context).size.width*0.8,
                                                              child: Column(
                                                                children: [
                                                                  InkWell(
                                                                    onTap: (){
                                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateExpense()));
                                                                    },
                                                                    child: Align(
                                                                      alignment: Alignment.topRight,
                                                                      child: FaIcon(FontAwesomeIcons.penToSquare,size: 22,color: Colors.black,),

                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Text("Name: ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                                                      Text("Qammer"),
                                                                    ],),
                                                                  SizedBox(height: 8,),
                                                                  Row(
                                                                    children: [
                                                                      Container(

                                                                        child:
                                                                        Text("Status: ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                                                                      ),
                                                                      Container(
                                                                        child:
                                                                        Text("Paid"),
                                                                      ),
                                                                    ],),
                                                                  SizedBox(height: 8,),
                                                                  Row(
                                                                    children: [
                                                                      Container(
                                                                        child:
                                                                        Text("Paid By: ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                                                                      ),
                                                                      Container(
                                                                        child:
                                                                        Text("Ali"),
                                                                      ),
                                                                    ],),
                                                                  SizedBox(height: 8,),
                                                                  Row(
                                                                    children: [
                                                                      Text("Amount: ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                                                                      Text("1200"),
                                                                    ],),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
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
      Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("Images/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.20,
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

                                Navigator.push(context, MaterialPageRoute(builder: (context)=>addExpense()));

                              },
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Icon(Icons.add_box_rounded,size: 40,color: Colors.white,),

                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Expense list',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 34,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // decoration: BoxDecoration(
                        //   color: Colors.red
                        // ),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Card(
                                elevation: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius
                                          .circular(4)),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            child: Column(
                                              children: [
                                                SizedBox(height: 5,),
                                                Padding(
                                                  padding: const EdgeInsets.all(12.0),
                                                  child: Container(
                                                      width: MediaQuery.of(context).size.width*0.87,
                                                    child: Column(
                                                      children: [
                                                        InkWell(
                                                          onTap: (){
                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateExpense()));
                                                          },
                                                          child: Align(
                                                            alignment: Alignment.topRight,
                                                            child: FaIcon(FontAwesomeIcons.penToSquare,size: 22,color: Colors.black,),

                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                          Text("Name: ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                                          Text("Qammer"),
                                                        ],),
                                                        SizedBox(height: 8,),
                                                        Row(
                                                          children: [
                                                            Container(

                                                            child:
                                                            Text("Status: ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                                                            ),
                                                            Container(
                                                              child:
                                                              Text("Paid"),
                                                            ),
                                                          ],),
                                                        SizedBox(height: 8,),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              child:
                                                              Text("Paid By: ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                                                            ),
                                                            Container(
                                                              child:
                                                              Text("Ali"),
                                                            ),
                                                          ],),
                                                        SizedBox(height: 8,),
                                                        Row(
                                                          children: [
                                                            Text("Amount: ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                                                            Text("1200"),
                                                          ],),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
