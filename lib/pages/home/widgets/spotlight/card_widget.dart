import 'package:flutter/material.dart';
import 'package:lauro_util/core/core.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      width: 278,
      height: 158,
      color: AppColors.boxRed,
      child: Row(
        children: [
          Image.asset('lib/assets/icons/null_circle.png'),
          Column(
            children: [
              Text('Secretaria do meio ambiente'),
              Text('secretaria@prefeitura.org.br'),
              Text('71 9 9999-9999'),
            ],
          ),
        ],
      ),
    );
  }
}
