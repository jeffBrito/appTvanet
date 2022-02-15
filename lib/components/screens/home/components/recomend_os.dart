import 'package:flutter/material.dart';
import 'package:tvanet/constants.dart';

class RecomendOs extends StatelessWidget {
  const RecomendOs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
            RecomendOsCard(
              image: "assets/images/insta.jpg",
              typeOs: 'Manutenção',
              dateOs: '15/12/2021',
              valueOs: 'Rua Monsenhor Felix, Nº 142\nCasa 40',
              status:"assets/images/bolaVerde.png",
              press: (){},
            ),
             RecomendOsCard(
              image: "assets/images/insta.jpg",
              typeOs: 'Manutenção',
              dateOs: '15/12/2021',
              valueOs: 'Rua Monsenhor Felix, Nº 142\nCasa 40',
              status:"assets/images/bolaVerde.png",
              press: (){},
            ),
            RecomendOsCard(
              image: "assets/images/insta.jpg",
              typeOs: 'Manutenção',
              dateOs: '15/12/2021',
              valueOs: 'Rua Monsenhor Felix, Nº 142\nCasa 40',
              status:"assets/images/bolaVerde.png",
              press: (){},
            ),
            RecomendOsCard(
              image: "assets/images/insta.jpg",
              typeOs: 'Manutenção',
              dateOs: '15/12/2021',
              valueOs: 'Rua Monsenhor Felix, Nº 142\nCasa 40',
              status:"assets/images/bolaVerde.png",
              press: (){},
            ),
        ],
      ),
    );
  }
}

class RecomendOsCard extends StatelessWidget {
  const RecomendOsCard({
    Key? key, required this.image,required this.typeOs,required this.dateOs,required this.status,required this.press, required this.valueOs,
  }) : super(key: key);

  final String image, typeOs, dateOs, status,valueOs;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
       margin: EdgeInsets.only(
         left: kDefaultPadding,
         top: kDefaultPadding / 2,
         bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.5,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      )
                    ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$typeOs\n".toUpperCase(), 
                            style: TextStyle(
                              color: Colors.amberAccent,
                              fontWeight: FontWeight.bold,
                            ),
                           ),
                          TextSpan(
                            text: 'Prazo: $dateOs', 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:'\n$valueOs',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                        ),
                    ),
                    Spacer(),
                    Image.asset(
                      status,
                      width: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}