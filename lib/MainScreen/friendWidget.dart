import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../Colors.dart';
import 'OnlineFriends.dart';
import 'waitingFriends.dart';
colors color = colors();

class friendWidget extends StatefulWidget{
  const friendWidget({super.key});

  @override
  State<friendWidget> createState() => _friendWidgetState();
}

class _friendWidgetState extends State<friendWidget> {
  containerSelector selector = containerSelector();
  void changeContainer(String text){
    print(selector.currentContainer);
    setState(() {
      selector.currentContainer = text;
    });

  }


  @override
  Widget build(BuildContext context){
    return Container(
      color: color.widgetColor,

      child: Column(children: [
        Container(
          height: 50,
          child: Row(

            children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 8, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding:  const EdgeInsets.only(left: 5),
                    child: Icon(Icons.person,color: color.textColor,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text("친구",style: TextStyle(color: color.textColor,fontWeight: FontWeight.bold,fontSize: 15),),
                  ),
                ],
              ),
            ),
            VerticalDivider(color: color.mainWidgetDevideColor, indent: 15, endIndent: 15, ),

              friendsTopWidgetButton("온라인", () => changeContainer('온라인')),
              friendsTopWidgetButton("모두",() => changeContainer('모두')),
              friendsTopWidgetButton("대기 중",() => changeContainer('대기 중')),
              friendsTopWidgetButton("차단 목록",() => changeContainer('차단 목록')),

            ],
          ),
        ),
        Divider(color: color.backGroundColor),
        mainWidgetContainer(current: selector.currentContainer),
      ],

      ),


    );
  }
}

Padding friendsTopWidgetButton(String text, VoidCallback callback){

  return  Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
    child: Button(text, callback)
  );

}

class containerSelector{
  String currentContainer = '온라인';
  void setCurrentContainerToText(String text){
    currentContainer = text;
  }
}

class mainWidgetContainer extends StatelessWidget{
 // final String current;
  mainWidgetContainer({super.key, required this.current});
  final String current;
  @override
  Widget build(BuildContext context){
    switch(current){
      case '모두':
        return Container(child: Text("모두"));

      case '대기 중':
        return waitingFriends();

      case '온라인':
        return onlineContainer();
      case '차단 목록':
        return Container(child: Text("차단 목록"));
      default:
        return Container(child: Text("모두"),);
    }

  }
}



class Button extends StatelessWidget {
  final String text;
  final VoidCallback callback; // Notice the variable type

  Button(this.text, this.callback);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: callback ,child: Text(text,style: TextStyle(color: color.textColor),));
  }

}

