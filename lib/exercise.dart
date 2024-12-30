import 'package:flutter/cupertino.dart';

Widget Exercise ({required String exerName , required String exerImage ,
  required Color exerColor }){
  return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: exerColor,
        ),
        child: Row(
          children:[
            Image(image: AssetImage('assets/images/$exerImage.png' ,) ,),
            SizedBox(width: 16,),
            Text("$exerName" , style: TextStyle( fontSize: 14 ,fontWeight: FontWeight.bold ),),
          ],
        )

  );

}
