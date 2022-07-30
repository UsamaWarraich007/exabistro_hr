import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';
class UpdateExpense extends StatefulWidget {
  const UpdateExpense({Key? key}) : super(key: key);

  @override
  State<UpdateExpense> createState() => _UpdateExpenseState();
}

class _UpdateExpenseState extends State<UpdateExpense> {
  TextEditingController Name = TextEditingController();
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
                      height: MediaQuery.of(context).size.height * 0.23,
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
                                  child: Text('Update Expense',
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
                          child:SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Card(
                                  elevation:8,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Company Name',
                                      hintText: 'Enter Company Name',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Card(
                                  elevation:8,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Employee Name',
                                      hintText: 'Enter Employee Name',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Card(
                                  elevation:8,
                                  child: Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            children: [
                                              SizedBox(width: 8,),
                                              Text("Status",style: TextStyle(fontSize: 17),),
                                            ],
                                          )),
                                      DropdownButtonFormField<String>(
                                        isExpanded: true,
                                        hint: Row(
                                          children: [
                                            SizedBox(width: 8,),
                                            Text("Select option", maxLines: 1),
                                          ],
                                        ),
                                        items: ["Paid", "Unpaid"].map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: new Text(
                                              value ?? "",
                                              textAlign: TextAlign.left,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              softWrap: true,
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          setState(() {

                                          });
                                        },),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Card(
                                  elevation:8,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Amount',
                                      hintText: 'Enter Amount',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Card(
                                  elevation:8,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Paid By',
                                      hintText: 'Enter Name Paid By',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Card(
                                  elevation:8,
                                  child: TextField(
                                    minLines: 1,
                                    maxLines: 8,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Discription',
                                      hintText: 'Enter Expense discription',
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15,),
                                Container(
                                  height: 50,
                                  width: 200,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all<Color>(ye),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(18.0),
                                                )
                                            )
                                        ),onPressed: (){}, child: Center(child: Text("Update",style: TextStyle(fontSize: 20,color: Colors.white),))),
                                  ),),
                              ],
                            ),
                          )
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
