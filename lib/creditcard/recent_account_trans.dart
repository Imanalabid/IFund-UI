import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/color_palette.dart';
import 'credit_card_page.dart';



class ReecentAccountTranPage extends StatefulWidget {
  const ReecentAccountTranPage({Key? key}) : super(key: key);

  @override
  State<ReecentAccountTranPage> createState() => _ReecentAccountTranPageState();
}

class _ReecentAccountTranPageState extends State<ReecentAccountTranPage> {
  @override
  Widget build(BuildContext context) {
    final double fem = 1.0;
    final double ffem = 1.0;
     return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette().theardgColor,
        title:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(width: MediaQuery.of(context).size.width*0.12),

  Text('Account Transaction',
                    style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 18.0,
                    color: ColorPalette().ContainerColor,
                    fontWeight: FontWeight.bold)),
  
    
                
        
                  ],
        
                ),
      ),
    body: SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.only(top: 70),
        child: Column(
        
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.035,),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text('Available Balance',
                           style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 28.0,
                                                   color: Colors.green,
                                                  fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding:  EdgeInsets.only(left: 40,right: 40,top: 0,bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Container(
            height: 40,
            width: 40,
            child: Center(
              child: Text('+',style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.green,width: 4)
            
                       ), ),
                
                 
                    Text('\$650.00.00',
             style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 35.0,
                                    color: ColorPalette().TextColor,
                                    fontWeight: FontWeight.bold)),
                 Container(
            height: 40,
            width: 40,
            child: Center(
              child: Text('-',style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.bold),),
            ),
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.red,width: 4)
            
                       ), ),
                ],
              ),
            ),
              
        
           SizedBox(height: MediaQuery.of(context).size.height*0.17,),
              
           Padding(
             padding:  EdgeInsets.all(9),
             child: Container(
                              height: 400,
                               width:MediaQuery.of(context).size.width*0.95,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                     color: Colors.white,
                               ),
                               
                               child: 
                               Column(
                                children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,right: 18,left: 18),
                                  child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                     Text('Transformations',
                                      style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 20.0,
                                               color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.bold)),
                                       Icon(Icons.more_horiz,size: 24,)
                                   
                                   
                                   ],
                                  ),
                                ),
                                SizedBox(height: 15,),
                                  Padding(
                                padding: const EdgeInsets.only(top: 5,right: 18,left: 18),
                                    child: Row(
                                     children: [
                                    Container(
                                      
                                                                  
                                          decoration: BoxDecoration (
                                                   color:  Colors.white,
                                                   borderRadius:  BorderRadius.circular(50),
                                                   boxShadow:  [
                                                     BoxShadow(
                                                       color:  Color(0x7fcfecf8),
                                                       offset:  Offset(0*fem, 10*fem),
                                                       blurRadius:  12*fem,
                                                     ),
                                                   ],
                                                 ),
                                      child: Image.asset('assets/img/ba.png',height: 30,width: 30,)),
                                         SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                    SizedBox(height: 12,),
                                       Text('Deposit funds',
                                    style:  TextStyle(
                                           fontFamily: 'Quicksand',
                                           fontSize: 16.0,
                                           color: ColorPalette().TextColor,
                                           fontWeight: FontWeight.bold)),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                          
                                    Spacer(),
                                    Column(
                                      children: [
                                        SizedBox(height: 8,),
                                        Text('548  + ',
                                         style:  TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color:Colors.green,
                                                fontWeight: FontWeight.bold)),
                                               SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                Text('+15% ',
                                         style:  TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 12.0,
                                                  color: Colors.transparent
                                                ))
                                    
                                      ],        
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                                  
                                         
                                     
                                      // grafik,
                                      // Text(data)
                                    
                                     ],
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                   Padding(
                                   padding: const EdgeInsets.only(top: 5,right: 18,left: 18),
                                     child: Row(
                                     children: [
                                                                     Container(
                                      
                                          decoration: BoxDecoration (
                                                                     color:  Colors.white,
                                                                     borderRadius:  BorderRadius.circular(45*fem),
                                                                     boxShadow:  [
                                      BoxShadow(
                                        color:  Color(0x7fcfecf8),
                                        offset:  Offset(0*fem, 10*fem),
                                        blurRadius:  12*fem,
                                      ),
                                                                     ],
                                                                   ),child: Image.asset('assets/img/tr.png',height: 30,width: 30,)),
                                         SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                                                     SizedBox(height: 12,),
                                      Text('bank transfer',
                                                                     style:  TextStyle(
                                           fontFamily: 'Quicksand',
                                           fontSize: 16.0,
                                           color: ColorPalette().TextColor,
                                           fontWeight: FontWeight.bold)),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                          
                                                                     Spacer(),
                                                                     Column(
                                      children: [
                                        SizedBox(height: 8,),
                                        Text('348  +',
                                         style:  TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color:Colors.green,
                                                fontWeight: FontWeight.bold)),
                                               SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                Text('+15% ',
                                         style:  TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 12.0,
                                                  color: Colors.transparent
                                                ))
                                                                     
                                      ],        
                                                                     ),
                                                                     SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                                   
                                         
                                     
                                      // grafik,
                                      // Text(data)
                                                                     
                                     ],
                                                                     ),
                                   ),
                                  SizedBox(height:12),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,right: 18,left: 18),
                                    child: Row(
                                     children: [
                                    Container(
                                      
                                          decoration: BoxDecoration (
                                                   color:  Colors.white,
                                                   borderRadius:  BorderRadius.circular(45*fem),
                                                   boxShadow:  [
                                                     BoxShadow(
                                                       color:  Color(0x7fcfecf8),
                                                       offset:  Offset(0*fem, 10*fem),
                                                       blurRadius:  12*fem,
                                                     ),
                                                   ],
                                                 ),child: Image.asset('assets/img/ba.png',height: 30,width: 30,)),
                                         SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                    SizedBox(height: 12,),
                                        Text('Withdraw Funds',
                                    style:  TextStyle(
                                           fontFamily: 'Quicksand',
                                           fontSize: 16.0,
                                           color: ColorPalette().TextColor,
                                           fontWeight: FontWeight.bold)),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                          
                                    Spacer(),
                                    Column(
                                      children: [
                                        SizedBox(height: 8,),
                                        Text('548  - ',
                                         style:  TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color:Colors.red,
                                                fontWeight: FontWeight.bold)),
                                               SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                Text('+15% ',
                                         style:  TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 12.0,
                                                  color: Colors.transparent
                                                ))
                                    
                                      ],        
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                                  
                                         
                                     
                                      // grafik,
                                      // Text(data)
                                    
                                     ],
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5,right: 18,left: 18),
                                    child: Row(
                                     children: [
                                    Container(
                                      
                                          decoration: BoxDecoration (
                                                   color:  Colors.white,
                                                   borderRadius:  BorderRadius.circular(45*fem),
                                                   boxShadow:  [
                                                     BoxShadow(
                                                       color:  Color(0x7fcfecf8),
                                                       offset:  Offset(0*fem, 10*fem),
                                                       blurRadius:  12*fem,
                                                     ),
                                                   ],
                                                 ),child: Image.asset('assets/img/bu.png',height: 30,width: 30,)),
                                         SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                    SizedBox(height: 12,),
                                       Text('Deposit funds',
                                    style:  TextStyle(
                                           fontFamily: 'Quicksand',
                                           fontSize: 16.0,
                                           color: ColorPalette().TextColor,
                                           fontWeight: FontWeight.bold)),
                                          SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                          
                                    Spacer(),
                                    Column(
                                      children: [
                                        SizedBox(height: 8,),
                                        Text('900  + ',
                                         style:  TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color:Colors.green,
                                                fontWeight: FontWeight.bold)),
                                               SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                Text('+15% ',
                                         style:  TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 12.0,
                                                  color: Colors.transparent
                                                ))
                                    
                                      ],        
                                    ),
                                    SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                                  
                                         
                                     
                                      // grafik,
                                      // Text(data)
                                    
                                     ],
                                    ),
                                  ),
                                 SizedBox(height:12),
                               ]),),
           ),
           


      //       Container(
      //   height: 450,
      //   width: MediaQuery.of(context).size.width,
      //   child: Padding(
      //     padding:EdgeInsets.only(left: 10,right: 0,bottom: 10,top: 50),
      //     child: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Row(
      //         children: [
      //           SizedBox(width: MediaQuery.of(context).size.width * 0.03),
      //           Text('معاملات الحساب الأخيرة',style: TextStyle(
      //                                           fontFamily: 'Quicksand',
      //                                           fontSize: 18.0,
      //                                           color: ColorPalette().ContainerColor,
      //                                           fontWeight: FontWeight.bold)),
      //         ],
      //       ),
      //                                       SizedBox(height: MediaQuery.of(context).size.height*0.04,),
      //       //one
      //        Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //    Container(
      //               height: 68,
      //               width: 5,
      //               decoration: BoxDecoration(
      //                 color: Colors.redAccent,
      //                 borderRadius: BorderRadius.circular(10),
      //               ),
      //             ),
      //             SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      //   Container(
      //     height: 67,
      //     width: 50,
      //     child: Column(
      //       children: [
      //         Row(
      //           children: [
                 
      //             Padding(
      //               padding: EdgeInsets.only(right: 5),
      //               child: Column(
      //                 children: [
      //                   SizedBox(height: MediaQuery.of(context).size.height * 0.007),
      //                   Text(
      //                     '11 مايو',
      //                     style: TextStyle(
      //                         fontFamily: 'Quicksand',
      //                         fontSize: 13.5,
      //                         color: Color.fromRGBO(12, 19, 79, 1),
      //                         fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   SizedBox(height: MediaQuery.of(context).size.height * 0.007),
      //                   Text(
      //                     '24/04',
      //                     style: TextStyle(
      //                       fontFamily: 'Quicksand',
      //                       fontSize: 12.0,
      //                       color: Color.fromRGBO(12, 19, 79, 1),
      //                     ),
      //                   ),
      //                   Text(
      //                     '22:24',
      //                     style: TextStyle(
      //                       fontFamily: 'Quicksand',
      //                       fontSize: 12.0,
      //                       color: Color.fromRGBO(12, 19, 79, 1),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //   ),
      //     SizedBox(width: MediaQuery.of(context).size.width * 0.03),
      //   Container(
      //     width: 1,
      //     height: 60,
      //     color: Colors.redAccent
      //   ),
      //      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
      //    Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         children: [
      //           Text(
      //             'تحويل الأموال إلى بنك البركة',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: MediaQuery.of(context).size.height * 0.005),
      //       Row(
      //         children: [
      //           Text(
      //             ' MRayya ',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //             ),
      //           ),
      //           SizedBox(width: MediaQuery.of(context).size.width * 0.45),
      //           Text(
      //             '145,00\$ -',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: MediaQuery.of(context).size.height * 0.005),
      //       Row(
      //         children: [
      //           Text(
      //             'الرصيد المتبقي 0.00\$',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      //   ],
      //     ),
      //        Divider(
      //           height:18,
      //           thickness: 1,
      //           indent: 50,
      //           endIndent: 0,
      //           color: Colors.white,
      //         ),
      //        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
      //         //two
      //        Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //    Container(
      //               height: 68,
      //               width: 5,
      //               decoration: BoxDecoration(
      //                 color: Colors.green,
      //                 borderRadius: BorderRadius.circular(10),
      //               ),
      //             ),
      //             SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      //   Container(
      //     height: 67,
      //     width: 50,
      //     child: Column(
      //       children: [
      //         Row(
      //           children: [
                 
      //             Padding(
      //               padding: EdgeInsets.only(right: 5),
      //               child: Column(
      //                 children: [
      //                   SizedBox(height: MediaQuery.of(context).size.height * 0.007),
      //                   Text(
      //                     '11 مايو',
      //                     style: TextStyle(
      //                         fontFamily: 'Quicksand',
      //                         fontSize: 13.5,
      //                         color: Color.fromRGBO(12, 19, 79, 1),
      //                         fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   SizedBox(height: MediaQuery.of(context).size.height * 0.007),
      //                   Text(
      //                     '24/04',
      //                     style: TextStyle(
      //                       fontFamily: 'Quicksand',
      //                       fontSize: 12.0,
      //                       color: Color.fromRGBO(12, 19, 79, 1),
      //                     ),
      //                   ),
      //                   Text(
      //                     '22:24',
      //                     style: TextStyle(
      //                       fontFamily: 'Quicksand',
      //                       fontSize: 12.0,
      //                       color: Color.fromRGBO(12, 19, 79, 1),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //   ),
      //     SizedBox(width: MediaQuery.of(context).size.width * 0.03),
      //   Container(
      //     width: 1,
      //     height: 60,
      //     color: Colors.green,
      //   ),
      //      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
      //    Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         children: [
      //           Text(
      //             'تحويل الأموال من بنك البركة',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: MediaQuery.of(context).size.height * 0.005),
      //       Row(
      //         children: [
      //           Text(
      //             ' MRayya ',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //             ),
      //           ),
      //           SizedBox(width: MediaQuery.of(context).size.width * 0.45),
      //           Text(
      //             '145,00\$ +',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: MediaQuery.of(context).size.height * 0.005),
      //       Row(
      //         children: [
      //           Text(
      //             'الرصيد المتبقي 145.0\$',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      //   ],
      //     ),
      //        Divider(
      //           height:18,
      //           thickness: 1,
      //           indent: 50,
      //           endIndent: 0,
      //           color: Colors.white,
      //         ),
      //         SizedBox(height: MediaQuery.of(context).size.height * 0.03),
      //           //one
      //        Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //    Container(
      //               height: 68,
      //               width: 5,
      //               decoration: BoxDecoration(
      //                 color: Colors.redAccent,
      //                 borderRadius: BorderRadius.circular(10),
      //               ),
      //             ),
      //             SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      //   Container(
      //     height: 67,
      //     width: 50,
      //     child: Column(
      //       children: [
      //         Row(
      //           children: [
                 
      //             Padding(
      //               padding: EdgeInsets.only(right: 5),
      //               child: Column(
      //                 children: [
      //                   SizedBox(height: MediaQuery.of(context).size.height * 0.007),
      //                   Text(
      //                     '11 مايو',
      //                     style: TextStyle(
      //                         fontFamily: 'Quicksand',
      //                         fontSize: 13.5,
      //                         color: Color.fromRGBO(12, 19, 79, 1),
      //                         fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   SizedBox(height: MediaQuery.of(context).size.height * 0.007),
      //                   Text(
      //                     '24/04',
      //                     style: TextStyle(
      //                       fontFamily: 'Quicksand',
      //                       fontSize: 12.0,
      //                       color: Color.fromRGBO(12, 19, 79, 1),
      //                     ),
      //                   ),
      //                   Text(
      //                     '22:24',
      //                     style: TextStyle(
      //                       fontFamily: 'Quicksand',
      //                       fontSize: 12.0,
      //                       color: Color.fromRGBO(12, 19, 79, 1),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //   ),
      //     SizedBox(width: MediaQuery.of(context).size.width * 0.03),
      //   Container(
      //     width: 1,
      //     height: 60,
      //     color: Colors.redAccent
      //   ),
      //      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
      //    Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         children: [
      //           Text(
      //             'تحويل الأموال إلى بنك البركة',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: MediaQuery.of(context).size.height * 0.005),
      //       Row(
      //         children: [
      //           Text(
      //             ' MRayya ',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //             ),
      //           ),
      //           SizedBox(width: MediaQuery.of(context).size.width * 0.45),
      //           Text(
      //             '145,00\$ -',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: MediaQuery.of(context).size.height * 0.005),
      //       Row(
      //         children: [
      //           Text(
      //             'الرصيد المتبقي 0.00\$',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      //   ],
      //     ),
      //        Divider(
      //           height:18,
      //           thickness: 1,
      //           indent: 50,
      //           endIndent: 0,
      //           color: Colors.white,
      //         ),
      //        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
      //         //two
      //        Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //    Container(
      //               height: 68,
      //               width: 5,
      //               decoration: BoxDecoration(
      //                 color: Colors.green,
      //                 borderRadius: BorderRadius.circular(10),
      //               ),
      //             ),
      //             SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      //   Container(
      //     height: 67,
      //     width: 50,
      //     child: Column(
      //       children: [
      //         Row(
      //           children: [
                 
      //             Padding(
      //               padding: EdgeInsets.only(right: 5),
      //               child: Column(
      //                 children: [
      //                   SizedBox(height: MediaQuery.of(context).size.height * 0.007),
      //                   Text(
      //                     '11 مايو',
      //                     style: TextStyle(
      //                         fontFamily: 'Quicksand',
      //                         fontSize: 13.5,
      //                         color: Color.fromRGBO(12, 19, 79, 1),
      //                         fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                   SizedBox(height: MediaQuery.of(context).size.height * 0.007),
      //                   Text(
      //                     '24/04',
      //                     style: TextStyle(
      //                       fontFamily: 'Quicksand',
      //                       fontSize: 12.0,
      //                       color: Color.fromRGBO(12, 19, 79, 1),
      //                     ),
      //                   ),
      //                   Text(
      //                     '22:24',
      //                     style: TextStyle(
      //                       fontFamily: 'Quicksand',
      //                       fontSize: 12.0,
      //                       color: Color.fromRGBO(12, 19, 79, 1),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //   ),
      //     SizedBox(width: MediaQuery.of(context).size.width * 0.03),
      //   Container(
      //     width: 1,
      //     height: 60,
      //     color: Colors.green,
      //   ),
      //      SizedBox(width: MediaQuery.of(context).size.width * 0.03),
      //    Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Row(
      //         children: [
      //           Text(
      //             'تحويل الأموال من بنك البركة',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: MediaQuery.of(context).size.height * 0.005),
      //       Row(
      //         children: [
      //           Text(
      //             ' MRayya ',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //             ),
      //           ),
      //           SizedBox(width: MediaQuery.of(context).size.width * 0.45),
      //           Text(
      //             '145,00\$ +',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ],
      //       ),
      //       SizedBox(height: MediaQuery.of(context).size.height * 0.005),
      //       Row(
      //         children: [
      //           Text(
      //             'الرصيد المتبقي 145.0\$',
      //             style: TextStyle(
      //               fontFamily: 'Quicksand',
      //               fontSize: 15.0,
      //               color: Colors.white,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      //   ],
      //     ),
      //        Divider(
      //           height:18,
      //           thickness: 1,
      //           indent: 50,
      //           endIndent: 0,
      //           color: Colors.white,
      //         ),
         
         
      //     ],
      //   ),
      //     ),
      //   ),
      //   decoration: BoxDecoration(
      //     color:ColorPalette().secoundgColor,
      //     borderRadius: BorderRadius.only(
      //   topLeft: Radius.circular(40),
      //   topRight: Radius.circular(40),
      //     ),
          
      //   ),
      // ),
      
           
          ],
        ),
      ),
    ),
    );
  }
}