import 'package:flutter/material.dart';
import 'package:newproject/main.dart';

void main() {
  runApp(SignApp());
}
class SignApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildname(){
    return TextFormField(
      decoration: InputDecoration(  border: OutlineInputBorder(),labelText: ' Name ', hintText: 'enter name '),
      //maxLength: 30,
      keyboardType: TextInputType.name,

    );
  }
  Widget _buildphone(){
    return TextFormField(
      decoration: InputDecoration(  border: OutlineInputBorder(), labelText: 'Contact Number', hintText: 'enter your contact number'),
      //maxLength: 12,
      keyboardType: TextInputType.number,
    );
  }
  Widget _buildemail(){
    return TextFormField(
      decoration: InputDecoration(  border: OutlineInputBorder(),labelText: 'Email Address', hintText: 'enter your email id'),
    );
  }
  Widget _buildpassword() {
    return TextFormField(
      decoration: InputDecoration(  border: OutlineInputBorder(), labelText: 'create password', hintText: 'enter new password'),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      appBar: AppBar(
        title: Text(
          'SIGN UP',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 5.0,
            fontSize: 21.0,
          ),
        ) ,
        backgroundColor:Colors.blue[800],
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[ Text('Shopkeeper Registration',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0,
                      ),
                    ),
                    ],
                  ),

                  SizedBox(height: 20.0),
                  _buildname(),
                  SizedBox(height: 20.0),
                  _buildphone(),
                  SizedBox(height: 20.0),
                  _buildemail(),
                  SizedBox(height: 20.0),
                  _buildpassword(),
                  SizedBox(height: 20.0),
                ],
              ),),

          ),
          RaisedButton(
            onPressed: () {  },
            child: Container(
              height: 45,
              child: Material(
                borderRadius: BorderRadius.circular(18),
                color: Colors.blue[800],
                child: Center(
                  child: Text(
                    ' SUBMIT',
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
                  context, MaterialPageRoute(builder: (_) => MyApp()));
            },
            child:Text('LogIn',
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
    );
  }
}
