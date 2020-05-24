/*
import 'package:flutter/material.dart';
import 'package:projectflutterapp/services/auth.dart';
import 'package:projectflutterapp/constants/loading.dart';
import 'package:projectflutterapp/constants/constants.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;

  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthServices _auth = AuthServices();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = "";
  String password = "";
  String error = "";

  final FocusNode _Focus1 = FocusNode();
  final FocusNode _Focus2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Color(0xffD7AAED),
            appBar: AppBar(
              backgroundColor: Color(0xffCE83F1),
              elevation: 0.0,
              title: Text('Sign in'),
              actions: <Widget>[
                FlatButton.icon(
                    onPressed: () {
                      widget.toggleView();
                      //widget is refers to Register widget(above) itself
                    },
                    icon: Icon(Icons.person),
                    label: Text("Register"))
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  child: Form(
                      key: _formKey,
                      child: Column(children: <Widget>[
                        SizedBox(height: 20.0),
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            focusNode: _Focus1,
                            decoration:
                                textInputDecoration.copyWith(hintText: "Email"),
                            validator: (val) =>
                                val.isEmpty ? "Enter an email" : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            }),
                        SizedBox(height: 20.0),
                        TextFormField(
                          focusNode: _Focus2,
                          decoration: textInputDecoration.copyWith(
                              hintText: "Password"),
                          validator: (val) => val.length < 6
                              ? "Enter a password6+ chars long"
                              : null,
                          obscureText: true,
                          onFieldSubmitted: (term) {
                            setState(() {
                              FocusScope.of(context).requestFocus(_Focus2);
                              _Focus1.unfocus();
                            });
                          },
                          onChanged: (val) {
                            setState(() => password = val);
                          },
                        ),
                        SizedBox(height: 20.0),
                        RaisedButton(
                          color: Colors.pink[400],
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              setState(() => loading = true);
                              dynamic result = await _auth
                                  .signInWithEmailAndPassword(email, password);
                              if (result == null) {
                                setState(() {
                                  error =
                                      "could not sign in with those credentials";
                                  loading = false;
                                });
                              }
                            }
                          },
                          */
/*print(email);
                    print(password);*//*

                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          error,
                          style: TextStyle(color: Colors.red, fontSize: 14.0),
                        )
                      ]))),
            ),
          );
  }
}
*/
