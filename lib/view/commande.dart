import 'package:flutter/material.dart';

class Commande extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CommandeState();
  }
  
}
class CommandeState extends State<Commande>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 70,),
              Text("10 °C",
                style: TextStyle(
                    color: Color.fromRGBO(9, 9, 9, 1.0), fontSize: 62.0),),
              SizedBox(height: 30,),
              Text("00 : 00",
                style: TextStyle(color: Color.fromRGBO(9, 9, 9, 1.0), fontSize: 22.0),),
              SizedBox(height: 150,),



              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(143, 195, 251, 1.0),
                                Color.fromRGBO(143, 148, 251, .6),
                              ]
                          )
                      ),
                      child: Center(
                        child: Text("Check °", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(143, 195, 251, 1.0),
                                Color.fromRGBO(143, 148, 251, .6),
                              ]
                          )
                      ),
                      child: Center(
                        child: Text("Demarrer", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(142, 6, 11, 1.0),
                                Color.fromRGBO(220, 12, 54, 0.6),
                              ]
                          )
                      ),
                      child: Center(
                        child: Text("Eteindre", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
  
}