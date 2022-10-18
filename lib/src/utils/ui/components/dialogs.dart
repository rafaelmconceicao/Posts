import 'dart:async';

import 'package:flutter/material.dart';
import 'package:posts/src/utils/helper/colors_helper.dart';

customDialog({required BuildContext context, required String title,
required String description,
  bool? backTwoPages,
  Widget? navigation,
required bool closeOnly, }){
  var customDialog = Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 25,),
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                  height: 45,
                  child: TextButton(
                    onPressed: () {
                      if (closeOnly == true) {
                        Navigator.of(context).pop();
                      } else if (backTwoPages == true) {
                        Navigator.of(context)
                          ..pop()
                          ..pop();
                      } else {
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(builder: (builder) => navigation!), (
                                  route) => false);

                      }
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: ThemeApp.primary,
                      primary: Colors.white24,
                      padding: const EdgeInsets.all(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Text(
                          'OK',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        )
      ],
    ),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) => customDialog,
  );
}



