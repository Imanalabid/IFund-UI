
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/color_palette.dart';
import '../Sidebar.dart';

class ProfileDetailsPage extends StatefulWidget {
  const ProfileDetailsPage({Key? key}) : super(key: key);

  @override
  State<ProfileDetailsPage> createState() => _ProfileDetailsPageState();
}

class _ProfileDetailsPageState extends State<ProfileDetailsPage> {
  @override
  Widget build(BuildContext context) {

  return Scaffold(

      appBar: AppBar(
        backgroundColor: ColorPalette().theardgColor,
        title: Row(
             mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(width: MediaQuery.of(context).size.width*0.21),
            Text(
         'User info',style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 20.0,
                  color: ColorPalette().ContainerColor,
                  fontWeight: FontWeight.bold),
            ),
         
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Container(
              child: Center(
                child: CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('assets/img/profile.png'),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.04,),
            Padding(
              padding:  EdgeInsets.only(right: 30,bottom: 10,left: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Name',style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          fontSize: 15.0,
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
               height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
               
                    Padding(
                      padding:  EdgeInsets.only(right: 7,left: 12),
                      child: Icon(Icons.person_outline,size: 20,
                      color: ColorPalette().secoundgColor,
                  ),
                    ),
                     Padding(
                      padding:  EdgeInsets.only(top: 5),
                      child: Text(' Name',
                      style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                    ),
            
                  ],
                ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
             Padding(
              padding:   EdgeInsets.only(right: 30,bottom: 10,left: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Email',style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          fontSize: 15.0,
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
               height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Padding(
                      padding:  EdgeInsets.only(right: 7,left: 12),
                      child: Icon(Icons.mail,size: 20,
                      color: ColorPalette().secoundgColor,
                  ),
                    ),
                     Padding(
                      padding:  EdgeInsets.only(top: 5),
                      child: Text('test@gmail.com',
                      style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                    ),
            
                
                  ],
                ),
            ),
             SizedBox(height: MediaQuery.of(context).size.height*0.03,),
             Padding(
              padding:  EdgeInsets.only(right: 30,bottom: 10,left: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start, 
                children: [
                  Text('Phone number',style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          fontSize: 15.0,
                                          color: Colors.grey.shade600,
                                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
               height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                       Padding(
                      padding:  EdgeInsets.only(right: 7,left: 12),
                      child: Icon(Icons.phone,size: 20,
                      color: ColorPalette().secoundgColor,
                  ),
                    ),
                     Padding(
                      padding:  EdgeInsets.only(top: 5),
                      child: Text('90555555555+',
                      style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                    ),
            
                 
                  ],
                ),
            ),
        ],
      ),
  );
    
  }
}