import 'package:exabistro_hr/Screens/EmployeeDetail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddContracts extends StatefulWidget {
  const AddContracts({Key? key}) : super(key: key);

  @override
  _AddContractsState createState() => _AddContractsState();
}

class _AddContractsState extends State<AddContracts> {
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
                      height: MediaQuery.of(context).size.height * 0.3,
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
                          // Align(
                          //   alignment: Alignment.topLeft,
                          //   child: InkWell(
                          //     onTap: (){
                          //
                          //     },
                          //     child: Align(
                          //       alignment: Alignment.topRight,
                          //       child: Icon(Icons.add_box_rounded,size: 40,color: Colors.white,),
                          //
                          //     ),
                          //   ),
                          // ),

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
                            height: 30,
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
                            child: Text('Add Contracts',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),),
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // height: MediaQuery.of(context).size.height * 0.7,
                        // decoration: BoxDecoration(
                        //   color: Colors.red
                        // ),
                          child: ListView(
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Contract',
                                  hintText: 'Enter New Contract',
                                ),
                              ),
                              SizedBox(height: 20,),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Discription',
                                  hintText: 'Enter contract discription',
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                height: 40,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.amber
                                ),
                                child:  Center(child: Text('Add Contract',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white
                                  ),)),
                              )


                            ],
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
