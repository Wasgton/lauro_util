import 'package:flutter/material.dart';
import 'package:lauro_util/core/core.dart';

class CardWidget extends StatefulWidget {

  final String? name;
  final String? email;
  final String? phone;

  const CardWidget({Key? key,this.name, this.email, this.phone}) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(-50.0, 0.0, 0.0),
      decoration: CustomStyles.BoxStyle,
      margin: EdgeInsets.only(top:20, bottom: 20),
      padding: EdgeInsets.all(20),
      width: 278.69,
      child: Row(
        children: [
          Container(
              margin:EdgeInsets.only(right: 10),
              alignment: Alignment.topLeft,
              child: Image.asset('lib/assets/icons/null_circle.png')
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(this.widget.name!, style: CustomTextStyles.titleH1White,),
                Text(this.widget.email!,style: CustomTextStyles.basicTextWhite,),
                Text(this.widget.phone!,style: CustomTextStyles.basicTextWhite),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
