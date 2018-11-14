//_loadData() async {
////    String dataURL = "https://dev.dongxicc.cn/WeCloud/Hardware/packages";
////    var res = await HttpUtil().get(dataURL);
////    setState(() {
////      if (res['status'] == '1') {
////        print(res['result']['total']);
////        list = res['result'];
////      }
////    });
//}
//
//@override
//void initState() {
//  super.initState();
//
//  _loadData();
//}
import 'package:flutter/material.dart';
import './home.dart';

class OthersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new OthersPageState();

}

class OthersPageState extends State<OthersPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new GestureDetector(
          onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage())),
          child: new Text('这是others界面'),
        ),
      ),
    );
  }

}

