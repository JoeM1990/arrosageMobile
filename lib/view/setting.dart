import 'package:flutter/material.dart';
import 'login.dart';

class Setting extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingState();
  }
  
}
class SettingState extends State<Setting>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Container(
            height: 250,
            color: Colors.white,
            child: Stack(
              children: [
                // Container(
                //   height: 150,
                //   width: MediaQuery.of(context).size.width - 40,
                // ),
                Center(
                  child: Positioned(
                    top: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: new Offset(0.0, 0.0),
                            blurRadius: 5.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text('M', style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 80,
                        ),),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 20.0, right: 10.0),
        //   child: ListTile(
        //     title: Text(
        //       "Nom d'utilisateur",
        //       style: TextStyle(
        //           fontSize: 13,
        //           fontFamily: 'Ubuntu-Regular',
        //           color: Colors.white),
        //     ),
        //     subtitle: Text(
        //       '$usernameT',
        //       style: TextStyle(
        //           fontWeight: FontWeight.bold,
        //           fontStyle: FontStyle.italic,
        //           fontFamily: 'Ubuntu-Regular',
        //           color: Colors.white),
        //     ),
        //     trailing: Icon(Icons.account_circle,
        //       color: Colors.white,
        //       size: 20,
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: ListTile(
            title: Text(
              'Nom',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Ubuntu-Regular',
                  color: Colors.blueAccent),
            ),
            subtitle: Text(
              'Jordan',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ubuntu-Regular',
                  fontStyle: FontStyle.italic,
                  color: Colors.blueAccent),
            ),
            trailing: Icon(Icons.account_circle,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: ListTile(
            title: Text(
              'Rôle',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Ubuntu-Regular',
                  color: Colors.blueAccent),
            ),
            subtitle: Text(
              'Admin',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ubuntu-Regular',
                  fontStyle: FontStyle.italic,
                  color: Colors.blueAccent),
            ),
            trailing: Icon(Icons.accessibility,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          // decoration: BoxDecoration(border: Border.all()),
          child: GestureDetector(
            child: ListTile(
              title: Text(
                'Reglage',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Ubuntu-Regular',
                    color: Colors.blueAccent),
              ),
              subtitle: Text(
                'Deconnexion',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ubuntu-Regular',
                    fontStyle: FontStyle.italic,
                    color: Colors.blueAccent),
              ),
              trailing: Icon(Icons.logout,
                color: Colors.black,
                size: 20,
              ),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
        ),

      ],
    );
  }

}