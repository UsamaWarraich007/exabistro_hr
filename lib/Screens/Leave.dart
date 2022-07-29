import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class leave extends StatefulWidget {
  const leave({Key? key}) : super(key: key);

  @override
  State<leave> createState() => _leaveState();
}

class _leaveState extends State<leave> {
  DateTime? selectedDate;
  bool isReadmore= false;
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
              child: Align(
                alignment: Alignment.bottomCenter,
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
                            child: Text('Leaves',
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
                      height: MediaQuery.of(context).size.height*0.7,
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
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Urgent Work",style: TextStyle(fontWeight: FontWeight.bold),),
                                          Text("22/09/2020",style: TextStyle(fontWeight: FontWeight.bold),),
                                        ],),
                                    ),
                                    Divider(
                                      thickness: 1,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              SizedBox(height: 5,),
                                              Container(
                                                width: MediaQuery.of(context).size.width*0.7,
                                                  child: Row(
                                                    children: [
                                                      SizedBox(width: 20,),
                                                      Container(
                                                        height:70,
                                                  width: 70,
                                                  decoration:  BoxDecoration(
                                                      color:Colors.red,
                                                      borderRadius: BorderRadius.circular(80.0),
                                                      image:DecorationImage(
                                                        image: AssetImage('Images/edward.jfif'),
                                                        fit:  BoxFit.fill,
                                                      )
                                                    ),
                                                        // child: Image.asset('assets/image/img.png', fit: BoxFit.cover,),
                                                      ),
                                                      SizedBox(width: 10,),
                                                      Container(

                                                        alignment: Alignment.bottomLeft,
                                                          child: Text("Edward",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,),)),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            width: MediaQuery.of(context).size.width*0.68,
                                            child: buildText(
                                              "Use Git as the default source control experience "
                                                  "in Visual Studio right out of the box. From the new Git menu, you can create or "
                                                  "clone repositories from GitHub or Azure DevOps. Use the integrated Git tool windows "
                                                  "to commit and push changes to your code, "
                                                  "manage branches, sync with your remote repositories, and resolve merge conflicts.",
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                          width:MediaQuery.of(context).size.width*0.88,
                                          child: Align(
                                              alignment: Alignment.bottomRight,
                                              child: InkWell(onTap: (){
                                                setState(() {
                                                  // toggle the bool variable true or false
                                                  isReadmore = !isReadmore;
                                                });
                                              }, child: Text((isReadmore?'Read Less...' : 'Read More...')))

                                          )),
                                      SizedBox(height: 14,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(width: 20,),
                                          Container(
                                            width:100,
                                            decoration: const BoxDecoration(
                                              color:Colors.green,
                                              borderRadius: BorderRadius.all(Radius.circular(15)),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Row(children: [
                                                FaIcon(FontAwesomeIcons.checkCircle,color: Colors.white,),
                                                SizedBox(width: 8,),
                                                Center(child: Text("Approve",style: TextStyle(color: Colors.white),))],),
                                            ),
                                          ),

                                          Container(
                                            width:100,
                                            decoration: const BoxDecoration(
                                              color:Colors.red,
                                              borderRadius: BorderRadius.all(Radius.circular(15)),

                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(4.0),
                                              child: Center(
                                                child: Row(children: [
                                                  FaIcon(FontAwesomeIcons.solidCircleXmark,color: Colors.white,),
                                                  SizedBox(width: 8,),
                                                  Text("Cancel",style: TextStyle(color: Colors.white),)],),
                                              ),
                                            ),
                                          ),
                                        ],),
                                      SizedBox(height: 18,)
                                    ],),)
                                  ],
                                ),
                              )
                          );
                        },
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
  Widget buildText(String text){

    // if read more is false then show only 3 lines from text
    // else show full text
    final lines = isReadmore ? null : 3;
    return Text(
      text,
      maxLines: lines,
      // overflow properties is used to show 3 dot in text widget
      // so that user can understand there are few more line to read.
      overflow: isReadmore ? TextOverflow.visible: TextOverflow.ellipsis,
    );
  }
}
