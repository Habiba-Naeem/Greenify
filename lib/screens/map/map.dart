import 'package:flutter/material.dart';
import 'package:greenify/components/my_bottom_nav_bar.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Text("Map"),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.ac_unit),
        onPressed: () {},
      ),
    );
  }
}
