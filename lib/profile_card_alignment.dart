import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class ProfileCardAlignment extends StatelessWidget {
  final int cardNum;
  ProfileCardAlignment(this.cardNum);
  static RandomColor _randomColor = RandomColor();
  Color _color = _randomColor.randomColor(colorBrightness: ColorBrightness.light);

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  bool flipped = false;
  @override
  Widget build(BuildContext context) {
    if(flipped){
      cardKey.currentState.toggleCard();
    }
print(_color);
    return FlipCard(
      key:cardKey ,
      onFlipDone: (fipped){
        flipped = !flipped;
      },
      front:Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      color: _color,
      child: Stack(
        children: <Widget>[
        /*  SizedBox.expand(
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset('res/portrait.jpeg', fit: BoxFit.cover),
            ),
          ),*/
          SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black26],
                      begin: Alignment.center,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dictum placerat nisi at dapibus. Nullaullam corper efficitur lacus, sagittis tincidunt nulla pellentesque ac. Duis condimentum tinc idunt velit, efficitur lacinia nulla pelle ntesque ut. ',
                          style: TextStyle(
                            wordSpacing: 1,
                              height: 2,
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700)),
                     /* Padding(padding: EdgeInsets.only(bottom: 8.0)),
                      Text('A short description.',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white)),*/
                    ],
                  ),
                )),
          )
        ],
      ),), back:Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      color: _color,
      child: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black26],
                      begin: Alignment.center,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Back Side',
                          style: TextStyle(
                              wordSpacing: 1,
                              height: 2,
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700)),
                      /* Padding(padding: EdgeInsets.only(bottom: 8.0)),
                      Text('A short description.',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white)),*/
                    ],
                  ),
                )),
          )
        ],
      ),) ,
    );
  }
}
