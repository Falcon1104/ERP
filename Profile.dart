import 'package:flutter/material.dart';


class Profile extends StatelessWidget{

  Widget build(BuildContext context){

    return Scaffold(

        appBar: AppBar(
          title: Text("PROFILE",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              letterSpacing:2.0
          ),),

          centerTitle: true,
          backgroundColor: Colors.blue[300],

        ),

        body:Card(
          margin: EdgeInsets.all(20),
          elevation:10 ,
          child: Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(child: CircleAvatar(
          
                  backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/019/153/517/original/avatar-of-a-teacher-character-free-vector.jpg'),
                  radius: 70,
                ),),
                Divider(height: 60.0,),
                Card( elevation: 5, child:Padding(child:Text('STAFF NAME  :  ABC') , padding:EdgeInsets.symmetric(vertical:15.0,horizontal:10.0),) ,margin:EdgeInsets.symmetric(vertical:15.0,horizontal:10.0) ,)
                ,Card( elevation: 5, child:Padding(child:Text('STAFF ID   :  A1104') , padding:EdgeInsets.symmetric(vertical:15.0,horizontal:10.0),) ,margin:EdgeInsets.symmetric(vertical:15.0,horizontal:10.0) ,)
                ,Card( elevation: 5,child:Padding(child:Text('CLASS       :  x') , padding:EdgeInsets.symmetric(vertical:15.0,horizontal:10.0),) ,margin:EdgeInsets.symmetric(vertical:15.0,horizontal:10.0) ,)
              ],
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pushNamed(context, '/Stats');
          },
          child: Icon( Icons.co_present_sharp),
          backgroundColor: Colors.blue[200],

        )


    );

  }

}