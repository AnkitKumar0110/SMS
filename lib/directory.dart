import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Directory extends StatefulWidget {
  final String title;

  Directory(this.title);

  @override
  _DirectoryState createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: WillPopScope(
        child: new Container(
          child: new Stack(
            children: <Widget>[
              Container(
                color: Color(0xffebeef3),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 20,
                            ),
                            onPressed: () {
                              if (Navigator.canPop(context)) {
                                Navigator.pop(context);
                              } else {
                                SystemNavigator.pop();
                              }
                            }),
                        Spacer(),
                        Text(
                          'Directory',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff06184a),
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: GestureDetector(
                          onTap: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                          },
                          child: new Container(
                            child: ListView(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                        color: Colors.white),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                                  child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  new DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: new AssetImage(
                                                                    'assets/images/dp.png'),
                                                              ))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Ambarish',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0c1c4d),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .panorama_fish_eye,
                                                              size: 15,
                                                              color: Colors
                                                                      .primaries[
                                                                  Random().nextInt(Colors
                                                                      .primaries
                                                                      .length)],
                                                            ),
                                                            Text(
                                                              'Physics',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff0c1c4d),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'ambarish@dextrousinfo.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Text(
                                                          '012345678',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                                  child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  new DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: new AssetImage(
                                                                    'assets/images/dp.png'),
                                                              ))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Ambarish',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0c1c4d),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .panorama_fish_eye,
                                                              size: 15,
                                                              color: Colors
                                                                      .primaries[
                                                                  Random().nextInt(Colors
                                                                      .primaries
                                                                      .length)],
                                                            ),
                                                            Text(
                                                              'Physics',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff0c1c4d),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'ambarish@dextrousinfo.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Text(
                                                          '012345678',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                                  child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  new DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: new AssetImage(
                                                                    'assets/images/dp.png'),
                                                              ))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Ambarish',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0c1c4d),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .panorama_fish_eye,
                                                              size: 15,
                                                              color: Colors
                                                                      .primaries[
                                                                  Random().nextInt(Colors
                                                                      .primaries
                                                                      .length)],
                                                            ),
                                                            Text(
                                                              'Physics',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff0c1c4d),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'ambarish@dextrousinfo.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Text(
                                                          '012345678',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                                  child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  new DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: new AssetImage(
                                                                    'assets/images/dp.png'),
                                                              ))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Ambarish',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0c1c4d),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .panorama_fish_eye,
                                                              size: 15,
                                                              color: Colors
                                                                      .primaries[
                                                                  Random().nextInt(Colors
                                                                      .primaries
                                                                      .length)],
                                                            ),
                                                            Text(
                                                              'Physics',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff0c1c4d),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'ambarish@dextrousinfo.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Text(
                                                          '012345678',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                                  child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  new DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: new AssetImage(
                                                                    'assets/images/dp.png'),
                                                              ))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Ambarish',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0c1c4d),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .panorama_fish_eye,
                                                              size: 15,
                                                              color: Colors
                                                                      .primaries[
                                                                  Random().nextInt(Colors
                                                                      .primaries
                                                                      .length)],
                                                            ),
                                                            Text(
                                                              'Physics',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff0c1c4d),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'ambarish@dextrousinfo.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Text(
                                                          '012345678',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                                  child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  new DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: new AssetImage(
                                                                    'assets/images/dp.png'),
                                                              ))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Ambarish',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0c1c4d),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .panorama_fish_eye,
                                                              size: 15,
                                                              color: Colors
                                                                      .primaries[
                                                                  Random().nextInt(Colors
                                                                      .primaries
                                                                      .length)],
                                                            ),
                                                            Text(
                                                              'Physics',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff0c1c4d),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'ambarish@dextrousinfo.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Text(
                                                          '012345678',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                                  child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  new DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: new AssetImage(
                                                                    'assets/images/dp.png'),
                                                              ))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Ambarish',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0c1c4d),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .panorama_fish_eye,
                                                              size: 15,
                                                              color: Colors
                                                                      .primaries[
                                                                  Random().nextInt(Colors
                                                                      .primaries
                                                                      .length)],
                                                            ),
                                                            Text(
                                                              'Physics',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff0c1c4d),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'ambarish@dextrousinfo.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Text(
                                                          '012345678',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                                  child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  new DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: new AssetImage(
                                                                    'assets/images/dp.png'),
                                                              ))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Ambarish',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0c1c4d),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .panorama_fish_eye,
                                                              size: 15,
                                                              color: Colors
                                                                      .primaries[
                                                                  Random().nextInt(Colors
                                                                      .primaries
                                                                      .length)],
                                                            ),
                                                            Text(
                                                              'Physics',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff0c1c4d),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'ambarish@dextrousinfo.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Text(
                                                          '012345678',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                                  child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  new DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: new AssetImage(
                                                                    'assets/images/dp.png'),
                                                              ))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Ambarish',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0c1c4d),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .panorama_fish_eye,
                                                              size: 15,
                                                              color: Colors
                                                                      .primaries[
                                                                  Random().nextInt(Colors
                                                                      .primaries
                                                                      .length)],
                                                            ),
                                                            Text(
                                                              'Physics',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff0c1c4d),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'ambarish@dextrousinfo.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Text(
                                                          '012345678',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                                  child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  new DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: new AssetImage(
                                                                    'assets/images/dp.png'),
                                                              ))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Ambarish',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0c1c4d),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .panorama_fish_eye,
                                                              size: 15,
                                                              color: Colors
                                                                      .primaries[
                                                                  Random().nextInt(Colors
                                                                      .primaries
                                                                      .length)],
                                                            ),
                                                            Text(
                                                              'Physics',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff0c1c4d),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'ambarish@dextrousinfo.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Text(
                                                          '012345678',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 0, 20, 0),
                                                  child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration:
                                                          new BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              image:
                                                                  new DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: new AssetImage(
                                                                    'assets/images/dp.png'),
                                                              ))),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Ambarish',
                                                              style: TextStyle(
                                                                  color: Color(
                                                                      0xff0c1c4d),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Spacer(),
                                                            Icon(
                                                              Icons
                                                                  .panorama_fish_eye,
                                                              size: 15,
                                                              color: Colors
                                                                      .primaries[
                                                                  Random().nextInt(Colors
                                                                      .primaries
                                                                      .length)],
                                                            ),
                                                            Text(
                                                              'Physics',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xff0c1c4d),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'ambarish@dextrousinfo.com',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                        Text(
                                                          '012345678',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xffc2c3cb),
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              shrinkWrap: true,
                              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
