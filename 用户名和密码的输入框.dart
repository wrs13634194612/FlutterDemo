import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

//焦点
FocusNode passwordFocusNode = FocusNode();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: LoginLayout(),
      ),
    );
  }
}

class LoginLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement buildreturn
    return Container(
      child: Column(
        children: <Widget>[
          UserNameInputTextField(),
          PasswordInputTextField(),
          LoginButton()
        ],
      ),
    );
  }
}

class UserNameInputTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UserNameInputTestFieldState();
  }
}

class UserNameInputTestFieldState extends State<UserNameInputTextField> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
        textInputAction: TextInputAction.next,
        onEditingComplete: () =>
            FocusScope.of(context).requestFocus(passwordFocusNode),
        onChanged: (content) => {debugPrint("UserName input:" + content)},
        autofocus: true,
        controller: usernameController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: "登录名",
            hintText: "在此输入您的手机号或者邮箱号"));
  }
}

class PasswordInputTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PasswordInputTextFieldState();
  }
}

class PasswordInputTextFieldState extends State<PasswordInputTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        textInputAction: TextInputAction.done,
        onSubmitted: (content) => debugPrint("UserName:" +
            usernameController.text +
            "Password:" +
            passwordController.text),
        focusNode: passwordFocusNode,
        maxLength: 8,
        controller: passwordController,
        obscureText: true,
        maxLengthEnforced: false,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: "密码",
            hintText: "在此输入登录密码"));
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        child: Text("登录"),
        onPressed: () {
          debugPrint("Username:" +
              usernameController.text +
              '\n' +
              "Password:" +
              passwordController.text);
        });
  }
}
