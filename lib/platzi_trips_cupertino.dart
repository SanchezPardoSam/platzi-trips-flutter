// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_flutter/Place/ui/screens/home_trips.dart';
import 'package:platzi_trips_flutter/Place/ui/screens/search_trips.dart';
import 'package:platzi_trips_flutter/User/ui/screens/profile_trips.dart';



class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo), label: ""),
            ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );

            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );

            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              
          }
          return CupertinoTabView();
        },
      ),
    );
  }
}
