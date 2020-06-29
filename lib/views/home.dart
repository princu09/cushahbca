import 'package:flutter/material.dart';
import 'package:quiz_nfg2/views/signin.dart';
import 'package:dynamic_theme/dynamic_theme.dart';

class Home extends StatefulWidget {

  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 45),
                ),
                Text(
                  "C.U.Shah BCA",
                  style: TextStyle(
                      // shadows: [
                      //   Shadow(
                      //     blurRadius: 5.0,
                      //     color: Colors.black38,
                      //     offset: Offset(2.0, 2.0),
                      //   ),
                      // ],
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                ),
              ],
            ),
            centerTitle: true,
            elevation: 0.0,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/nfg.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: null,
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.import_contacts),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Assignments'),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.assignment_turned_in),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Attendance'),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.insert_chart),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Exam Grades'),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.school),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('University Updates'),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.airline_seat_individual_suite),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Holidays'),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.photo_library),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Gallery'),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                Divider(),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.call),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Contact Us'),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.account_circle),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('About Us'),
                      ),
                    ],
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.exit_to_app),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('LogOut'),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );

                    // Update the state of the app.
                    // ...
                  },
                ),
                Divider(),
                ListTile(
                  title: Row(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: FractionalOffset.center,
                            child: Text("V 1.0.0"),
                          )),

                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child:IconButton(icon: Icon(Icons.brightness_4),
                          onPressed: changeBrightness,

                        ),
                      ),
                      )],
                  ),
                ),
              ],
            ),
          ),
      );
  
    }
  
   
    void changeBrightness() {
      DynamicTheme.of(context).setBrightness(
          Theme.of(context).brightness == Brightness.dark
              ? Brightness.light
              : Brightness.dark);
    }
  }
  

