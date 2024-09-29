import 'package:f_hw1/secondPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  FirstPage({super.key});
  final uName = TextEditingController();
  final uMobile = TextEditingController();
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

                Text('First Page' , style: TextStyle(
                    fontSize: 30
                ),
                ),
                SizedBox(height: 70,),

                Container(
                  padding: EdgeInsets.all(20),
                  // decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.black , width: 5 , style: BorderStyle.solid),
                  //     color: Colors.grey
                  // ),

                  child: Column(
                    children: [
                      TextField(
                        controller: uName,
                        decoration:InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(3))),

                          labelText: 'Enter your name',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 30
                          ),
                        ),
                      ),
                      SizedBox(height: 28,),
                      TextField(
                        controller: uMobile,
                        decoration:InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(3))),
                          labelText: 'Enter your mobile',
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 30
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50,),

                Container(
                  margin: EdgeInsets.all(15),
                  child: ElevatedButton(onPressed: (){
                    uMobile.text = '';
                    uName.text = '';
                  }, child: Text('Clear' , style: TextStyle(fontSize: 28),))
                ),

                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text('Back' , style: TextStyle(fontSize: 28),)),
                      SizedBox(width: 25,),
                      ElevatedButton(onPressed: (){
                        if(!(uName.text == '' || uMobile.text == '')){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(name: uName.text, mobile: uMobile.text,)));
                        }
                      }, child: Text('Next Page 2' , style: TextStyle(fontSize: 28),)),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}