
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/color_palette.dart';


class SignInWithEmailPage extends StatefulWidget {
  const SignInWithEmailPage({Key? key}) : super(key: key);

  @override
  State<SignInWithEmailPage> createState() => _SignInWithEmailPageState();
}

class _SignInWithEmailPageState extends State<SignInWithEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 140),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.14,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 130,
                        child: Image.asset(
                          'assets/img/maraya1.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Text(
                    ' Sign In',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        color: ColorPalette().TextColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Opacity(
                    opacity: 0.5,
                    child: TextField(
                      textInputAction:
                          TextInputAction.done, // or any other appropriate action
                      decoration: InputDecoration(
                        hintText: '    Email'  ,
                        hintStyle: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 14.0,
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold),
                              border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                                       color: Colors.transparent, // Set the desired line color

), // Set the desired text color
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: ColorPalette().ContainerColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(color: ColorPalette().secoundgColor),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Opacity(
                    opacity: 0.5,
                    child: TextField(
                      textInputAction:
                          TextInputAction.done, // or any other appropriate action
                      decoration: InputDecoration(
                        hintText: '   Password',
                        hintStyle: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 14.0,
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.bold),
                              border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                           color: Colors.transparent, // Set the desired line color
), // Set the desired text color
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: ColorPalette().ContainerColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    border: Border.all(color: ColorPalette().secoundgColor),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forget Password',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12.0,
                        color: ColorPalette().TextColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Center(
                child: InkWell(
                  onTap: () {
                         Navigator.pushReplacementNamed(context, '/home');
                    // Future.delayed(Duration.zero, () {
                    //   _navigateToHomeScreen();
                    // }).then((_) {
                    //   showDialog(
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return AlertDialog(
                    //         title: Text('   MRaya'),
                    //         content: Text('The path to financial freedom'),
                    //         actions: [
                    //           TextButton(
                    //             onPressed: () {
                    //               Navigator.of(context).pop();
                    //             },
                    //             child: Text('Ok'),
                    //           ),
                    //         ],
                    //       );
                    //     },
                    //   );
                    // });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, right: 120,left: 130),
                      child: Text(' Sign In',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 18.0,
                              color: Color.fromRGBO(249, 245, 235, 1),
                              fontWeight: FontWeight.bold)),
                    ),
                    decoration: BoxDecoration(
                      color: ColorPalette().theardgColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You dont have a account',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: ColorPalette().TextColor)),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup'); 
                    },
                    child: Text('Create',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: ColorPalette().TextColor,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/'); 
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.solidEnvelope,
                          size: 20,
                          color: ColorPalette().secoundgColor,
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        Text('Sign in with phone nummber',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 14.0,
                                color: ColorPalette().secoundgColor,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: ColorPalette().ContainerColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(color: ColorPalette().secoundgColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToHomeScreen() {
    Navigator.pushReplacementNamed(context, '/home'); 
  }
}
