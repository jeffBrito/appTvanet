import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tvanet/constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  get kDefaultPadding => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding : EdgeInsets.only(
        left: 20*2,
        right: 20*2,
        bottom: 20,
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
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower.svg"), 
            onPressed: () {  },
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"), 
            onPressed: () {  },
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/user-icon.svg"), 
            onPressed: () {  },
          ),
        ],
      ),
    );
  }
}