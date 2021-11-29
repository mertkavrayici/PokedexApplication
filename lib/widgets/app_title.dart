import 'package:flutter/material.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  _AppTitleState createState() => _AppTitleState();

}
class _AppTitleState extends State<AppTitle>{
  String pokeBallImageUrl ='images/poke.png';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        const Align(alignment:Alignment.topLeft, child: Text('Pokedex')),
        Align(alignment: Alignment.topRight,child: Image.asset(pokeBallImageUrl,width: 200,height: 200,fit: BoxFit.fitWidth,))
      ],
    );
  }

  
}