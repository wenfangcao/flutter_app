import 'package:flutter/material.dart';
import './home.dart';
import '../config/config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LoginPageState();

}

class LoginPageState extends State<LoginPage> {
  TextEditingController accountController = new TextEditingController();
  TextEditingController pwdController = new TextEditingController();
  bool showError = false;
  GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  String _phone;
  String _pwd;

  void _login() {
    final form = _formkey.currentState;
    if (form.validate()) {
      form.save();
      print('pass');
      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new HomePage()));
    } else {
      print('验证没通过');
    }
    print(api().get('url'));
  }
  void _logout() {
    print(showError);
    showError = true;
    print(showError);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/login_bg.png'), fit: BoxFit.cover),
        ),
        padding: new EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
        child: new Form(
           key: _formkey,
           child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new TextFormField(
                  onSaved: (val)=> this._phone = val,
                  validator: (val) => (val == null || val.isEmpty ) ? '请输入账号' : null,
                  decoration: new InputDecoration(
                    labelText: '账号',
                    labelStyle: new TextStyle(
                      color: Colors.white,
                    ),
                    border: new UnderlineInputBorder(
                      borderSide: new BorderSide(
                        color: Colors.white,
                      )
                    )
                  ),
                  style:  new TextStyle(
                    color: Colors.white
                  ),
                ),
                new TextFormField(
                  validator: (val) => (val == null || val.isEmpty ) ? '请输入密码' : null,
                  decoration: new InputDecoration(
                    labelText: '密码',
                    labelStyle: new TextStyle(
                      color: Colors.white,
                    ),
//                   errorText: '密码不能为空',

                  ),
                ),
                new MaterialButton(
                    child: new Text('登录',
                        style: new TextStyle(
                          color: Colors.white
                        )
                    ),
                    onPressed: _login,
                    disabledColor: Colors.grey,
                    color: Colors.blue[400],
                ),
                new MaterialButton(
                  child: new Text('重置',
                      style: new TextStyle(
                          color: Colors.white
                      )
                  ),
                  onPressed: () {
                    _formkey.currentState.reset();
                  },
                  disabledColor: Colors.grey,
                  color: Colors.blue[400],
                )
              ]
          )
        ),
      ),
    );
  }

}



