import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_nfg2/helper/functions.dart';
import 'package:quiz_nfg2/services/auth.dart';
import 'home.dart';

class SignIn extends StatefulWidget {
  
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  
  final _formKey = GlobalKey<FormState>();
  String email, password;
  AuthService authService = new AuthService();

  bool _isLoading = false;

  signIn() async {
    if (_formKey.currentState.validate()) {
      setState(() {
        _isLoading = true;
      });

      await authService.signInEmailAndPass(email, password).then((val) {

        if (val != null) {
          setState(() {
            _isLoading = false;
          });
         HelperFunctions.saveUserLoggedInDetails(isLoggedin: true);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Home()));
        }
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        _isLoading
            ? Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : Form(
                key: _formKey,
                child: SingleChildScrollView(
                                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/background-Recovered.png'),
                                  fit: BoxFit.fill)),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 50),
                                child: Center(
                                  child: Text(
                                    "C.U.Shah BCA",
                                    style: TextStyle(
                                        shadows: [Shadow(
                                          blurRadius: 5.0,
                                          color: Colors.black38,
                                          offset: Offset(2.0, 2.0),
                                        ),],
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(30.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //       color:
                                    //           Color.fromRGBO(143, 148, 251, .2),
                                    //       blurRadius: 20.0,
                                    //       offset: Offset(0, 10))
                                    // ]
                                    ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.black,
                                                  width: 3
                                                  ))),
                                      child: TextField(
                                        autofocus: true,
                                        textInputAction: TextInputAction.next,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Username",
                                            hintStyle: TextStyle(
                                                color: Colors.grey[400])),
                                        onChanged: (val) {
                                          email = val;
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.black,
                                                  width: 3
                                                  ))),
                                      child: TextField(
                                        textInputAction: TextInputAction.done,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Password",
                                            hintStyle: TextStyle(
                                                color: Colors.grey[400])),
                                        onChanged: (val) {
                                          password = val;
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  signIn();
                                },
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(colors: [
                                        Color.fromRGBO(255, 0, 0, 1),
                                        Color.fromRGBO(255, 128, 0, 1),
                                      ])),
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: 2),
                                    ),
                                  ),

                                  // SizedBox(height: 70,),
                                  // FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ));
  }
}

