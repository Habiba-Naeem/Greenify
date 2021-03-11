import 'package:flutter/material.dart';
import 'package:greenify/constants.dart';
import 'package:greenify/screens/addPlant/components/addImage.dart';
import 'package:greenify/screens/addPlant/components/details.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AddPlantImage(),
          Details(),
        ],
      ),
    );
  }
}
