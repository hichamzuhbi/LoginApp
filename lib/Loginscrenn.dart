//import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:loginapp/main.dart';
import 'package:line_icons/line_icons.dart';
import 'package:loginapp/color.dart';
import 'package:loginapp/homePage.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  AutovalidateMode autovmode = AutovalidateMode.always;//always 3atul sh8al w disabled y3ni ma msh8lle bas tkbos login btbayyen
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();
  bool isPass = true;

  @override
  Widget build(BuildContext context) {
    // int num = 7;
    return Scaffold(
      resizeToAvoidBottomInset:
          false, //hek by5tfu lli t7t l keyboard w bala scroll
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        //fini badal column 7ett listview aw l column wrap with SingleChildScrollView btsir srolled l sheshe
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  emailCont.text,
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 47),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "sign in your app",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Container(
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          topRight: Radius.circular(12))),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: bleu,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            topLeft: Radius.circular(12))),
                    child: Form(
                      autovalidateMode: autovmode,
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Email can't be Empty";
                              }
                              else return null;
                            },
                            controller:
                                emailCont, //hyde krmel ltext lli b2lb l text field iza badde etba3u b2ayya ma77al
                            // onSubmitted: (value) => setState(
                            //   () {
                            //     emailCont.text = value;
                            //   },//hon ana bas a3mel submit bytba3u lal email
                            // ),//iza bshil l on submitted bisir kll ma ektob badde a3mel hotrelaod l a7atta y8yyeru
                            onChanged: (value) => setState(
                              () {
                                emailCont.text = value;
                              }, //hon bisirm dynamique y3ni d8ri bytba3 ka 2nni 3am etba3u fo2 d8ri
                            ),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(color: blackColor),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              suffixIcon: Icon(LineIcons.user),
                              suffixIconColor: blackColor,
                              labelStyle: TextStyle(color: blackColor),
                              //hintText: "Enter your email",
                              label: Text("Email",style: TextStyle(fontSize: 14),),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.length < 6) {
                                return "Password greater then 6 charachter";
                              }
                              else return null;
                            },
                            obscureText: isPass, //hyde krmelma ybayyen lpass
                            //hon iza 7ttyna nafs l controller emailcont la7 ysir bas ektob bl field te3 l email la yktob bl password kamen
                            controller: passCont,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(color: blackColor)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              suffixIconColor: blackColor,
                              labelStyle: TextStyle(color: blackColor),
                              suffixIcon: GestureDetector(
                                child: Icon(Icons.remove_red_eye),
                                onTap: () {
                                  setState(() {
                                    isPass = !isPass;
                                  });
                                },
                              ),
                              //hintText: "Enter your Password",
                              label: Text("Password",style: TextStyle(fontSize: 14),),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: blackColor,
                                        padding: EdgeInsets.all(17),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12))),
                                    onPressed: () {
                                      if(_formKey.currentState!.validate()){
                                       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomePage(),), (route) => false);
                                      }//pushAndRemoveUntil krmel iza ana badde iza 3emel login maba2 y2dar yrja3 la wara
                                    },
                                    child: Text("Login",style: TextStyle(fontSize: 18),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: Text("Forget password?")),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Center(
                child: Text("OR Login by"),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Container(
                      width: 40,
                      height: 40,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          LineIcons.googlePlus,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Container(
                      width: 40,
                      height: 40,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          LineIcons.facebookF,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Container(
                      width: 40,
                      height: 40,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          LineIcons.twitter,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Center(
                child: Text(
                  "don't have an account ? Create new account",
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
          Spacer()
        ],
      ),
    );
  }
}
