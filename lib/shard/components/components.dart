

import 'package:flutter/material.dart';

void showMessage(BuildContext context,String message,String actionName,VoidCallback actionCallBack){

  showDialog(context: context, builder: (c){
    return AlertDialog(
      content: Text(message),
      actions: [
        TextButton(onPressed: actionCallBack, child: Text(actionName)),
      ],

    );
  });
}

void showLoading(BuildContext context,String text){

  showDialog(context: context, builder: (c){
    return AlertDialog(
      content: Row(
        children: [
          CircularProgressIndicator()
          ,SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),


    );
  });
}

void hideBottomSheet(BuildContext context){
  Navigator.pop(context);
}