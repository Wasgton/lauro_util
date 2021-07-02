import 'package:flutter/material.dart';
import 'package:lauro_util/core/core.dart';

class AppBarWidget extends PreferredSize {

  AppBarWidget():super(
    preferredSize: Size.fromHeight(250),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 39),
            width: 250,
            child: Text(
              'Encontre onde realizar o seu serviços ',
              style: CustomTextStyles.titleMontSerratH1,
            )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 410,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Procure aqui por serviços ou secretarias',
                  prefixIcon: Image.asset('lib/assets/icons/magnifier.png'),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(width: 1, color: AppColors.border)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(width: 1, color: AppColors.border)
                  ),
                ),
                style: CustomTextStyles.textFieldLabel,
              ),
            ),
          ],
        )
      ],
    )
  );
}