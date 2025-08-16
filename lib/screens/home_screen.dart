import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget>[
          _plantsCard(context),
          _plantsCard(context),
          _plantsCard(context),

        ],
        ));
  }

  Widget _plantsCard(BuildContext context){
    
  }

}