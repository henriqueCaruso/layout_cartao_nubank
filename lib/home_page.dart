import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';


class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cartão Nubank"),
        actions: [
          Icon(Icons.credit_card),
        ],    
        backgroundColor: Color.fromRGBO(125, 60, 135, 1),
      ),
      backgroundColor: Color.fromRGBO(97, 47, 116, 1),
      body: FlipCard(
            direction: FlipDirection.HORIZONTAL,
              front: Center(
          child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromRGBO(125, 60, 135, 1),
              border: Border.all(
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Image(
                    image: AssetImage('images/chip.png'),
                    width: 50,
                  ),
                  left: 25,
                  top: 60,
                ),
                Positioned(
                  child: Image(
                    image: AssetImage('images/nfc.png'),
                    width: 20,
                    color: Colors.white,
                  ),
                  left: 80,
                  top: 72,
                ),
                Positioned(
                  child: Image(
                    image: AssetImage('images/mastercard.png'),
                    width: 80,
                  ),
                  right: 10,
                  top: 10,
                ),
                Positioned(
                  child: Image(
                    image: AssetImage('images/nu_logo.png'),
                    width: 100,
                    color: Colors.white,
                  ),
                  left: 10,
                  bottom: 0,
                ),
                Positioned(
                  child: Text(
                    "Henrique Caruso",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  left: 100,
                  bottom: 42,
                ),
              ],
            ),
          ),
        ),
        back: Center(
          child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              color: Color.fromRGBO(125, 60, 135, 1),
              border: Border.all(
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  color: Colors.white,
                  height: 50,
                ),
                Positioned(
                  child: Text(
                    "9999 9999 9999 9999",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  left: 20,
                  bottom: 20,
                ),
                Positioned(
                  child: Image(
                    image: AssetImage('images/cirrus.png'),
                    width: 65,
                  ),
                  right: 10,
                  bottom: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
