import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Commande extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CommandeState();
  }
  
}
class CommandeState extends State<Commande>{

  String pourcentage = '10 %';
  int p = 10;

  String msg = "...";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 70,),
              Text('$p',
                style: TextStyle(
                    color: Color.fromRGBO(9, 9, 9, 1.0), fontSize: 110.0),),
              SizedBox(height: 0,),
              // Text("00 : 00",
              //   style: TextStyle(color: Color.fromRGBO(9, 9, 9, 1.0), fontSize: 22.0),),
              SizedBox(height: 50,),
              Text('$msg',
                style: TextStyle(color: Color.fromRGBO(9, 9, 9, 1.0), fontSize: 22.0),),



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
                         child: GestureDetector(
                           child: Text("Check %", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                           onTap: (){
                             commandeCheck();
                           },
                         ),
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

                        //child: Text("Demarrer", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                        child: Center(
                          child: GestureDetector(
                            child: Text("Demarrer", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            onTap: (){
                              commandeOn();
                            },
                          ),
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
                         child: GestureDetector(
                           child: Text("Eteindre", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                           onTap: (){
                             commandeOff();
                           },
                         ),
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

  Future<void> commandeOn() async {
    await http.post(Uri.parse('https://www.project.monkila-tech.com/on?'));

    setState(() {
      msg = "Statut : Arrosage en cours";
    });
  }

  Future<void> commandeOff() async {
    await http.post(Uri.parse('https://www.project.monkila-tech.com/off?'));

    setState(() {
      msg = "Statut : Arrosage interrompu";
    });
  }

  Future<void> commandeCheck() async {

    setState(() {
      p++;
    });

    await http.post(Uri.parse('https://www.project.monkila-tech.com/check?'));
  }
  
}