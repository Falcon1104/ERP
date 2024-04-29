import 'package:erp/views/BufferClass.dart';
import 'package:flutter/material.dart';
import 'Stud.dart';

class StudentStats extends StatefulWidget{

  State<StudentStats> createState()=>Test();

}

class Test extends State<StudentStats>{

  List<Student> Students=[

  ];

  ListTile getTile(Student s){

    return ListTile(
      onTap:(){
        Navigator.pushNamed(context, '/StudentProfile',arguments: s);
      } ,
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween
          ,children:[Text('${s.name} : ${s.roll_no}'),
      SizedBox(width: 15,)
      ,
      IconButton(onPressed: (){setState(() {
        Students.remove(s);
      });}, icon:Icon(Icons.delete,color: Colors.blue,))
      ]),
    );



  }

  void addData(Student st){

    setState(() {
      Students.add(st) ;
    });

  }


  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: Text('ATTENDANCE'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      )

      ,body: ListView.builder(

        itemCount: Students.length,
        itemBuilder: (context,index){

          return Card(
            margin: EdgeInsets.all(5),
            child: getTile(Students[index]),
          );

        },
      ),

      floatingActionButton:FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context,'/input',arguments: Buffer(f1: addData));
        },
        child: Icon(Icons.add_box,
        color: Colors.blue,),
      ),

    );


  }


}