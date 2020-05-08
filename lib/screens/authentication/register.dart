import 'package:flutter/material.dart';
import 'package:projectflutterapp/services/auth.dart';
import 'package:projectflutterapp/constants/constants.dart';
import 'package:projectflutterapp/constants/loading.dart';


class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email ="";
  String password ="";
  String error ="";


  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        elevation: 0.0,
        title: Text('Register'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: (){
                widget.toggleView();
                //widget is refers to Register widget(above) itself
              },
              icon: Icon(Icons.person),
              label: Text("Sign In"))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0 , horizontal: 20.0),
            child: Form(
              key: _formKey,
                child:Column(
                    children:<Widget>[
                      SizedBox(height:20.0),
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: textInputDecoration.copyWith(hintText: "Email"),
                          validator: (val) => val.isEmpty? "Enter an email" : null ,
                          onChanged:(val){
                            setState(() => email = val);
                          }
                      ),
                      SizedBox(height:20.0),
                      TextFormField(
                          decoration: textInputDecoration.copyWith(hintText: "Password"),
                        validator: (val) => val.length < 6 ? "Enter a password6+ chars long" : null ,
                          obscureText: true,
                          onChanged:(val){
                            setState(() => password = val);
                          }
                      ),
                      SizedBox(height:20.0),
                      RaisedButton(
                        color: Colors.pink[400],
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          if(_formKey.currentState.validate()){
                            setState(() => loading = true);
                            dynamic result =await _auth.registerWithEmailAndPassword(email, password);
                            if(result == null){
                              setState(() {
                                loading = false ;
                                error ="please supply a valid email";
                            });
                            }
                          }
                        },
                      ),
                      SizedBox(height: 12.0,),
                      Text(error ,
                        style : TextStyle(color: Colors.red,fontSize: 14.0),
                      )
                    ]
                )
            )
        ),
      ),
    );
  }
}
