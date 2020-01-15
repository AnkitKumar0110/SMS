import 'package:flutter/material.dart';
import 'package:school_management_system/directory.dart';
import 'package:school_management_system/homework_and_assignments.dart';
import 'package:school_management_system/login_screen.dart';
import 'package:school_management_system/my_profile.dart';
import 'package:school_management_system/school_information.dart';
import 'package:school_management_system/syllabus_and_study_material.dart';
import 'package:school_management_system/timetable.dart';
import 'package:school_management_system/upcoming_birthday.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
        primaryColor: Color(0xff0c1c4d),
        fontFamily: 'Poppins',
      ),
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        "/profile": (BuildContext context) => new MyProfile('My Profile'),
        "/directory": (BuildContext context) => new Directory('Directory'),
        "/school_info": (BuildContext context) => new SchoolInfo(),
        "/school_info": (BuildContext context) => new SchoolInfo(),
        "/syllabus": (BuildContext context) => new Syllabus('Syllabus'),
        "/homework": (BuildContext context) => new Homework('Homework'),
        "/timetable": (BuildContext context) => new TimeTable('TimeTable'),
        "/birthdays": (BuildContext context) =>
        new UpcomingBirthdays('Upcoming Birthdays'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(''),
        centerTitle: true,
      ),
      drawer: new Drawer(
        child: Container(
          color: Colors.white,
          child: new ListView(
            children: <Widget>[
//              Padding(
//                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
//                child: Row(
//                  children: <Widget>[
//                    Padding(
//                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
//                      child: Container(
//                          width: 50.0,
//                          height: 50.0,
//                          decoration: new BoxDecoration(
//                              shape: BoxShape.circle,
//                              image: new DecorationImage(
//                                fit: BoxFit.fill,
//                                image:
//                                new AssetImage('assets/images/clients.png'),
//                              ))),
//                    ),
//                    Column(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      mainAxisAlignment: MainAxisAlignment.start,
//                      children: <Widget>[
//                        Padding(
//                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
//                          child: Text(
//                            'Ambarish',
//                            style: TextStyle(
//                                color: Color(0xff0c1c4d),
//                                fontSize: 18,
//                                fontWeight: FontWeight.bold),
//                          ),
//                        ),
//                        Text(
//                          'Creative Designer',
//                          style: TextStyle(color: Color(0xff0c1c4d)),
//                        ),
//                        Text(
//                          'ambarish@dextrousinfo.com',
//                          style: TextStyle(color: Color(0xffc2c3cb)),
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
//              ),
//              Divider(),

            new UserAccountsDrawerHeader(accountName: new Text('Ambrish'), accountEmail: new Text('ambrish@dextrousinfo.com'),

            currentAccountPicture: new Container(
                width: 50.0,
                height: 50.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image:
                      new AssetImage('assets/images/dp.png'),
                    ))),),

              new ListTile(
                title: new Text(
                  'Home',
                  style: TextStyle(color: Color(0xff0c1c4d)),
                ),
                leading: new Image.asset(
                  'assets/images/home.png',
                  height: 20.0,
                  width: 20.0,
                  fit: BoxFit.cover,
                ),
              ),
              new ListTile(
                title: new Text(
                  'School Information',
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Color(0xff0c1c4d)),
                ),
                leading: new Image.asset(
                  'assets/images/schoolinfo.png',
                  height: 20.0,
                  width: 20.0,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/school_info");
                },
              ),
              new ListTile(
                title: new Text(
                  'My Profile',
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Color(0xff0c1c4d)),
                ),
                leading: new Image.asset(
                  'assets/images/profile.png',
                  height: 20.0,
                  width: 20.0,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/profile");
                },
              ),
              new ListTile(
                title: new Text(
                  'Calendar',
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Color(0xff0c1c4d)),
                ),
                leading: new Image.asset(
                  'assets/images/calendar.png',
                  height: 20.0,
                  width: 20.0,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/syllabus");
                },
              ),
              new ListTile(
                title: new Text(
                  'Directory',
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Color(0xff0c1c4d)),
                ),
                leading: new Image.asset(
                  'assets/images/directory.png',
                  height: 20.0,
                  width: 20.0,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/directory");
                },
              ),
              new ListTile(
                title: new Text(
                  'Upcoming Birthdays',
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Color(0xff0c1c4d)),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/birthdays");
                },
                leading: new Image.asset(
                  'assets/images/birthday.png',
                  height: 20.0,
                  width: 20.0,
                  fit: BoxFit.cover,
                ),
              ),
              new ListTile(
                title: new Text(
                  'Share App',
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Color(0xff0c1c4d)),
                ),
                leading: new Image.asset(
                  'assets/images/share.png',
                  height: 20.0,
                  width: 20.0,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/homework");
                },
              ),
              new ListTile(
                title: new Text(
                  'Change Password',
                  style: TextStyle(
                      fontFamily: 'Poppins', color: Color(0xff0c1c4d)),
                ),
                leading: new Image.asset(
                  'assets/images/password.png',
                  height: 20.0,
                  width: 20.0,
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/timetable");
                },
              ),

              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 10, 0.0, 20.0),
                    child: Container(
                        decoration: new BoxDecoration(
                            border: Border.all(color: Color(0xff1e305e)),
                            borderRadius:
                            new BorderRadius.all(new Radius.circular(18.0)),
                            color: Color(0xff1e305e)),
                        padding: new EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/images/signout.png',
                              height: 20.0,
                              width: 20.0,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.fromLTRB(5.0, 0, 5.0, .0),
                              child: Text(
                                'Signout',
                                style: new TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        )),
                  ),
                  Spacer(),
                  Spacer(),
                ],
              ),

//            Padding(
//              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//
//            ),
            ],
          ),
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Home Page'),
          ],
        ),
      ),
    );
  }
}
