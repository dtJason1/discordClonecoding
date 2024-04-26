import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/MainScreen/friendWidget.dart';


class onlineContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(

        child: SearchBar(hintText:"대화 찾기 또는 시작하기", hintStyle: MaterialStateProperty.all(TextStyle(color: color.textColor, fontSize: 12)),backgroundColor:MaterialStatePropertyAll(color.backGroundColor), shape: MaterialStateProperty.all(ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),);
  }

}
