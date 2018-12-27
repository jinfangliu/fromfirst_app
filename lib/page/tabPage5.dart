import 'package:flutter/material.dart';
class tabPage5 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new tabPage5State();
  }
}
//AutomaticKeepAliveClientMixin解决状态改变
class tabPage5State extends State<tabPage5> with AutomaticKeepAliveClientMixin {
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