import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../constants/color_palette.dart';
import 'box_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, double> dataMap = {
    "1": 5,
    "2": 3,
    "4": 2,

  };

  List<Color> colorList = [
    ColorPalette().theardgColor,
    ColorPalette().TextColor,
    ColorPalette().secoundbColor,

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
   
      body: SingleChildScrollView
      (

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70,bottom: 20, left: 20,right: 20),
              child: Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
        color: Colors.grey.shade500,
        borderRadius: BorderRadius.circular(25)
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width*0.02,),
        Text('Hi Mohamed',
        style: TextStyle(
            fontSize: 18,
            color: ColorPalette().TextColor,
           fontFamily: 'Quicksand',
          ),),
        Spacer(),
        Icon(Icons.notifications_active,color: Colors.grey.shade700,)
        
      ],
              ),
            ),
            Column(
            
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Container(
                    height: 180,
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
               color: Colors.black87,
              borderRadius: BorderRadius.circular(15)
            ),
             
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Column(
                        
                        children: [
                        
                          Text('Total Wallet Balance',style: TextStyle( 
                            color: Colors.grey.shade200,
                             fontFamily: 'Quicksand',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,),),
                                 SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('\$6600.00       ',style: TextStyle( 
                                color: Colors.teal,
                                 fontFamily: 'Quicksand',
                                fontSize: 26.0,
                                fontWeight: FontWeight.bold,),),
                              
                              ],
                            )
                        ],
                      ),
                      Spacer(),
                      Image.asset('assets/img/walet.png',width: 60,height: 60,),
                      SizedBox(width: MediaQuery.of(context).size.width*0.02,)
                    ],
                  ),
                ),
             SizedBox(height: MediaQuery.of(context).size.height*0.03,),
             Container(
              height: 40,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(10)
              ),
             child: Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                children: [
                  Text('Total Profit',style: TextStyle(color: Colors.white,fontSize: 16,  
                  fontFamily: 'Quicksand',
                           
                            fontWeight: FontWeight.bold,),),
                  Spacer(),
                  Text('\$2000.00',style: TextStyle(color: Colors.white,fontSize: 16,  
                  fontFamily: 'Quicksand',
                           
                            fontWeight: FontWeight.bold,),)
                ],
               ),
             ),)
              ],
            ),
                ),
                     SizedBox(height: MediaQuery.of(context).size.height*0.04,),


          //          Center(
          //            child: DefaultTextStyle(
          //               style: TextStyle(
          //   fontSize: 25,
          //  fontFamily: 'Quicksand',
          // ),
          //             child: PieChart(
          //               dataMap: dataMap,
          //               animationDuration: Duration(milliseconds: 100),
          //               chartLegendSpacing: 32,
          //               chartRadius: MediaQuery.of(context).size.width / 2.5,
          //               colorList: colorList,
          //               initialAngleInDegree: 0,
          //               chartType: ChartType.ring,
          //               ringStrokeWidth: 35,
          //               centerText: 'portfolio total\n 12000\$',centerTextStyle: TextStyle(
          //                fontFamily: 'Quicksand',
          //                color: ColorPalette().TextColor
          //               ),
          //               legendOptions: LegendOptions(
                        
          //                 showLegendsInRow: true,
          //                 legendPosition: LegendPosition.right,
          //                 showLegends: false,
          //                 legendShape: BoxShape.circle,
          //                 legendTextStyle: TextStyle(
          //                   fontWeight: FontWeight.bold,
                        
          //                 ),
          //               ),
          //               chartValuesOptions: ChartValuesOptions(
          //                 showChartValueBackground: false,
          //                 showChartValues: false,
          //                 showChartValuesInPercentage: false,
          //                 showChartValuesOutside: false,
          //                 decimalPlaces: 1,
          //               ),
          //                              ),
          //            ),
          //          ),
       
              ],
            ),
            // InkWell(
            //   onTap: () {
            //      Navigator.of(context).pushReplacement(
            //           MaterialPageRoute(builder:
            //           (context)=>BoxPage(  
            //   ) ));
            //   },
            //   child: Container(
            //           height: MediaQuery.of(context).size.height*0.06,
            //           width: MediaQuery.of(context).size.width*0.85,
            //           child:Center(child: Text('صندوق التقاعد',
            //           style: TextStyle(
            //                                 fontFamily: 'Quicksand',
            //                                 fontSize: 14.0,
            //                                 color: Color.fromRGBO(249, 245, 235,1),
            //                                 fontWeight: FontWeight.bold))),
            //         decoration: BoxDecoration(
            //            color:  ColorPalette().theardgColor,
            //           borderRadius: BorderRadius
            //           .all(Radius.circular(20),)
            //         ),
            //                  ),
            // ),
                     
                           Container(
                          height: 400,
                           width: 350,
                           color: Colors.white,
                           
                           child: 
                           SingleChildScrollView(
                             child: Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5,right: 14,left: 14),
                                child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                   Text('Boxs',
                                    style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 16.0,
                                             color: ColorPalette().TextColor,
                                              fontWeight: FontWeight.bold)),
                                               Text(' more' ,
                                    style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 13.0,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold)),
                                 
                                 
                                 ],
                                ),
                              ),
                              SizedBox(height: 10,),
                                InkWell(
                                     onTap: () {
                             Navigator.pushNamed(context, '/boxpage'); 
                                     },
                                  child: Row(
                                   children: [
                                  Image.asset('assets/img/apple.png',height: 55,width: 50,),
                                       SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                  SizedBox(height: 12,),
                                      Text('M1 ',
                                  style:  TextStyle(
                                         fontFamily: 'Quicksand',
                                         fontSize: 17.0,
                                         color: ColorPalette().TextColor,
                                         fontWeight: FontWeight.bold)),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                        
                                  Container(),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.55,),
                                         Column(
                                    children: [
                                      SizedBox(height: 8,),
                                      Text('%70 ',
                                       style:  TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color: ColorPalette().TextColor,
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
                                                         
                                       
                                 
                                    // grafik,
                                    // Text(data)
                                
                                   ],
                                  ),
                                ),
                               SizedBox(height: 2,),
                               Divider(color: Colors.grey,),
                                SizedBox(height: 2),
                                InkWell(
                                       onTap: () {
                             Navigator.pushNamed(context, '/boxpage'); 
                                     },
                                  child: Row(
                                   children: [
                                  Image.asset('assets/img/netflix.png',height: 50,width: 50,),
                                       SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                  Text('M2 ',
                                   style:  TextStyle(
                                          fontFamily: 'Quicksand',
                                          fontSize: 17.0,
                                          color: ColorPalette().TextColor,
                                          fontWeight: FontWeight.w800)),
                                         SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                      
                                  Container(),
                                  SizedBox(width: MediaQuery.of(context).size.width*0.54,),
                                         Column(
                                    children: [
                                      Text('%60 ',
                                       style:  TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                               color: ColorPalette().TextColor,
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
                                                         
                                       
                                 
                                    // grafik,
                                    // Text(data)
                                
                                   ],
                                  ),
                                ),
                               SizedBox(height: 2,),
                               Divider(color: Colors.grey,),
                                SizedBox(height:2),
                                 InkWell(
                                 onTap: () {
                             Navigator.pushNamed(context, '/boxpage'); 
                                     },
                                   child: Row(
                                   children: [
                                                               Image.asset('assets/img/sptf.png',height: 50,width: 50,),
                                       SizedBox(width: MediaQuery.of(context).size.width*0.015,),
                                                               SizedBox(height: 8,),
                                      Text('M3 ',
                                                               style:  TextStyle(
                                         fontFamily: 'Quicksand',
                                         fontSize: 17.0,
                                         color: ColorPalette().TextColor,
                                         fontWeight: FontWeight.w600)),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                       
                                                               Container(),
                                                               SizedBox(width: MediaQuery.of(context).size.width*0.54,),
                                         Column(
                                    children: [
                                      Text('%90 ',
                                       style:  TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color: ColorPalette().TextColor,
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
                                                          
                                        
                                  
                                   
                                 
                                   ],
                                                               ),
                                 ),
                             SizedBox(height: 2,),
                               Divider(color: Colors.grey,),
                              
                                SizedBox(height:2),
                                 InkWell(
                                 onTap: () {
                             Navigator.pushNamed(context, '/boxpage'); 
                                     },
                                   child: Row(
                                   children: [
                                                               Image.asset('assets/img/sptf.png',height: 50,width: 50,),
                                       SizedBox(width: MediaQuery.of(context).size.width*0.015,),
                                                               SizedBox(height: 8,),
                                      Text('M4 ',
                                                               style:  TextStyle(
                                         fontFamily: 'Quicksand',
                                         fontSize: 17.0,
                                         color: ColorPalette().TextColor,
                                         fontWeight: FontWeight.w600)),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                       
                                                               Container(),
                                                               SizedBox(width: MediaQuery.of(context).size.width*0.54,),
                                         Column(
                                    children: [
                                      Text('%90 ',
                                       style:  TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color: ColorPalette().TextColor,
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
                                                          
                                        
                                  
                                   
                                 
                                   ],
                                                               ),
                                 ),
                             SizedBox(height: 2,),
                                Divider(color: Colors.grey,),
                                SizedBox(height:2),
                                 InkWell(
                                 onTap: () {
                             Navigator.pushNamed(context, '/boxpage'); 
                                     },
                                   child: Row(
                                   children: [
                                                               Image.asset('assets/img/sptf.png',height: 50,width: 50,),
                                       SizedBox(width: MediaQuery.of(context).size.width*0.015,),
                                                               SizedBox(height: 8,),
                                      Text('M5 ',
                                                               style:  TextStyle(
                                         fontFamily: 'Quicksand',
                                         fontSize: 17.0,
                                         color: ColorPalette().TextColor,
                                         fontWeight: FontWeight.w600)),
                                        SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                       
                                                               Container(),
                                                               SizedBox(width: MediaQuery.of(context).size.width*0.54,),
                                         Column(
                                    children: [
                                      Text('%90 ',
                                       style:  TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color: ColorPalette().TextColor,
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
                                                          
                                        
                                  
                                   
                                 
                                   ],
                                                               ),
                                 ),
                             SizedBox(height: 2,),
                             ]),
                           ),),
          ],
        ),
      ),
     
    );
  }
}
