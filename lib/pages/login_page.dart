import "package:flutter/material.dart";
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext) async {
   if(_formKey.currentState!.validate()){
     setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
   }
  }

  @override
  Widget build(BuildContext context) {
    bool _isHovering = false;
    return Material(
      color: Colors.white,
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("Welcome $_name",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.lato().fontFamily,
                  )),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 50),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                          validator: (value) {
                            if(value!.isEmpty){
                              return "Username can't be empty";
                            }

                            return null;
                          },
                      onChanged: (value) {
                        _name = value;
                        setState(() {});
                      },
                    ),
                     SizedBox(
                height: 10.0,
              ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                          hintText: "Enter Password", labelText: "Password"),
                          validator: (value) {
                            if(value!.isEmpty){
                              return "Password can't be empty";
                            }
                            else if(value.length < 6){
                              return "Password should be of 6 Characters";

                            }
                          return null;
                          },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                  splashColor: Colors.blue[300],
                  onTap: ()=>moveToHome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 10),
                    ),
                  ))
            ],
          )),
    );
  }
}
