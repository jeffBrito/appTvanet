import 'package:flutter/material.dart';
import 'package:tvanet/components/screens/home/components/header_with_searchbox.dart';
import 'package:tvanet/components/screens/home/components/recomend_os.dart';
import 'package:tvanet/components/screens/home/components/title_with_more_btn.dart';
import 'package:tvanet/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Ordem de Serviços",
            press: (){},
          ),
         RecomendOs(),
         TitleWithMoreBtn(
            title: "Instalações",
            press: (){},
          ),
          Row(
            children: <Widget>[
              FeatureOsCard(
                image: "assets/images/bottom_img_1.png",
                press: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FeatureOsCard extends StatelessWidget {
  const FeatureOsCard({
    Key? key, required this.image, required this.press,
  }) : super(key: key);

  final String image;
  final Function press;
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap : (){},
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding/2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image)),
          ),
        ),
    );
  }
}




