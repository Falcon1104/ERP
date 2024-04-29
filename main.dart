
import 'package:erp/views/StudentProfile.dart';
import 'package:erp/views/StudentStats.dart';
import 'package:erp/views/authenticationPage.dart';
import 'package:erp/views/inout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:erp/views/Profile.dart';


void main()=>runApp(

  MaterialApp(

    initialRoute: '/',
    routes: {
      '/':(context)=>Home(),
      '/Profile':(Context)=>Profile(),
      '/Stats':(Context)=>StudentStats(),
      '/input':(Context)=>Input(),
      '/StudentProfile':(Context)=>StudentProfile(),
      '/authentication':(Context)=>AuthenticationPage(),


    },

  )

);


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds:3)
      ,(){
      Navigator.pushReplacementNamed(context, '/authentication');
        }
    );

    return Scaffold(
        body: Center(
          child: SpinKitCubeGrid(
            color: Colors.blue,
            size: 50.0,
          ),
        ),
      );
  }




}