import 'package:flutter/material.dart';

class Historique extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HistoriqueState();
  }
  
}
class HistoriqueState extends State<Historique>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Text('Historique', style: TextStyle(
        color: Colors.blueAccent,
      ),),
    );
  }
  
}