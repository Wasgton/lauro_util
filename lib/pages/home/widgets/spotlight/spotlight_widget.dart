import 'package:flutter/material.dart';
import 'package:lauro_util/pages/home/widgets/spotlight/card_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SpotlightWidget extends StatefulWidget {
  const SpotlightWidget({Key? key}) : super(key: key);

  @override
  _SpotlightWidgetState createState() => _SpotlightWidgetState();
}

class _SpotlightWidgetState extends State<SpotlightWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Secretarias'),
              GestureDetector(
                child: Text('Ver todos'),
                onTap: ()=>{},
              )
            ],
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 200,
            initialPage: 0,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            viewportFraction: 0.76,
            aspectRatio: 16/9,
            reverse: false,
            autoPlay: false,
          ),
          items: [
            GestureDetector(
              onTap: ()=>{},
              child: CardWidget(),
            ),
            GestureDetector(
              onTap: ()=>{},
              child: CardWidget(),
            ),
            GestureDetector(
              onTap: ()=>{},
              child: CardWidget(),
            ),
          ].toList()
        ),
      ],
    );
  }
}

