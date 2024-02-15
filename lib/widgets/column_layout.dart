import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool isColor;
  const AppColumnLayout({Key? key, 
  required this.firstText, 
  required this.secondText, 
  required this.alignment,
  required this.isColor}): super(key: key);
//style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,),
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: isColor==true? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,),
        const Gap(5),
        Text(secondText, style: isColor==true? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,),
        ],
     );
  }
}