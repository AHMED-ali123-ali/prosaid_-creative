

import 'package:flutter/material.dart';
import 'package:task_porsaid/login.dart';


void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:
        AppBar(
          backgroundColor: Colors.red,title:
        Text('Welcome',style:
        TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle:true ,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsoQEO23idXYpkf-HHqMEtlokMdoaYlUd-ddd6C5t87Q&s=10'),
          SizedBox(height: 50),
            Text(
              textAlign: TextAlign.center,
              'Welcome to our app\nWe’re happy to have you here Let’s get started',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
            ),
            SizedBox(height: 50),
            Builder(
              builder: (context) {
                return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>Login()));
                    }, child: Text('Click',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),));
              }
            )
          ],
        ),
      ),
    );
  }
}



