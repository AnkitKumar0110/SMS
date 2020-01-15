import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Syllabus extends StatefulWidget {
  final String title;

  Syllabus(this.title);

  @override
  _SyllabusState createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus>
{
  String contact_on = "assets/images/syllabus_on.png",
      summary_off = "assets/images/study_off.png";
  int countValue = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                          'Syllabus & Study Material',
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
                  Container(
                    height: 1,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Container(
//                      decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(8.0),
////                        image: DecorationImage(
////                          image: AssetImage("assets/images/card_background.png"),
////                          fit: BoxFit.fill,
////
////                        ),
//                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text(
                                'January,2020',
                                style: TextStyle(
                                    color: Color(0xff0c1c4d),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      '2019-20',
                                      style: TextStyle(
                                        color: Color(0xffc2c3cb),
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Container(
                      height: 1,
                      color: Colors.white,
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 0, 25, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                contact_on = "assets/images/syllabus_on.png";
                                summary_off = "assets/images/study_off.png";
                                countValue = 0;
                              });
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => ForgotPasswordApp()),
//                );
                            },
                            child: new Image.asset(
                              contact_on,
//                            width: 100,
//                            height: 40,
                            ),
                          ),
                          flex: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 3, 0, 0),
                          child: Container(
                            color: Colors.grey,
//                          height: double.infinity,
//                          width: 1,
                          ),
                        ),
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                contact_on = "assets/images/syllabus_off.png";
                                summary_off = "assets/images/study_on.png";
                                countValue = 1;
                              });
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => ForgotPasswordApp()),
//                );
                            },
                            child: new Image.asset(
                              summary_off,
//                            width: 100,
//                            height: 40,
                            ),
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ),
                  countValue == 0
                      ? Flexible(
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: GestureDetector(
                          onTap: () {
                            FocusScope.of(context)
                                .requestFocus(FocusNode());
                          },
                          child: new Container(
                            child: ListView(
                              children: <Widget>[

                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              shrinkWrap: true,
                              padding:
                              const EdgeInsets.fromLTRB(20, 8, 20, 8),
                            ),
                          ),
                        )),
                  )
                      : Flexible(
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: GestureDetector(
                          onTap: () {
                            FocusScope.of(context)
                                .requestFocus(FocusNode());
                          },
                          child: new Container(
                            child: ListView(
                              children: <Widget>[

                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                                      padding: EdgeInsets.fromLTRB(
                                          20, 20, 20, 20),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Content Title',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff0c1c4d),
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(
                                                    0, 0, 20, 0),
                                                child: Container(
                                                  child: Image.asset(
                                                      'assets/images/attachment.png'),
                                                  width: 20.0,
                                                  height: 20.0,
                                                ),
                                              ),
                                            ],
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      '20 January 2020',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                          ),

                                          Row(
                                            children: <Widget>[

                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Syllabus content included in this text. '
                                                          'Just a text to view content.'
                                                          ' Syllabus content included in this text. '
                                                          'Just a text to view content.',
                                                      style: TextStyle(
                                                        color: Color(
                                                            0xffbfc1cc),
                                                        fontSize: 13,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                              shrinkWrap: true,
                              padding:
                              const EdgeInsets.fromLTRB(20, 8, 20, 8),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}