import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UpcomingBirthdays extends StatefulWidget {
  final String title;

  UpcomingBirthdays(this.title);

  @override
  _UpcomingBirthdaysState createState() => _UpcomingBirthdaysState();
}

class _UpcomingBirthdaysState extends State<UpcomingBirthdays> {
  String contact_on = "assets/images/week_on.png",
      summary_off = "assets/images/day_off.png";
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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
                          'Upcoming Birthdays',
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 10),
                    child: Container(
                      width: 250,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                          color: Colors.white),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  contact_on = "assets/images/week_on.png";
                                  summary_off = "assets/images/day_off.png";
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
                                  contact_on = "assets/images/week_off.png";
                                  summary_off = "assets/images/day_on.png";
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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 0, 20, 0),
                                              child: Container(
                                                child: Image.asset(
                                                    'assets/images/birthday_profile.png'),
                                                width: 20.0,
                                                height: 20.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              child: Text(
                                                'Students',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff001346)),
                                              ),
                                            ),
                                            Spacer(),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 20, 0),
                                              child: Text(
                                                'See All',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xffbfc1cc)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: SizedBox(
                                            height: 180.0,
                                            child: ListView.builder(
                                                physics:
                                                    ClampingScrollPhysics(),
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: 15,
                                                itemBuilder: (BuildContext
                                                            context,
                                                        int index) =>
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        //borderRadius: BorderRadius.circular(40.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                                        color:
                                                            Color(0xffebeef3),
                                                      ),
                                                      width: 200.0,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                                          color: (Colors
                                                                  .accents[
                                                              Random().nextInt(
                                                                  Colors.accents
                                                                      .length)])[100],
                                                        ),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          20,
                                                                          10),
                                                                  child: Container(
                                                                      width: 25.0,
                                                                      height: 25.0,
                                                                      decoration: new BoxDecoration(
                                                                          shape: BoxShape.circle,
                                                                          image: new DecorationImage(
                                                                            fit:
                                                                                BoxFit.fill,
                                                                            image:
                                                                                new AssetImage('assets/images/dp.png'),
                                                                          ))),
                                                                ),
                                                                Spacer(),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            10),
                                                                    child: Text(
                                                                      '17th Jan 2020',
                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff0c1c4d),
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                child: Image.asset(
                                                                    'assets/images/confetti.png'),
                                                                width: 75.0,
                                                                height: 75.0,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Ambrish',
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff0c1c4d),
                                                                    fontSize:
                                                                        13,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )),
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 0, 20, 0),
                                              child: Container(
                                                child: Image.asset(
                                                    'assets/images/birthday_profile.png'),
                                                width: 20.0,
                                                height: 20.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              child: Text(
                                                'Teachers',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff001346)),
                                              ),
                                            ),
                                            Spacer(),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 20, 0),
                                              child: Text(
                                                'See All',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xffbfc1cc)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: SizedBox(
                                            height: 180.0,
                                            child: ListView.builder(
                                                physics:
                                                    ClampingScrollPhysics(),
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: 15,
                                                itemBuilder: (BuildContext
                                                            context,
                                                        int index) =>
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        //borderRadius: BorderRadius.circular(40.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                                        color:
                                                            Color(0xffebeef3),
                                                      ),
                                                      width: 200.0,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                                          color: (Colors
                                                                  .accents[
                                                              Random().nextInt(
                                                                  Colors.accents
                                                                      .length)])[100],
                                                        ),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          20,
                                                                          10),
                                                                  child: Container(
                                                                      width: 25.0,
                                                                      height: 25.0,
                                                                      decoration: new BoxDecoration(
                                                                          shape: BoxShape.circle,
                                                                          image: new DecorationImage(
                                                                            fit:
                                                                                BoxFit.fill,
                                                                            image:
                                                                                new AssetImage('assets/images/dp.png'),
                                                                          ))),
                                                                ),
                                                                Spacer(),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            10),
                                                                    child: Text(
                                                                      '17th Jan 2020',
                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff0c1c4d),
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                child: Image.asset(
                                                                    'assets/images/confetti.png'),
                                                                width: 75.0,
                                                                height: 75.0,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Ambrish',
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff0c1c4d),
                                                                    fontSize:
                                                                        13,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )),
                                          ),
                                        ),
                                        Divider(),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
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
                                                                  fit: BoxFit
                                                                      .fill,
                                                                  image: new AssetImage(
                                                                      'assets/images/dp.png'),
                                                                ))),
                                                  ),
                                                  Expanded(
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
                                                            Text(
                                                              '6 min Ago',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Happy Birthday!!!',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          10,
                                                                          0),
                                                              child: Container(
                                                                  width: 20.0,
                                                                  height: 20.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/smile.png'),
                                                                          ))),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/yelconfeti.png'),
                                                                          ))),
                                                            ),
                                                          ],
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
                                          padding:
                                              EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
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
                                                                  fit: BoxFit
                                                                      .fill,
                                                                  image: new AssetImage(
                                                                      'assets/images/dp.png'),
                                                                ))),
                                                  ),
                                                  Expanded(
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
                                                            Text(
                                                              '6 min Ago',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Happy Birthday!!!',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          10,
                                                                          0),
                                                              child: Container(
                                                                  width: 20.0,
                                                                  height: 20.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/smile.png'),
                                                                          ))),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/redconfeti.png'),
                                                                          ))),
                                                            ),
                                                          ],
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
                                          padding:
                                              EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
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
                                                                  fit: BoxFit
                                                                      .fill,
                                                                  image: new AssetImage(
                                                                      'assets/images/dp.png'),
                                                                ))),
                                                  ),
                                                  Expanded(
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
                                                            Text(
                                                              '6 min Ago',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Happy Birthday!!!',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          10,
                                                                          0),
                                                              child: Container(
                                                                  width: 20.0,
                                                                  height: 20.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/smile.png'),
                                                                          ))),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/yelconfeti.png'),
                                                                          ))),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 0, 20, 0),
                                              child: Container(
                                                child: Image.asset(
                                                    'assets/images/birthday_profile.png'),
                                                width: 20.0,
                                                height: 20.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              child: Text(
                                                'Students',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff001346)),
                                              ),
                                            ),
                                            Spacer(),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 20, 0),
                                              child: Text(
                                                'See All',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xffbfc1cc)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: SizedBox(
                                            height: 180.0,
                                            child: ListView.builder(
                                                physics:
                                                    ClampingScrollPhysics(),
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: 15,
                                                itemBuilder: (BuildContext
                                                            context,
                                                        int index) =>
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        //borderRadius: BorderRadius.circular(40.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                                        color:
                                                            Color(0xffebeef3),
                                                      ),
                                                      width: 200.0,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                                          color: (Colors
                                                                  .accents[
                                                              Random().nextInt(
                                                                  Colors.accents
                                                                      .length)])[100],
                                                        ),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          20,
                                                                          10),
                                                                  child: Container(
                                                                      width: 25.0,
                                                                      height: 25.0,
                                                                      decoration: new BoxDecoration(
                                                                          shape: BoxShape.circle,
                                                                          image: new DecorationImage(
                                                                            fit:
                                                                                BoxFit.fill,
                                                                            image:
                                                                                new AssetImage('assets/images/dp.png'),
                                                                          ))),
                                                                ),
                                                                Spacer(),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            10),
                                                                    child: Text(
                                                                      '17th Jan 2020',
                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff0c1c4d),
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                child: Image.asset(
                                                                    'assets/images/confetti.png'),
                                                                width: 75.0,
                                                                height: 75.0,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Ambrish',
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff0c1c4d),
                                                                    fontSize:
                                                                        13,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )),
                                          ),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  20, 0, 20, 0),
                                              child: Container(
                                                child: Image.asset(
                                                    'assets/images/birthday_profile.png'),
                                                width: 20.0,
                                                height: 20.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0),
                                              child: Text(
                                                'Teachers',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xff001346)),
                                              ),
                                            ),
                                            Spacer(),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 20, 0),
                                              child: Text(
                                                'See All',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xffbfc1cc)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: SizedBox(
                                            height: 180.0,
                                            child: ListView.builder(
                                                physics:
                                                    ClampingScrollPhysics(),
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: 15,
                                                itemBuilder: (BuildContext
                                                            context,
                                                        int index) =>
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(10),
                                                      decoration: BoxDecoration(
                                                        //borderRadius: BorderRadius.circular(40.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                                        color:
                                                            Color(0xffebeef3),
                                                      ),
                                                      width: 200.0,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                                          color: (Colors
                                                                  .accents[
                                                              Random().nextInt(
                                                                  Colors.accents
                                                                      .length)])[100],
                                                        ),
                                                        padding:
                                                            EdgeInsets.all(10),
                                                        child: Column(
                                                          children: <Widget>[
                                                            Row(
                                                              children: <
                                                                  Widget>[
                                                                Padding(
                                                                  padding: EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          20,
                                                                          10),
                                                                  child: Container(
                                                                      width: 25.0,
                                                                      height: 25.0,
                                                                      decoration: new BoxDecoration(
                                                                          shape: BoxShape.circle,
                                                                          image: new DecorationImage(
                                                                            fit:
                                                                                BoxFit.fill,
                                                                            image:
                                                                                new AssetImage('assets/images/dp.png'),
                                                                          ))),
                                                                ),
                                                                Spacer(),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            10),
                                                                    child: Text(
                                                                      '17th Jan 2020',
                                                                      style: TextStyle(
                                                                          color: Color(
                                                                              0xff0c1c4d),
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                child: Image.asset(
                                                                    'assets/images/confetti.png'),
                                                                width: 75.0,
                                                                height: 75.0,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                'Ambrish',
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff0c1c4d),
                                                                    fontSize:
                                                                        13,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )),
                                          ),
                                        ),
                                        Divider(),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
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
                                                                  fit: BoxFit
                                                                      .fill,
                                                                  image: new AssetImage(
                                                                      'assets/images/dp.png'),
                                                                ))),
                                                  ),
                                                  Expanded(
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
                                                            Text(
                                                              '6 min Ago',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Happy Birthday!!!',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          10,
                                                                          0),
                                                              child: Container(
                                                                  width: 20.0,
                                                                  height: 20.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/smile.png'),
                                                                          ))),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/yelconfeti.png'),
                                                                          ))),
                                                            ),
                                                          ],
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
                                          padding:
                                              EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
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
                                                                  fit: BoxFit
                                                                      .fill,
                                                                  image: new AssetImage(
                                                                      'assets/images/dp.png'),
                                                                ))),
                                                  ),
                                                  Expanded(
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
                                                            Text(
                                                              '6 min Ago',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Happy Birthday!!!',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          10,
                                                                          0),
                                                              child: Container(
                                                                  width: 20.0,
                                                                  height: 20.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/smile.png'),
                                                                          ))),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/redconfeti.png'),
                                                                          ))),
                                                            ),
                                                          ],
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
                                          padding:
                                              EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                                              child: Row(
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
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
                                                                  fit: BoxFit
                                                                      .fill,
                                                                  image: new AssetImage(
                                                                      'assets/images/dp.png'),
                                                                ))),
                                                  ),
                                                  Expanded(
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
                                                            Text(
                                                              '6 min Ago',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Happy Birthday!!!',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffc2c3cb),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            Spacer(),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          10,
                                                                          0),
                                                              child: Container(
                                                                  width: 20.0,
                                                                  height: 20.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/smile.png'),
                                                                          ))),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      new BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          image:
                                                                              new DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                new AssetImage('assets/images/redconfeti.png'),
                                                                          ))),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
