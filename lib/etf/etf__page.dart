import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../constants/color_palette.dart';
import '../transfer/transfer_page.dart';
import 'banks_page.dart';
import 'checkbox_widget.dart';

class EFTPage extends StatefulWidget {
  const EFTPage({Key? key}) : super(key: key);

  @override
  State<EFTPage> createState() => _EFTPageState();
}

class _EFTPageState extends State<EFTPage> {
   bool isChecked = false;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette().theardgColor,
        title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(width: MediaQuery.of(context).size.width*0.10),
               
                   Text('Bank Transfer/EFT',
                  style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 20.0,
                                              color:Colors.white,
                                              fontWeight: FontWeight.bold
                                              )),
                
              ],
            ),
      ),
      
      body: Padding(
        padding:  EdgeInsets.only(top:50,left: 10,right: 10),
        child: Column(
          children: [
            
           Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dear user,',
                  style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 18.0,
                                              color:Colors.grey.shade600,
                                              fontWeight: FontWeight.w600
                                              ))

                ],
              ), 
              SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
Text('Please review the following steps carefully to  ',                  style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color:Colors.grey.shade600,
                                              fontWeight: FontWeight.w600
                                              )),

                ],
              ), 
               SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
Text('Your account will be credited in a few minutes',
                  style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color:Colors.grey.shade600,
                                              fontWeight: FontWeight.w600
                                              )),

                ],
              ), 
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
Text('If you followed these steps correctly.',
                  style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 13.0,
                                              color:Colors.grey.shade600,
                                              fontWeight: FontWeight.w600
                                              ))

                ],
              ), 
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
Text('Your account will not be credited if you fail to follow ',                  style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color:Colors.grey.shade600,
                                              fontWeight: FontWeight.w600
                                              ))

                ],
              ), 
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
Text('Your money will be returned to your bank account.',                  style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color:Colors.grey.shade600,
                                              fontWeight: FontWeight.w600
                                              ))

                ],
              ), 
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
Text('Within 24 hours, thank you.',                  style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color:Colors.grey.shade600,
                                              fontWeight: FontWeight.w600
                                              )),

                ],
              ), 
                 SizedBox(height: MediaQuery.of(context).size.height*0.2,),
                      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyCheckbox(),
          Text(
            'Ok',
            style: TextStyle(
        fontFamily: 'Quicksand',
        fontSize: 15.0,
        color: Colors.grey.shade600,
        fontWeight: FontWeight.w600,
      ),
    ),
  ],
),
                        InkWell(
                          onTap: () {
              Navigator.pushNamed(context, '/banks'); 
                          },
                          child: Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.85,
                      child:Center(child: Text('Continue ',
                      style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14.0,
                                            color: Color.fromRGBO(249, 245, 235,1),
                                            fontWeight: FontWeight.bold))),
                    decoration: BoxDecoration(
                       color:  ColorPalette().theardgColor,
                      borderRadius: BorderRadius
                      .all(Radius.circular(20),)
                    ),
                             ),
                        ),
                 
            
          ],
        ),
      ),
    );
    
  }
}