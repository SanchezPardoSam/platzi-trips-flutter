// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_flutter/User/bloc/bloc_user.dart';
import 'package:platzi_trips_flutter/User/ui/screens/sign_in_screen.dart';
import 'platzi_trips_cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: UserBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        //home: PlatziTripsCupertino(),
        home: SignInScreen()
      ),
    );
  }
}
