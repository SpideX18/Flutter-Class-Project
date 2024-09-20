import 'package:flutter/material.dart';

class loginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return loginPageStage();

  }
}

class loginPageStage extends State<loginPage>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(

          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.house, size:18, color:Colors.blue,),

                  Icon(Icons.arrow_back, size:18, color:Colors.blue,)
                ],
              ),
            ),
            Container(
              height: size.height/3.2,
              width: size.width/1.1,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text("Sign In",style: TextStyle(color:Colors.black,fontSize: 17, fontWeight: FontWeight.bold),),
                  Container(

                    height: 35,
                    width: size.width/1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),),
                    child: Center(child: Text("Email",style: TextStyle(color:Colors.black,fontSize: 17, fontWeight: FontWeight.bold),),
                    )
                  ),
                  SizedBox(height: 15),
                  Container(

                    height: 35,
                    width: size.width/1.1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),),
                    child: Text("Password",style: TextStyle(color:Colors.black,fontSize: 17, fontWeight: FontWeight.bold),),

                  )

                ],
              ),
            ),

          ],
        ),
      )
    );

  }



}