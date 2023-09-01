import 'package:flutter/material.dart';
import 'model.dart';
class CategoryWidget extends StatelessWidget {
  CategoryModel categorys;
  int index;
  CategoryWidget(this.categorys,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: categorys.ColorCode
            ,borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(25),
        bottomRight:Radius.circular(index%2==0? 0:25),
        bottomLeft:Radius.circular(index%2!=0? 0:25),
      )
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              categorys.image,
              width: 100,
              height: 100,
              fit: BoxFit.cover, // Maintain aspect ratio and cover the circle
            ),
          ),
          SizedBox(height: 10,),
          Text(categorys.titel),

        ],
      ),
    );
  }
}
