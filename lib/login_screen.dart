import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_management_system/main.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;

  bool toggleValue = false;

  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  String _email = "";
  String _password = "";

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  String validatePassword(String value) {
    if (value.length == 0) {
      return "Password is Required";
    } else {
      return null;
    }
  }

  Widget _formLogin(BuildContext context) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            child: new TextFormField(
              controller: _emailFilter,
              cursorColor: Colors.grey,
              decoration: new InputDecoration(
                labelText: 'Email',
//                focusColor: Color(0xFF253F5A),
                fillColor: Color(0xFF001446),
                focusColor: Color(0xFF001446),
                suffixIcon: Icon(
                  Icons.email,
                  color: Color(0xFFB6BEC8),
                ),

                hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.0,
                    color: Color(0xFF001446)),
                labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.0,
                    color: Color(0xFF001446)),
              ),
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.0,
                  color: Color(0xFFB6BEC8)),
              validator: validateEmail,
              onSaved: (String val) {
                _email = val;
              },
            ),
          ),
          Container(
            height: 10,
          ),
          new Container(
            child: new TextFormField(
              controller: _passwordFilter,
              cursorColor: Colors.grey,
              decoration: new InputDecoration(
                labelText: 'Password',
                hoverColor: Color(0xFFB6BEC8),
                suffixIcon: Icon(
                  Icons.vpn_key,
                  color: Color(0xFFB6BEC8),
                ),
                hintStyle: TextStyle(
                    fontFamily: 'Poppins', fontSize: 15.0, color: Colors.grey),
                fillColor: Color(0xFF001446),
                focusColor: Color(0xFF001446),
                labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15.0,
                    color: Color(0xFF001446)),
              ),
              obscureText: true,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15.0,
                  color: Color(0xFFB6BEC8)),
              validator: validatePassword,
              onSaved: (String val) {
                _password = val;
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: WillPopScope(
          child: new Container(
              color: Color(0xffebeef3),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Spacer(),
                        Image.asset(
                          'assets/images/logo-color.png',
                          width: 140,
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50.0, 60.0, 50.0, 0.0),
                    child: Align(
                      child: new Text(
                        'Login to your',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF061848),
                          fontSize: 25,
                          letterSpacing: -1,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50.0, 0, 50.0, 0.0),
                    child: Align(
                      child: new Text(
                        'Account',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF061848),
                          fontSize: 25,
                          letterSpacing: -2,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 5, 0, 5),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
                          child: Text(
                            'Parent',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF061848),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                        Card(
                          color: Color.fromRGBO(255, 255, 255, 0),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10)),
                              side: BorderSide(
                                  width: 0, color: Color(0xFFEEEEEE))),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            height: 25.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color:
                                    toggleValue ? Colors.white : Colors.white),
                            child: Stack(
                              children: <Widget>[
                                AnimatedPositioned(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                  top: 0.0,
                                  bottom: 0.0,
                                  left: toggleValue ? 30.0 : 0.0,
                                  right: toggleValue ? 0.0 : 30.0,
                                  child: InkWell(
                                    onTap: toggleButton,
                                    child: AnimatedSwitcher(
                                        duration: Duration(milliseconds: 500),
                                        transitionBuilder: (Widget child,
                                            Animation<double> animation) {
                                          return ScaleTransition(
                                            child: child,
                                            scale: animation,
                                          );
                                        },
                                        child: toggleValue
                                            ? Image.asset(
                                                'assets/images/teacher.png',
                                                height: 20,
                                                width: 20,
                                                fit: BoxFit.fill,
                                                key: UniqueKey(),
                                              )
                                            : Image.asset(
                                                'assets/images/parents.png',
                                                height: 20,
                                                width: 20,
                                                fit: BoxFit.fill,
                                                key: UniqueKey(),
                                              )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Text(
                            'Teacher',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFFe48f34),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50.0, 0, 50.0, 0.0),
                    child: Align(
                      child: new Form(
                        key: _key,
                        autovalidate: _validate,
                        child: _formLogin(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 0.0),
                    child: new Text(
                      "Forgot Password?",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF061848),
                          fontSize: 13,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  GestureDetector(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50.0, 40, 50.0, 0.0),
                            child: Container(

                              decoration: new BoxDecoration(
                                  border: Border.all(color: Color(0xffe69034)),
                                  borderRadius: new BorderRadius.all(
                                      new Radius.circular(15.0)),
                                  color: Color.fromARGB(50, 255, 255, 255)),
                              padding:
                              new EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0.0, 0, 5.0, .0),
                                    child: Text(

                                      'Login',
                                      style: new TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffe69034),
                                          fontSize: 15),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xffe69034),
                                    size: 13,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()),
                        )
                      }
                  )





                ],
    ),)
        ),
        resizeToAvoidBottomPadding: true);
  }

  toggleButton() {
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
