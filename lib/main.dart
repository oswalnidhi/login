import 'package:newproject/sign up.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(20.0, 130.0, 0.0, 0.0),
                        child: Text('Login', style: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                Form(
                  child: Container(
                    padding: const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,

                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'EMAIL',
                              hintText: 'Enter your email id',
                              labelStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                              focusedBorder: UnderlineInputBorder(
                              )
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,

                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'PASSWORD',
                              hintText: 'Enter your Password',
                              labelStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                              focusedBorder: UnderlineInputBorder(
                              )
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Container(
                          alignment: Alignment(1.0, 0),
                          padding: EdgeInsets.only(top: 15, left: 0),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                              }
                              );
                            },
                            child: Text('Forgot Password',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                            });
                          },
                          child: Container(
                            height: 45,
                            child: Material(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.blue[800],
                              elevation: 7,
                              child: Center(
                                child: Text(
                                  'LOG IN',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),

                        ),
                        SizedBox(height: 14),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (_) => SignApp()));
                      },
                        child:Text('Sign Up',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                    ),
                      ],
                    ),
                  ),
                ),
              ]
          ),
        ],
      ),
    );
  }
}


