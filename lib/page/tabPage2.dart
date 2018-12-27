import 'package:flutter/material.dart';
class tabPage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new tabPage2State();
  }
}
//AutomaticKeepAliveClientMixin解决状态改变
class tabPage2State extends State<tabPage2> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      children: <Widget>[

      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;//不销毁
}