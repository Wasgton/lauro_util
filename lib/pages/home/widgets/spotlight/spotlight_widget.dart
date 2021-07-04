import 'package:flutter/material.dart';
import 'package:lauro_util/assets/styles/custom_text_styles.dart';
import 'package:lauro_util/pages/home/widgets/spotlight/card_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lauro_util/models/secretaries.dart';

class SpotlightWidget extends StatefulWidget {
  const SpotlightWidget({Key? key}) : super(key: key);

  @override
  _SpotlightWidgetState createState() => _SpotlightWidgetState();
}

class _SpotlightWidgetState extends State<SpotlightWidget> {

  List<Secretaries> secretaryList =  const <Secretaries>[
    const Secretaries(name: 'Secretaria do desenvolvimento urbano', email: 'secretaria@prefeitura.org.br', phone: '71 9 9999-8888'),
    const Secretaries(name: 'Secretaria do Meio Ambiente', email: 'secretaria@prefeitura.org.br', phone: '71 9 9999-8888'),
    const Secretaries(name: 'Secretaria do Saneamento Basico', email: 'secretaria@prefeitura.org.br', phone: '71 9 9999-8888'),
    const Secretaries(name: 'Secretaria de Gestão', email: 'secretaria@prefeitura.org.br', phone: '71 9 9999-8888'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Secretarias',style: CustomTextStyles.titleH2,),
              GestureDetector(
                child: Text('Ver todos',style: CustomTextStyles.basicTextblack,),
                onTap: ()=>{},
              )
            ],
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            reverse: false,
            autoPlay: false,
            enableInfiniteScroll: false,
            height: 190,
            initialPage: 0,
            viewportFraction: 0.72,
          ),
          items: secretaryList
              .map((secretary) =>
                  GestureDetector(
                      onTap: ()=>{},
                      child: CardWidget(name: secretary.name,email: secretary.email, phone: secretary.phone ),
                    ),
              ).toList()
        ),
      ],
    );
  }
}
