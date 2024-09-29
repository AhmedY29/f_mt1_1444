import 'package:flutter/material.dart';

import 'firstPage.dart';

class SecondPage extends StatelessWidget{
  String name , mobile ;
  SecondPage({super.key, required this.name , required this.mobile});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('MT1 Lab'),
      ),
      body: Center(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20,),

                Text('Second Page' , style: TextStyle(
                    fontSize: 30
                ),
                ),
                SizedBox(height: 100,),

                Container(
                  height: 200,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black , width: 5 , style: BorderStyle.solid),
                  ),

                  width: 250,
                  child: Column(
                    children: [
                      Text('Welcome Mr:'),
                      SizedBox(height: 50,),
                      Text('name is : $name'),
                      Text('mobile is : $mobile '),
                    ],
                  ),
                ),
                SizedBox(height: 150,),

                Container(
                  margin: EdgeInsets.all(15),
                  child: ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Back' ,style: TextStyle(fontSize: 25),)),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

}