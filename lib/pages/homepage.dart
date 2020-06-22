import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold (
      appBar: AppBar (
        leading: Icon(Icons.traffic),
        title: Text("MongoDB Demo"),
      ),
      body: Container()
    );

  }

}
