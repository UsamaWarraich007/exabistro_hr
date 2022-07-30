
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddRecruitment extends StatefulWidget {
  const AddRecruitment({Key? key}) : super(key: key);

  @override
  _AddRecruitmentState createState() => _AddRecruitmentState();
}

class _AddRecruitmentState extends State<AddRecruitment> {
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
                            child: Text('Add Recruitment',
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
                                  labelText: 'Recruitment',
                                  hintText: 'Enter New Recruitment',
                                ),
                              ),
                              SizedBox(height: 20,),
                              TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Discription',
                                  hintText: 'Enter Recruitment discription',
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
                                child:  Center(child: Text('Add Recruitment',
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
