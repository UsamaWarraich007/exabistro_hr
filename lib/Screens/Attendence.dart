import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Attendence extends StatefulWidget {
  const Attendence({Key? key}) : super(key: key);

  @override
  _AttendenceState createState() => _AttendenceState();
}

class _AttendenceState extends State<Attendence> {
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
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: const Icon(Icons.menu_outlined),
      //   ),
      //   backgroundColor: Color(0xff152938),
      // ),
      body:   Container(
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
                            height: 10,
                          ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     InkWell(
                          //       onTap: (){
                          //         _globelKey.currentState?.openDrawer();
                          //       },
                          //       child: Align(
                          //           alignment: Alignment.topLeft,
                          //           child: FaIcon(FontAwesomeIcons.alignLeft,size: 22,color: Colors.white,)
                          //
                          //       ),
                          //     ),
                          //
                          //   ],
                          // ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('Attendense',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,

                              ),),
                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('All Employees',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ),

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
                                    new CircularPercentIndicator(
                                      radius: 40.0,
                                      lineWidth: 2.0,
                                      animation: true,
                                      percent: 0.6,
                                      center: new Text(
                                        "60%",
                                        style:
                                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                                      ),
                                      footer: new Text(
                                        "Present",
                                        style:
                                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0,color: Colors.black26),
                                      ),
                                      circularStrokeCap: CircularStrokeCap.round,
                                      progressColor: Colors.green,
                                    ),
                                    new CircularPercentIndicator(
                                      radius: 40.0,
                                      lineWidth: 2.0,
                                      animation: true,
                                      percent: 0.3,
                                      center: new Text(
                                        "30%",
                                        style:
                                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                                      ),
                                      footer: new Text(
                                        "Absent",
                                        style:
                                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0,color: Colors.black26),
                                      ),
                                      circularStrokeCap: CircularStrokeCap.round,
                                      progressColor: Colors.red,
                                    ),
                                    new CircularPercentIndicator(
                                      radius: 40.0,
                                      lineWidth: 2.0,
                                      animation: true,
                                      percent: 0.1,
                                      center: new Text(
                                        "10%",
                                        style:
                                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                                      ),
                                      footer: new Text(
                                        "Leave",
                                        style:
                                        new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0,color: Colors.black26),
                                      ),
                                      circularStrokeCap: CircularStrokeCap.round,
                                      progressColor: Colors.black,
                                    ),
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
                                        child: ListTile(
                                            leading: const Icon(Icons.person),
                                            trailing: const Text(
                                              "Present",
                                              style: TextStyle(color: Colors.green, fontSize: 15),
                                            ),
                                            title: Text("Usama",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
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
