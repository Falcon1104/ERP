import 'package:erp/views/BufferClass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toastification/toastification.dart';

import 'Stud.dart';

class Input extends StatefulWidget{
  @override
  State<Input> createState()=>Test();


}

class Test extends State<Input>{

  TextEditingController te1=new TextEditingController();
  TextEditingController te2=new TextEditingController();
  TextEditingController te3=new TextEditingController();
  TextEditingController te4=new TextEditingController();
  TextEditingController te5=new TextEditingController();
  TextEditingController te6=new TextEditingController();

  Buffer buffer=Buffer(f1: (){});

  TextField getTextField(TextEditingController te,String label){

    return TextField(

      controller: te,
      decoration:InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),

        ),
        labelText: 'ENTER ${label}',
      ),

    );

  }

  @override
  Widget build(BuildContext context) {

    buffer=ModalRoute.of(context)?.settings.arguments as Buffer;
    return Scaffold(
      appBar: AppBar(
        title: Text('INPUT'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Scrollbar(
          
          child: GridView.count(
          
            
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            //crossAxisSpacing: 15.0,
            children: [
          
              Container(
          
                margin: EdgeInsets.all(5),
                child: TextField(
          
                  controller: te1,
                  decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
          
                    ),
                    labelText: "ENTER NAME ",
                  ),
          
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: TextField(
                  controller: te2,
                  decoration:InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
          
                    ),
                    labelText: "ENTER ROLL-NO ",
                  ),
          
                ),
              ),
                Container(
          margin: EdgeInsets.all(5),
          child: getTextField(te3, "GPA"),
          
                ),
              Container(
                margin: EdgeInsets.all(5),
                child: getTextField(te4, "CREDITS"),
          
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: getTextField(te5, "EX CU ACTIVITIES"),
          
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: getTextField(te6, "ATTENDANCE"),
          
              ),
          
          
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(

        onPressed: ()async{
          Student st1=Student(name: te1.text,roll_no: int.parse(te2.text));
          Student st2=Student.full(name: te1.text, roll_no: int.parse(te2.text), Attendance: int.parse(te6.text), credits: int.parse(te4.text), gpa: double.parse(te3.text), numberOfCuricularActivities: int.parse(te5.text));
          buffer.f1(st2);


          Toastification t=Toastification();
          await t.show(context: context
          ,
          title: Text('DATA ENTERED'));
          Future.delayed(Duration(seconds: 1),(){Navigator.pop(context);});

        },
        child: Icon(Icons.add_box_outlined,color: Colors.blue,),
      ),

    );

  }

}