import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyProfile extends StatefulWidget {
  final String title;

  MyProfile(this.title);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  String contact_on = "assets/images/myinfo_on.png",
      summary_off = "assets/images/childinfo_off.png";
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
                          'My Profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff06184a),
                            fontSize: 20,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Image.asset(
                            'assets/images/edit.png',
                            height: 20.0,
                            width: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  countValue == 0
                      ? Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: new DecorationImage(
                                              fit: BoxFit.fill,
                                              image: new AssetImage(
                                                  'assets/images/dp.png'),
                                            ))),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Ambarish',
                                          style: TextStyle(
                                              color: Color(0xff0c1c4d),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Creative Designer',
                                          style: TextStyle(
                                            color: Color(0xff0c1c4d),
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          'ambarish@dextrousinfo.com',
                                          style: TextStyle(
                                            color: Color(0xffc2c3cb),
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 20, 0),
                                          child: Container(
                                              width: 50.0,
                                              height: 50.0,
                                              decoration: new BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: new DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: new AssetImage(
                                                        'assets/images/dp.png'),
                                                  ))),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Student ',
                                                style: TextStyle(
                                                    color: Color(0xff0c1c4d),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                '12th - A',
                                                style: TextStyle(
                                                  color: Color(0xff0c1c4d),
                                                  fontSize: 13,
                                                ),
                                              ),
                                              Text(
                                                'Admission Number: 1234567890',
                                                style: TextStyle(
                                                  color: Color(0xffc2c3cb),
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 20, 0, 5),
                                                  child: Container(
                                                    child: Image.asset(
                                                        'assets/images/hostel.png'),
                                                    width: 25.0,
                                                    height: 25.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Hostel Name',
                                                  style: TextStyle(
                                                    color: Color(0xff0c1c4d),
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                Text(
                                                  'Sri Sai Hostel',
                                                  style: TextStyle(
                                                    color: Color(0xffff7b7c),
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 20, 0, 5),
                                                  child: Container(
                                                    child: Image.asset(
                                                        'assets/images/room_number.png'),
                                                    width: 25.0,
                                                    height: 25.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Room No.',
                                                  style: TextStyle(
                                                    color: Color(0xff0c1c4d),
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                Text(
                                                  '102',
                                                  style: TextStyle(
                                                    color: Color(0xff60c9fe),
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      0, 20, 0, 5),
                                                  child: Container(
                                                    child: Image.asset(
                                                        'assets/images/student.png'),
                                                    width: 25.0,
                                                    height: 25.0,
                                                  ),
                                                ),
                                                Text(
                                                  'Students',
                                                  style: TextStyle(
                                                    color: Color(0xff0c1c4d),
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                Text(
                                                  '100+',
                                                  style: TextStyle(
                                                    color: Color(0xffffa66b),
                                                    fontSize: 13,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
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
                                contact_on = "assets/images/myinfo_on.png";
                                summary_off = "assets/images/childinfo_off.png";
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
                                contact_on = "assets/images/myinfo_off.png";
                                summary_off = "assets/images/childinfo_on.png";
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
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/name.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'Name',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              'Ambrish Singh ',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/zipcode.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'ZipCode',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              '201301',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/state.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'State',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              'Uttar Pradesh',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/address.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'Address',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              'B-32, Naraina Village\nNew Delhi',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/contact_info.png'),
                                                        width: 25.0,
                                                        height: 25.0,
                                                      ),
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
                                                          Text(
                                                            'Contact Information',
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
                                                  ],
                                                ),
                                                Divider(),
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/phone.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'Phone',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              '+91- 9899989998',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/email.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'Email',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              'info@bizsol.com',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
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
                              padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
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
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                                10, 10, 10, 10),
                                            child: Column(
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/name.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'Name',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              'Ambrish Singh ',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/dob.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'DOB',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              '16/01/2020',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/house.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'House',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              'Uttar Pradesh',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/vehicle.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'Vehicle Alloted',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              'DL 8C BX 1234',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/email.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'Email',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              'xyz@gmail.com',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Divider(),
                                                Row(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 20, 0),
                                                      child: Container(
                                                        child: Image.asset(
                                                            'assets/images/phone.png'),
                                                        width: 20.0,
                                                        height: 20.0,
                                                      ),
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
                                                          Text(
                                                            'Phone',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff0c1c4d),
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
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
                                                          Align(
                                                            child: Text(
                                                              '0123456789',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xffbfc1cc),
                                                                fontSize: 13,
                                                              ),
                                                            ),
                                                            alignment: Alignment
                                                                .centerRight,
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
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
//                        image: DecorationImage(
//                          image: AssetImage("assets/images/card_background.png"),
//                          fit: BoxFit.fill,
//
//                        ),
                                      color: Colors.white),
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
