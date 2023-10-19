import 'package:arrosage/model/data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Historique extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HistoriqueState();
  }
  
}
class HistoriqueState extends State<Historique>{

  // late Data data;

  // late List<Data> data;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        // child: FutureBuilder(
        //   builder: (ctx, snapshot) {
        //     if (snapshot.connectionState == ConnectionState.done) {
        //       if (snapshot.hasError) {
        //         return Center(
        //           child: Text(
        //             '${snapshot.error} occurred',
        //             style: TextStyle(fontSize: 18),
        //           ),
        //         );
        //       } else{
        //         //Data data = snapshot.data as Data;
        //
        //         //final data = snapshot.data as String;
        //         return Center(
        //           child: Text(
        //             'motif: Arrosage \n quatinté: 20 m3',
        //             style: TextStyle(fontSize: 18),
        //           ),
        //         );
        //       }
        //     }
        //
        //     return Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   },
        //
        //   future: getData(),
        // ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height:200),
              Container(
                child: Text(
                  'motif: Arrosage | quatinté: 05 m3' + ' | '+DateTime.now().toString().substring(0,10),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height:15),
              Container(
                child: Text(
                  'motif: Arrosage | quatinté: 10 m3' + ' | '+DateTime.now().toString().substring(0,10),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height:15),
              Container(
                child: Text(
                  'motif: Arrosage | quatinté: 50 m3' + ' | '+DateTime.now().toString().substring(0,10),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height:15),
              Container(
                child: Text(
                  'motif: Arrosage | quatinté: 20 m3' + ' | '+DateTime.now().toString().substring(0,10),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height:15),
              Container(
                child: Text(
                  'motif: Arrosage | quatinté: 20 m3' + ' | '+DateTime.now().toString().substring(0,10),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height:15),
              Container(
                child: Text(
                  'motif: Arrosage | quatinté: 10 m3' + ' | '+DateTime.now().toString().substring(0,10),
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height:15),
              Container(
                child: Text(
                  'motif: Arrosage | quatinté: 60 m3' + ' | '+DateTime.now().toString().substring(0,10),
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }


  // Future getData() async{
  //   var url = 'https://www.project.monkila-tech.com/get.php';
  //   http.Response response = await http.get(url as Uri);
  //   var data = jsonDecode(response.body);
  //   print(data.toString());
  // }

  Future getData() async {

    //https://www.project.monkila-tech.com/get.php

    final response = await http.get(Uri.parse('https://www.project.monkila-tech.com/get.php'));
    final items = json.decode(response.body);
    List<Data> data = items.map<Data>((json) {
      return Data.fromJson(json);
    }).toList();

    // Iterable it = jsonDecode(response.body);
    // List<Data> listResult = it.map((e) => Data.fromJson(e)).toList();
    //

    return data;
  }

  @override
  void initState() {
    // data = getData() as Data;
  }
  
}