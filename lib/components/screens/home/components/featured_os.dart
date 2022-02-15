import 'package:flutter/material.dart';
import 'package:tvanet/constants.dart';
import 'body.dart';

class FeaturedOs extends StatelessWidget {
  const FeaturedOs({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
            FeaturedOsCard(
              image: "assets/images/service.jpeg",
              typeOs: 'Contrato: 25652',
              dateOs: '15/12/2021',
              valueOs: 'Rua Monsenhor Felix \nNº 142, Casa 40',
              status:"assets/images/bolaVerde.png",
              press: (){},
            ),
             FeaturedOsCard(
              image: "assets/images/service.jpeg",
              typeOs: 'Contrato: 25652',
              dateOs: '01/01/2022',
              valueOs: 'Rua Vaz Lobo \nNº 120, Casa 1',
              status:"assets/images/bolaVerde.png",
              press: (){},
            ),
            FeaturedOsCard(
              image: "assets/images/service.jpeg",
              typeOs: 'Contrato: 25652',
              dateOs: '05/02/2022',
              valueOs: 'Rua Vicente de Carvalho \nNº 42, Casa 25',
              status:"assets/images/bolaVerde.png",
              press: (){},
            ),
            FeaturedOsCard(
              image: "assets/images/service.jpeg",
              typeOs: 'Contrato: 25652',
              dateOs: '15/02/2022',
              valueOs: 'Rua Lima Drumond  \nNº 40, Casa 4',
              status:"assets/images/bolaVerde.png",
              press: (){},
            ),
        ],
      ),
    );
  }
}

class FeaturedOsCard extends StatelessWidget {
  const FeaturedOsCard({
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
                  color: Colors.blueGrey[800],
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
                              color: Colors.blue[200],
                              fontSize: 12,
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