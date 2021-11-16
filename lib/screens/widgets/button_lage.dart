import 'package:flutter/material.dart';
import 'package:interview_test/dimens.dart';

class ButtonLage extends StatelessWidget {
  var title ="";
  var color = Colors.white;
  var colorText = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 52.w,
      width: 170.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(6.r)),
        border: Border.all(
          width: 2.w,
          color: Colors.black
        )
      ),
      child: Text(title.toUpperCase(),style: TextStyle(
        fontSize: 13.t,
        fontWeight: FontWeight.w900,
        color: colorText

      ),),
    );
  }

  ButtonLage({required this.title, required this.color,required this.colorText});
}
