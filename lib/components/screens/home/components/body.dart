import 'package:flutter/material.dart';
import 'package:tvanet/components/screens/home/components/header_with_searchbox.dart';
import 'package:tvanet/components/screens/home/components/recomend_os.dart';
import 'package:tvanet/components/screens/home/components/title_with_more_btn.dart';
import 'package:tvanet/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'featured_os.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Ordens de Serviços",
            press: (){},
          ),
         RecomendOs(),
         TitleWithMoreBtn(
            title: "Instalações",
            press: (){},
          ),
          FeaturedOs(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}





