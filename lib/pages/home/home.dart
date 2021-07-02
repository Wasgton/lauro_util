import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lauro_util/pages/home/widgets/appbar_widget.dart';
import 'package:lauro_util/pages/home/widgets/spotlight/spotlight_widget.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(),
        body: Container(
          child: Column(
            children: [
              SpotlightWidget()
            ],
          ),
        ),
      ),
    );
  }
}
