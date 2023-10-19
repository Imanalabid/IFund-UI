import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/color_palette.dart';
import 'banks_page.dart';

class BankTransferPage extends StatefulWidget {
  const BankTransferPage({Key? key}) : super(key: key);

  @override
  State<BankTransferPage> createState() => _BankTransferPageState();
}

class _BankTransferPageState extends State<BankTransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette().theardgColor,
        title:  Row(
         mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(width: MediaQuery.of(context).size.width*0.15),
           Text('Bank Transfer', style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          fontSize: 20.0,
                                          color: ColorPalette().IconColor,
                                          fontWeight: FontWeight.bold)),
              
            
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
         
      
           SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text('The amount to be deposited will be transfered', style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 12.0,
                                             color: ColorPalette().TextColor,
                                              fontWeight: FontWeight.bold)),
            ],
          ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text('to the bank account number. The international account ', style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 12.0,
                                             color: ColorPalette().TextColor,
                                              fontWeight: FontWeight.bold)),
            ],
          ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text('number below to Kuwait left to be written in', style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 12.0,
                                             color: ColorPalette().TextColor,
                                              fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
Text('Transaction annotation field. ', style: TextStyle(                                              fontFamily: 'Quicksand',
                                              fontSize: 12.0,
                                            color: ColorPalette().TextColor,
                                              fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.01,),
          Padding(
            padding: const EdgeInsets.only(top: 30,right: 20,bottom: 0,left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Bank Name ', style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 14.0,
                                                color: ColorPalette().TextColor,
                                               fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                    Spacer(),
                  Image.asset('assets/img/garanti.jpg',height: 30,),
                
                ],
              ),
            ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 20,bottom: 5,left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('IBAN ', style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 14.0,
                                               color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 10,left: 20),
              child: Row(
                children: [
                   Spacer(),
                 Text('TR77 0011 1000 0000 0064 0811 05',
                 style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                               color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.bold)),
                 
                ],
              ),
            ),       
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 20,bottom: 5,left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
               Text('Your limit', style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                fontSize: 14.0,
                                               color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 10,left: 20),
              child: Row(
                children: [
                   Spacer(),
                 Text('\$997.020,00',
                 style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                             color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.bold)),
                 
                ],
              ),
            ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 20,bottom: 5,left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text('Account Number', style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 14.0,
                                               color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 10,left: 20),
              child: Row(
                children: [
                   Spacer(),
                 Text('1635054835',
                 style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                               color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.bold)),
                 
                ],
              ),
            ),
          Divider(),
          Column(
            children: [
             Padding(
               padding: const EdgeInsets.only(top: 20,right: 0,left: 20),
                  child: Row(children: [
                    Icon(Icons.info,color: ColorPalette().secoundbColor,),
                    SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                   Text('The account number must be written in the money transfer',
                    style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 12.0,
                                             color: ColorPalette().TextColor,
                                              )),
                  ],),
                ),
                
                  Padding(
                  padding: const EdgeInsets.only(top: 5,right: 10),
                  child: Row(children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                    Text('Guidelines, it may take up to 24 days for your deposit to ',
                    style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 12.0,
                                             color: ColorPalette().TextColor,
                                              )),
                  ],),
                ),
                  Padding(
                  padding: const EdgeInsets.only(top: 5,right: 10),
                  child: Row(children: [
                
                    SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                   Text('H. Dont forget to share the directions if someone ',
                    style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 12.0,
                                             color: ColorPalette().TextColor,
                                              )),
                  ],),
                ),
                  Padding(
                  padding: const EdgeInsets.only(top: 5,right: 10),
                  child: Row(children: [
              
                    SizedBox(width: MediaQuery.of(context).size.width*0.1,),
                   Text('The Money is in your Bank Account.',
                    style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 12.0,
                                             color: ColorPalette().TextColor,
                                              )),
                  ],),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                 InkWell(
                  onTap:() {
                    Navigator.pushNamed(context, '/home'); 
                  },
                  
                   child: Container(
                        height: MediaQuery.of(context).size.height*0.06,
                        width: MediaQuery.of(context).size.width*0.85,
                        child:Center(child: Text('I Made a Conversion',
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
                        
          
         
            



        
        ],
      ),

    );
    
  }
}