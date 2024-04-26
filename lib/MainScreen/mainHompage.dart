import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/MainScreen/friendWidget.dart';
import '../Colors.dart';
colors color = colors();

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(

        child: Row(
          children: <Widget>[
            Row(
              children: [
                Container(height: MediaQuery.of(context).size.height, width:70, color: color.backGroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(

                      children: [
                        sideMenuButton(CupertinoIcons.game_controller_solid),
                        Divider(color: color.selectedColor,indent:10, endIndent: 10, thickness: 2,),
                        SizedBox(height: 5),
                        sideMenuButton(CupertinoIcons.plus),
                        SizedBox(height: 5),
                        sideMenuButton(CupertinoIcons.compass),
                      ],

                                    ),// Sidemenu
                  ),),
                Container(height: MediaQuery.of(context).size.height, width:240, color: color.selectedColor,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(

                        height: 30,
                        child: SearchBar(hintText:"대화 찾기 또는 시작하기", hintStyle: MaterialStateProperty.all(TextStyle(color: color.textColor, fontSize: 12)),backgroundColor:MaterialStatePropertyAll(color.backGroundColor), shape: MaterialStateProperty.all(ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10))),
                        ),

                      ),
                    ),
                    Divider(color: color.backGroundColor,),
                    subSideMenuButton(color, CupertinoIcons.person_alt ,"친구"),
                    subSideMenuButton(color,CupertinoIcons.bolt_horizontal ,"Nitro"),
                    subSideMenuButton(color,Icons.store_mall_directory_sharp ,"상점"),
                  ],
                ),
                ),
              ],
            ),
            Expanded(child: friendWidget()),
          ],
        ),
      ),
    );
  }
}

// ElevatedButton(onPressed: (){}, child: Icon(CupertinoIcons.game_controller_solid),style: ElevatedButton.styleFrom(maximumSize:Size(50,50),minimumSize:Size(50,50),shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)) ),)

Container sideMenuButton(IconData icon){

  return Container(decoration:BoxDecoration(color: color.sideButtonColor, borderRadius: BorderRadius.circular(30)),width:50,height:50, child: IconButton(onPressed:(){}, icon: Icon(icon,color: color.greenThemeColor,),));

}

Padding subSideMenuButton(colors color,IconData icon, String text){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 8),
    child: TextButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: color.selectedColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(icon,color: color.textColor,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(text,style: TextStyle(color: color.textColor, fontSize: 15),),
          ),
        ],
      ), onPressed: (){},),
  );

}

