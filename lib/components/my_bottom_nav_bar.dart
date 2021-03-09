import 'package:flutter/material.dart';
import 'package:greenify/constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          HomeIcon(),
          LocationIcon(),
          AddPlantIcon(),
        ],
      ),
    );
  }
}

class HomeIcon extends StatefulWidget {
  @override
  _HomeIconState createState() => _HomeIconState();
}

class _HomeIconState extends State<HomeIcon> {
  Icon activate = Icon(
    Icons.home,
    color: kPrimaryColor,
    size: 30,
  );
  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context).settings.name == "/home") {
      setState(() {});
      return IconButton(
        icon: activate,
        onPressed: () {},
      );
    } else {
      setState(() {});
      return IconButton(
        icon: Icon(
          Icons.home_outlined,
          color: kPrimaryColor,
          size: 30,
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
      );
    }
  }
}

class LocationIcon extends StatefulWidget {
  @override
  _LocationIconState createState() => _LocationIconState();
}

class _LocationIconState extends State<LocationIcon> {
  Icon activate = Icon(
    Icons.location_pin,
    color: kPrimaryColor,
    size: 30,
  );
  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context).settings.name == "/map") {
      setState(() {});
      return IconButton(
        icon: activate,
        onPressed: () {},
      );
    } else {
      setState(() {});
      return IconButton(
        icon: Icon(
          Icons.location_on_outlined,
          color: kPrimaryColor,
          size: 30,
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/map');
        },
      );
    }
  }
}

class AddPlantIcon extends StatefulWidget {
  @override
  _AddPlantIconState createState() => _AddPlantIconState();
}

class _AddPlantIconState extends State<AddPlantIcon> {
  Icon activate = Icon(
    Icons.add_box,
    color: kPrimaryColor,
    size: 30,
  );
  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context).settings.name == "/addPlant") {
      setState(() {});
      return IconButton(
        icon: activate,
        onPressed: () {},
      );
    } else {
      setState(() {});
      return IconButton(
        icon: Icon(
          Icons.add_box_outlined,
          color: kPrimaryColor,
          size: 30,
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/addPlant');
        },
      );
    }
  }
}
