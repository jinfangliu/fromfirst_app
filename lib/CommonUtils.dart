import 'package:flutter/material.dart';

class CommonUtils{
  //返回制定宽高的本地图片的Image
  static Image getTabImage(path,width,height,BoxFit boxfit) {
    return new Image.asset(path, width: width, height:height,fit:boxfit ,);
  }

}