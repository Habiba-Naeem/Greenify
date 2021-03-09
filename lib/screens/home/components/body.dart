import 'package:flutter/material.dart';
import 'package:greenify/constants.dart';
import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'user_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            TitleWithMoreBtn(title: "My Plants", press: () {}),
            UsersPlants(),
            /*  TitleWithMoreBtn(title: "Featured Plants", press: () {}),
            FeaturedPlants(), */
            SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }
}
