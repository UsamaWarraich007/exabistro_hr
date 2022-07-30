import 'package:exabistro_hr/Screens/EmployePerformence.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                          SizedBox(
                            width: 20,
                            height: 55,
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
                                                        Row(
                                                          children: [
                                                          Text("Name: ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                                          Text("Qammer"),
                                                        ],),
                                                        SizedBox(height: 8,),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Row(children: [
                                                              Container(

                                                              child:
                                                              Text("Status: ",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold)),
                                                            ),
                                                              Container(
                                                                child:
                                                                Text("Paid"),
                                                              ),],),
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
                                                           ],)
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
