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

  late Future<List<Data>> data;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occurred',
                    style: TextStyle(fontSize: 18),
                  ),
                );
              } else if (snapshot.hasData) {

                final data = snapshot.data as String;
                return Center(
                  child: Text(
                    '$data',
                    style: TextStyle(fontSize: 18),
                  ),
                );
              }
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },

          future: getData(),
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

  Future<List<Data>> getData() async {
    final response = await http.get("https://www.project.monkila-tech.com/get.php" as Uri);
    final items = json.decode(response.body).cast<Map<String, dynamic>>();
    List<Data> data = items.map<Data>((json) {
      return Data.fromJson(json);
    }).toList();

    return data;
  }

  @override
  void initState() {
    data = getData();
  }
  
}