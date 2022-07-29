import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
class EmployeeAttendence extends StatefulWidget {
  const EmployeeAttendence({Key? key}) : super(key: key);

  @override
  _EmployeeAttendenceState createState() => _EmployeeAttendenceState();
}

class _EmployeeAttendenceState extends State<EmployeeAttendence> {
  DateTime? selectedDate;
  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }
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
              child: Column(
                children: [

                  Container(
                      height: MediaQuery.of(context).size.height*0.1,
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FaIcon(FontAwesomeIcons.chevronLeft,size: 22,color: Colors.white,),

                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.86,
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Attendance", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18
                                      ),),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Usama",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: Colors.white),),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.white,
                                              width: 2.0,
                                            )
                                        ),
                                        child: InkWell(
                                          onTap: (){
                                            // _onPressed(context: context);
                                            showMonthPicker(
                                              context: context,
                                              firstDate: DateTime(DateTime.now().year - 1, 5),
                                              lastDate: DateTime(DateTime.now().year, DateTime.now().month),
                                              initialDate: selectedDate ?? DateTime.now(),
                                              locale: null,
                                            ).then((date) {
                                              if (date != null) {
                                                setState(() {
                                                  selectedDate = date;
                                                });
                                              }
                                            });
                                          },
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              if(selectedDate == null)
                                                Text("##,####",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),)
                                              else
                                                Text(DateFormat().add_yMMM().format(selectedDate!),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),),
                                              Icon(Icons.arrow_drop_down_outlined,size: 16,color: Colors.white,),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 10,
                                  itemBuilder: (context, index) {
                                    return Card(
                                        elevation: 8,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius
                                                  .circular(7)),
                                          child: Row(children: [
                                            SizedBox(width: 10,),
                                            Column(
                                              children: [
                                                Container(
                                                  width:MediaQuery.of(context).size.width*0.40,
                                                  child: Text(
                                                      "13/07/2022"),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              width: 20,
                                              height: 10,
                                              child: VerticalDivider(
                                                color: Colors.black,
                                                thickness: 2, width: 20,
                                                indent: 20,
                                                endIndent: 20,),
                                            ),
                                            Container(
                                              width:MediaQuery.of(context).size.width*0.24,
                                              child: Column(children: [  SizedBox(height: 7,),
                                                Text("09:02:00"),
                                                SizedBox(height: 7,),
                                                InkWell(child: Container(
                                                  height: 20,
                                                  width:60,
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(2),
                                                      border: Border.all(width: 2,color: Colors.amber)
                                                  ),
                                                  child: Center(child: Text("In time",style: TextStyle( color: Colors.black,fontSize: 12),)),)),
                                                SizedBox(height: 9,),],),
                                            ),
                                            Container(
                                              width:MediaQuery.of(context).size.width*0.20,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  SizedBox(height: 7,),
                                                  Text("05:00:00"),
                                                  SizedBox(height: 7,),
                                                  InkWell(child: Container(
                                                    height: 20,
                                                    width:60,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(2),
                                                        border: Border.all(width: 2,color: Colors.black)
                                                    ),
                                                    child: Center(child: Text("In time",style: TextStyle( color: Colors.black,fontSize: 12),)),)),
                                                  SizedBox(height: 9,),
                                                ],),
                                            )
                                          ],

                                          ),
                                        )
                                    );
                                  },
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

