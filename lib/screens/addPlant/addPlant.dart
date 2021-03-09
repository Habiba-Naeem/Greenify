import 'package:flutter/material.dart';
import 'package:greenify/components/my_bottom_nav_bar.dart';
import 'package:greenify/screens/addPlant/components/body.dart';

class AddPlantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("Add New Plant"),
      leading: IconButton(
        icon: Icon(Icons.ac_unit),
        onPressed: () {},
      ),
    );
  }
}
