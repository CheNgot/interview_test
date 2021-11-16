import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_test/dimens.dart';

class InfoWidget extends StatelessWidget {
  var name = "";
  var tag = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            height: 30.w,
            width: 30.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/pawe_lczerwinski.png"),
                  fit: BoxFit.fill
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name),
                Text(tag),
              ],
            ),
          )
        ],
      ),
    );
  }

  InfoWidget(this.name, this.tag);
}
