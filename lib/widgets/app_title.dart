import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedexapplication/constants/constants.dart';
import 'package:pokedexapplication/constants/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  _AppTitleState createState() => _AppTitleState();

}
class _AppTitleState extends State<AppTitle>{
  String pokeBallImageUrl ='images/pokeball.png';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
           Padding(
               padding: UIHelper.getDefaultPadding(),
               child: Align(alignment:Alignment.centerLeft, child: Text(Constants.title,style:Constants.titleStyle() ,))),
          Align(alignment: Alignment.topRight,child: Image.asset(pokeBallImageUrl,
            width: ScreenUtil().orientation ==Orientation.portrait ? 0.2.sh :0.2.sw,

            fit: BoxFit.fitWidth,))
        ],
      ),
    );
  }

  
}