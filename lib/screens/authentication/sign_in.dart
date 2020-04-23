import 'package:flutter/material.dart';
import 'package:projectflutterapp/services/auth.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({this.toggleView});


  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();

  // text field state
  String email ="";
  String password ="";
  String error ="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        elevation: 0.0,
        title: Text('Sign in'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: (){
                widget.toggleView();
                //widget is refers to Register widget(above) itself
              },
              icon: Icon(Icons.person),
              label: Text("Register"))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0 , horizontal: 5.0),
        child: Form(
          key:_formKey,
          child:Column(
            children:<Widget>[
              SizedBox(height:20.0),
              TextFormField(
                validator: (val) => val.isEmpty? "Enter an email" : null ,
                onChanged:(val){
                  setState(() => email = val);
                }
              ),
              SizedBox(height:20.0),
              TextFormField(
                  validator: (val) => val.length < 6 ? "Enter a password6+ chars long" : null ,
                obscureText: true,
                onChanged:(val){
                  setState(() => password = val);
                  }
              ),
              RaisedButton(
                color: Colors.pink[400],
                child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  if(_formKey.currentState.validate()){
                    dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                    if(result == null){
                      setState(() => error ="could not sign in with those credentials");
                    }
                  }
                },
                  /*print(email);
                  print(password);*/

              ),
              SizedBox(height: 12.0,),
              Text(error ,
                style : TextStyle(color: Colors.red,fontSize: 14.0),
              )
            ]
          )
        )
      ),
    );
  }
}
