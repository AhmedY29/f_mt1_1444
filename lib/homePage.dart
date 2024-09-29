import 'dart:io';

import 'package:flutter/material.dart';

import 'firstPage.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('MT1 Lab'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.brown
          ),
          child: Center(
            child: Column(
            children: [
              SizedBox(height: 20,),

              Text('Home Page' , style: TextStyle(
                backgroundColor: Colors.white,
                color: Colors.black,
                fontSize: 30
              ),
              ),
              SizedBox(height: 100,),

                 Container(
                height: 200,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black , width: 5 , style: BorderStyle.solid),
                  color: Colors.grey
                ),

                width: 250,
                child: Column(
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
                    }, child: Text('Next Page 1' , style: TextStyle(fontSize: 25),)),
                    SizedBox(height: 50,),
                    ElevatedButton(onPressed: (){
                      exit(0);
                    }, child: Text('Close' ,style: TextStyle(fontSize: 25),)),
                  ],
                ),
              ),
              SizedBox(height: 150,),

              Container(
                margin: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Write Your Name',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 30
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              )

            ],
          ),
          ),
        ),
      ),
    );
  }

}