import 'package:flutter/material.dart';
class tabPage4 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new tabPage4State();
  }
}
//AutomaticKeepAliveClientMixin解决状态改变
class tabPage4State extends State<tabPage4> with AutomaticKeepAliveClientMixin {
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