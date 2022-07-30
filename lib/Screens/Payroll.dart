import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
import 'package:time_chart/time_chart.dart';

class Payroll extends StatefulWidget {
  const Payroll({Key? key}) : super(key: key);


  @override
  _PayrollState createState() => _PayrollState();
}

class _PayrollState extends State<Payroll> {
  // Initial Selected Value
  String value = 'Item 1';

  // List of items in our dropdown menu

  final data = [
    DateTimeRange(
      start: DateTime(2021,2,24,23,15),
      end: DateTime(2021,2,25,7,30),
    ),
    DateTimeRange(
      start: DateTime(2021,2,22,1,55),
      end: DateTime(2021,2,22,9,12),
    ),
    DateTimeRange(
      start: DateTime(2021,2,20,0,25),
      end: DateTime(2021,2,20,7,34),
    ),
    DateTimeRange(
      start: DateTime(2021,2,17,21,23),
      end: DateTime(2021,2,18,4,52),
    ),
    DateTimeRange(
      start: DateTime(2021,2,13,6,32),
      end: DateTime(2021,2,13,13,12),
    ),
    DateTimeRange(
      start: DateTime(2021,2,1,9,32),
      end: DateTime(2021,2,1,15,22),
    ),
    DateTimeRange(
      start: DateTime(2021,1,22,12,10),
      end: DateTime(2021,1,22,16,20),
    ),
  ];
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate =  DateTime.now();
  }
  GlobalKey<ScaffoldState> _globelKey=GlobalKey<ScaffoldState>();
  DateTime? _selected;
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // InkWell(
                              //   onTap: (){
                              //     _globelKey.currentState?.openDrawer();
                              //   },
                              //   child: Align(
                              //       alignment: Alignment.topLeft,
                              //       child: FaIcon(FontAwesomeIcons.alignLeft,size: 22,color: Colors.white,)
                              //
                              //   ),
                              // ),

                            ],
                          ),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text('Payroll',
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

                    Center(
                      child: Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          // decoration: BoxDecoration(
                          //   color: Colors.red
                          // ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 280,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: Card(
                                    elevation: 5,
                                    child: Padding(
                                      padding: EdgeInsets.all(18),
                                      child: TimeChart(
                                        height: MediaQuery.of(context).size.height * 0.3,
                                        data: data,
                                        viewMode: ViewMode.weekly,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [

                                    Expanded(
                                      flex: 1,
                                      child: Card(
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 35,top: 35),
                                          child: Column(
                                            crossAxisAlignment:CrossAxisAlignment.start,
                                            children: [
                                              Text('Total Paid',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                              Text('30,000',
                                                style: TextStyle(
                                                  color: Colors.black12,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                ),),

                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Icon(Icons.arrow_upward_outlined,
                                                  size: 80,
                                                  color: Colors.black12,
                                                ),
                                              )
                                            ],
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
                                      child: Card(
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 35,top: 35),
                                          child: Column(
                                            crossAxisAlignment:CrossAxisAlignment.start,
                                            children: [
                                              Text('Working Hours',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
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
                                                child: Icon(Icons.timer,
                                                  size: 100,
                                                  color: Colors.black12,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Card(
                                        elevation: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 35,top: 35),
                                          child: Column(
                                            crossAxisAlignment:CrossAxisAlignment.start,
                                            children: [
                                              Text('Extra Hours',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                              Text('29',
                                                style: TextStyle(
                                                  color: Colors.black12,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                ),),

                                              Align(
                                                alignment: Alignment.bottomRight,
                                                child: Icon(Icons.timeline,
                                                  size: 100,
                                                  color: Colors.black12,
                                                ),
                                              )
                                            ],
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
