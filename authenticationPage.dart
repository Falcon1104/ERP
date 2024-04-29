

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class AuthenticationPage extends StatefulWidget{


  State<AuthenticationPage> createState()=>Test();


}

class Test extends State<AuthenticationPage>{

  TextEditingController te1=new TextEditingController();
  TextEditingController te2=new TextEditingController();


  TextField getText(String label,TextEditingController te){

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

  Widget build(BuildContext context){

    return Scaffold(
      body:Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(30),
        child: Center(

          child: Card(
          elevation: 15.0

            

           , child: SingleChildScrollView(
             child: Column(
             
               crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
             
                children: [
                  Container(margin: EdgeInsets.all(40),child: CircleAvatar(backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/295/295128.png'),radius: 100,)),
                  Divider(height: 70,)
                  ,
             
                  Container(margin: EdgeInsets.all(10),child: getText('ENTER USERNAME', te1)),
                  SizedBox(height: 25,),
                  Container(margin: EdgeInsets.all(10),child: getText('ENTER PASSWORD', te2)),
                  SizedBox(height: 25,),
                  Container(margin: EdgeInsets.all(10),
                    child: ListTile(

                      onTap: (){ Navigator.pushReplacementNamed(context, '/Profile');},
                      title: Container(
                        color:Colors.blue,
                        child: Card(child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(child:Text('ENTER',style: TextStyle(color: Colors.blue[900]),) ),
                        ),elevation: 15,),
                      ),


                    ),
                  )
                ],
              ),
           ),

          ),

        ),
      )
          ,appBar: AppBar(title: Text('LOGIN'),centerTitle: true,backgroundColor: Colors.blue,),
    );

  }

}