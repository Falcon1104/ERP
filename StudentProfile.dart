import 'package:erp/views/Stud.dart';
import 'package:flutter/material.dart';

class StudentProfile extends StatefulWidget{

  State<StudentProfile> createState()=> TestProfile();

}

class TestProfile extends State<StudentProfile>{

  late  Student s1;

  Row getRowOne(Student s){

    return Row(

      children: [


        Card(
          child: Container(padding: EdgeInsets.symmetric(vertical:30,horizontal: 10),child: Text('NAME  : ${s.name}     ')),
        ),
        SizedBox(width: 25,)
        ,
        Card(
          child: Container(padding: EdgeInsets.symmetric(horizontal: 45,vertical: 30),child: Text('ROLL NO: ${s.roll_no}')),
        )


      ],

    );

  }

  Row getPerformance(Student s){

    return Row(
      children: [
        Card( child: Container(padding: EdgeInsets.all(30),child: Text('GPA  :  ${s.gpa}')),),
        SizedBox(width: 25,),
        Card( child: Container(padding: EdgeInsets.symmetric(vertical: 30,horizontal: 45),child: Text('CREDITS : ${s.credits}')),)
      ],
    );

  }


  Widget build(BuildContext context){
    s1=ModalRoute.of(context)?.settings.arguments as Student;
    return Scaffold(

      appBar: AppBar(
        title: Text('STUDENT PROFILE'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body:Container(
        margin: EdgeInsets.all(15),
        child:
        Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://as1.ftcdn.net/v2/jpg/02/06/68/86/1000_F_206688661_kWRMFbjnF6h6T3fdiFHehxh3tmwd7cYh.jpg'),
                radius: 80,
                backgroundColor: Colors.blue,

              ),



            ),
            SizedBox(height: 25,),
            Divider(height: 70,)
            ,
            getRowOne(s1),
            SizedBox(height: 25,),
            getPerformance(s1),
            SizedBox(height: 25,),
            Card(child: Container(padding: EdgeInsets.symmetric(vertical: 30,horizontal:50),child: Text('EXTRA CURICULAR ACTIVITIES : ${s1.numberOfCuricularActivities} ')),)
            ,
            SizedBox(height: 25,),
            Card(child: Container(padding: EdgeInsets.symmetric(vertical: 30,horizontal:100),child: Text('ATTENDANCE  : ${s1.Attendance} ')),)
          ],


        )
        ,
      )

    );

  }


}