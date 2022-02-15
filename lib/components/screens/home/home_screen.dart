import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tvanet/components/my_bottom_nav_bar.dart';
import 'package:tvanet/components/screens/home/components/body.dart';


class HomeScreen extends StatelessWidget {

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
        leading: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/menu.svg")
      ),
    );
  }
}

