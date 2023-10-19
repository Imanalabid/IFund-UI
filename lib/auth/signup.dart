import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iFund/auth/sign_in.dart';
import '../constants/color_palette.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container( 
               
                  height: MediaQuery.of(context).size.height*0.14,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 130,
                        child: Image.asset('assets/img/maraya1.png',
                        fit: BoxFit.cover,
                     ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.04),
              Text('   Create Account',
                style: TextStyle(
                                    fontFamily: 'Tajawal',
                                    fontSize: 18.0,
                                    color:ColorPalette().TextColor,
                                    fontWeight: FontWeight.bold)),
               SizedBox(height: MediaQuery.of(context).size.height*0.02),
               Center(
                 child: Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.85,
                    child: Opacity(
                      opacity: 0.5,
                      child: TextField(
                         textInputAction: TextInputAction.done, // or any other appropriate action               
                      decoration: InputDecoration(
                        hintText: '     Name', 
                        hintStyle: TextStyle(   
                      fontFamily: 'Tajawal',
                        fontSize: 14.0,
                        color: Colors.grey.shade400,

                        fontWeight: FontWeight.bold),
                         enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
                      
                      ),
                      
                                      ),
                    )
                  ,
                  decoration: BoxDecoration(
             color: ColorPalette().ContainerColor,
                    borderRadius: BorderRadius
                    .all(Radius.circular(15),),
                     border: Border.all(color: ColorPalette().secoundgColor)
                  ),
              ),
               )   ,  
               SizedBox(height: MediaQuery.of(context).size.height*0.03) ,  
               Center(
                 child: Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.85,
                    child: Opacity(
                                opacity: 0.5,
                      child: TextField(
                         textInputAction: TextInputAction.done, // or any other appropriate action               
                      decoration: InputDecoration(
                        hintText: '   Phone Number', 
                        hintStyle: TextStyle(   
                      fontFamily: 'Tajawal',
                        fontSize: 14.0,
                      color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold),
                          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),// Set the desired text color
                                ),
                        
                      
                      ),
                      
                                    ),
                  
                  decoration: BoxDecoration(
                   color: ColorPalette().ContainerColor,
                    borderRadius: BorderRadius
                    .all(Radius.circular(15),),
                     border: Border.all(color: ColorPalette().secoundgColor)
                  ),
              ),
               )   ,              
               SizedBox(height: MediaQuery.of(context).size.height*0.03),
               Center(
                 child: Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.85,
                    child: Opacity(
                      opacity: 0.5,
                      child: TextField(
                         textInputAction: TextInputAction.done, // or any other appropriate action               
                      decoration: InputDecoration(
                        hintText: '     Email', 
                        hintStyle: TextStyle(   
                      fontFamily: 'Tajawal',
                        fontSize: 14.0,
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold),
                          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
                        
                      
                      ),
                      
                                    ),
                    )
                  ,
                  decoration: BoxDecoration(
             color: ColorPalette().ContainerColor,
                    borderRadius: BorderRadius
                    .all(Radius.circular(15),),                     
                    border: Border.all(color: ColorPalette().secoundgColor)

                  ),
              ),
               )   ,  
               SizedBox(height: MediaQuery.of(context).size.height*0.03) ,  
               Center(
                 child: Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.85,
                    child: Opacity(
                      opacity: 0.5,
                      child: TextField(
                         textInputAction: TextInputAction.done, // or any other appropriate action               
                      decoration: InputDecoration(
                        hintText: '      Password', 
                        hintStyle: TextStyle(   
                      fontFamily: 'Tajawal',
                        fontSize: 14.0,
                      color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold),
                         enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
                        
                      
                      ),
                      
                                      ),
                    )
                  ,
                  decoration: BoxDecoration(
                   color: ColorPalette().ContainerColor,
                    borderRadius: BorderRadius
                    .all(Radius.circular(15),),
                    border: Border.all(color: ColorPalette().secoundgColor)
                  ),
              ),
               )   ,              
              SizedBox(height: MediaQuery.of(context).size.height*0.03) , 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text(' Do you a account?',
                   style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 12.0,
                                            color: ColorPalette().TextColor,
                                            )),
                                            SizedBox(width: MediaQuery.of(context).size.width*0.01),  
                                             InkWell(
                                              onTap: () {
                                                       Navigator.of(context).pushReplacement(
                                                      MaterialPageRoute(builder:
                                                      (context)=>SignIn(  
                                                      ) ));
                                              },
                                               child: Text('Sign in ',
                                                                                       style: TextStyle(
                                                                                         fontFamily: 'Tajawal',
                                                                                         fontSize: 10.0,
                                                                                         color: ColorPalette().TextColor,
                                                                                         fontWeight: FontWeight.bold
                                                                                         )),
                                             ),
                 ],
               ),
               SizedBox(height: MediaQuery.of(context).size.height*0.03) ,  
               InkWell(
                onTap: () {
                  
            Navigator.pushReplacementNamed(context, '/home'); 
                },
                 child: Center(
                   child: Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.85,
                      child:Center(child: Text('Create new Account',
                      style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 16.0,
                                            color: Color.fromRGBO(249, 245, 235,1),
                                            fontWeight: FontWeight.bold))),
                    decoration: BoxDecoration(
                       color:  ColorPalette().theardgColor,
                      borderRadius: BorderRadius
                      .all(Radius.circular(20),)
                    ),
                             ),
                 ),
               )   ,         
              
        
              
            ],
      
          ),
        ),
      ),

    );

    
  }
}