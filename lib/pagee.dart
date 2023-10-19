import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../constants/color_palette.dart';
import 'home/boxs.dart';
import 'home/home.dart';
import 'linecharts.dart';




class SonPage extends StatefulWidget {
  const SonPage({super.key});

  @override
  State<SonPage> createState() => _SonPageState();
}

class _SonPageState extends State<SonPage> {
    double principal = 0;
  double interestRate = 0;
  int duration = 0;
  double result = 0;
  Color borderColor = ColorPalette().theardgColor;
 final List<ChartData> chartData = [
    ChartData(0, 5),
    ChartData(1, 10),
    ChartData(2, 7),
    ChartData(3, 12),
    ChartData(4, 15),
    ChartData(5, 9),
    // Add more data points as needed
  ];
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette().theardgColor,
        title:   Row(
              mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(width: MediaQuery.of(context).size.width*0.05),
                  
        Text('Historical fund performance',style: TextStyle(
        fontFamily: 'Quicksand',
        fontSize: 18.0,
        color: ColorPalette().IconColor,
        fontWeight: FontWeight.bold)),
        
      ]
          
        ),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 10,right: 10,left: 10),
          child: Column(
            children: [
             Center(
                child:  
              Container(
                  height: 200,
                  color: Colors.grey.shade200,
                 child: LineChartSample2()
                ),
              ),
             SizedBox(height: MediaQuery.of(context).size.height*0.02,),
             Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                  Text(' Manager Change: ',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 18.0,
                                            color: ColorPalette().TextColor,
                                            fontWeight: FontWeight.bold)),
                  SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                  Image.asset('assets/img/icon-1.png',width: 20,height: 20,),
                    SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                     Text('Full ',style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 18.0,
                      color: ColorPalette().TextColor,
                  )),
                    SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                  Image.asset('assets/img/water.png',width: 25,height: 20,),
                SizedBox(height:MediaQuery.of(context).size.height*0.01,),
                  Text('Partial ',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 18.0,
                                            color: ColorPalette().TextColor,
                                         )),
                
                  
                                      
                 
                                        
                ],
              ),
             SizedBox(height: MediaQuery.of(context).size.height*0.02,),
             Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          SizedBox(width: MediaQuery.of(context).size.width*0.03,),
        Text('US dollars | All data outside of NAV except |',         
           style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14.0,
                                            color: ColorPalette().TextColor,
                                         )),
            ],
           ),
             SizedBox(height: MediaQuery.of(context).size.height*0.01,),
             Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          SizedBox(width: MediaQuery.of(context).size.width*0.03,),
        Text('to invest (price) as of May 24, 2023 | investment (price)',  
         style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14.0,
                                            color: ColorPalette().TextColor,
                                         )),
            ],
           ),
             SizedBox(height: MediaQuery.of(context).size.height*0.01,),
             Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          SizedBox(width: MediaQuery.of(context).size.width*0.03,),
             Text(' 2023 | pointer: Morningstar US LM Bb Growth TR USD',            style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14.0,
                                            color: ColorPalette().TextColor,
                                         )),
            ],
           ),
             SizedBox(height: MediaQuery.of(context).size.height*0.01,),
             Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          SizedBox(width: MediaQuery.of(context).size.width*0.03,),
             Text(' As of May 24, 2023',          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14.0,
                                            color: ColorPalette().TextColor,
                                         )),
            ],
           ),
             SizedBox(height:MediaQuery.of(context).size.height*0.01,),
           
             Container(
            height: 0.2,
            width: MediaQuery.of(context).size.width*0.95,
          color: Colors.grey,
           ),
             SizedBox(height:MediaQuery.of(context).size.height*0.01,),
             Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //   Container(
              //     height: 25,
              //     width: 75,
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Icon(Icons.arrow_drop_down),
              //   Text('Day End ',style: TextStyle(
              //                                     fontFamily: 'Quicksand',
              //                                     fontSize: 12.0,
              //                                     color: ColorPalette().TextColor,
              //                                   )),
              // ]),
              //   decoration: BoxDecoration(
              //      borderRadius: BorderRadius.circular(20),
              //     border: Border.all(color: Colors.grey)
              //   ),
              //   ),
              //    SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                 SizedBox(width:MediaQuery.of(context).size.width*0.02,),
                  Text('Holding Details ',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 18.0,
                                            color: ColorPalette().TextColor,
                                            fontWeight: FontWeight.bold)),
                                        
            ],
           ),
             SizedBox(height:MediaQuery.of(context).size.height*0.02,),
             Padding(
             padding: const EdgeInsets.only(left: 10,right: 10),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ticker',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            fontWeight: FontWeight.bold)),
                Text('Holdings',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            fontWeight: FontWeight.bold)),
                Text('CUSIP',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            fontWeight: FontWeight.bold)), 
                Text('SEDOL',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            fontWeight: FontWeight.bold)),                                                       
                Text('Of fund%',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            fontWeight: FontWeight.bold)),
            
    
 
           
            
          ],
             ),
           ),    
            SizedBox(height:MediaQuery.of(context).size.height*0.05,),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/FPage'); 
              },
              child: Padding(
               padding: const EdgeInsets.only(left: 10,right: 10),
               child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
               Text('AAPL',style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color: ColorPalette().TextColor,
                                              )),
              Text(' Apple Inc.',style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color: ColorPalette().TextColor,
                                              )),
              Row(
                children: [
                  Text('3.13',style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                  )),
               SizedBox(width: MediaQuery.of(context).size.width*0.01,)
                ],
              ),
              Row(
                children: [
                  Text('11.24',style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                  )),
                      SizedBox(width: MediaQuery.of(context).size.width*0.05,)
                ],
              ),                                
              Text('13.59%',style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 15.0,
                                              color: ColorPalette().TextColor,
                                            )),
              
              
                       
                       
              
                      ],
               ),
                       ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height*0.01,),
            Container(
            height: 0.2,
            width: MediaQuery.of(context).size.width*0.95,
          color: Color.fromRGBO(158, 158, 158, 1),
           ),

            Padding(
             padding: const EdgeInsets.only(left: 10,right: 10),
             child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text('MSFT',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Text(' Microsoft',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Row(
              children: [
                Text('3.13',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
             SizedBox(width: MediaQuery.of(context).size.width*0.01,)
              ],
            ),
            Row(
              children: [
                Text('11.24',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05,)
              ],
            ),                                
            Text('13.59%',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                          )),
            
            
           
           
            
          ],
             ),
           ),
            SizedBox(height:MediaQuery.of(context).size.height*0.01,),
            Container(
            height: 0.2,
            width: MediaQuery.of(context).size.width*0.95,
          color: Color.fromRGBO(158, 158, 158, 1),
           ),
            
            Padding(
             padding: const EdgeInsets.only(left: 10,right: 10),
             child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text('AMZN',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Text(' Amazon.',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Row(
              children: [
                Text(' 3.13',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
             SizedBox(width: MediaQuery.of(context).size.width*0.01,)
              ],
            ),
            Row(
              children: [
                Text('11.24',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05,)
              ],
            ),                                
            Text('13.59%',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                          )),
            
            
           
           
            
          ],
             ),
           ),
            SizedBox(height:MediaQuery.of(context).size.height*0.01,),
            Container(
            height: 0.2,
            width: MediaQuery.of(context).size.width*0.95,
          color: Color.fromRGBO(158, 158, 158, 1),
           ),
            
            Padding(
             padding: const EdgeInsets.only(left: 10,right: 10),
             child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text('NVDA',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Text('  NVIDIA.',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Row(
              children: [
                Text('  3.13',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
             SizedBox(width: MediaQuery.of(context).size.width*0.01,)
              ],
            ),
            Row(
              children: [
                Text('11.24',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05,)
              ],
            ),                                
            Text('13.59%',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                          )),
            
            
           
           
            
          ],
             ),
           ),
            SizedBox(height:MediaQuery.of(context).size.height*0.01,),
            Container(
            height: 0.2,
            width: MediaQuery.of(context).size.width*0.95,
          color: Color.fromRGBO(158, 158, 158, 1),
           ),

            Padding(
             padding: const EdgeInsets.only(left: 10,right: 10),
             child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text('GOOGL',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Text('Alphabet',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Row(
              children: [
                Text('3.13',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
             SizedBox(width: MediaQuery.of(context).size.width*0.01,)
              ],
            ),
            Row(
              children: [
                Text('11.24',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05,)
              ],
            ),                                
            Text('13.59%',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                          )),
            
            
           
           
            
          ],
             ),
           ),
            SizedBox(height:MediaQuery.of(context).size.height*0.01,),
            Container(
            height: 0.2,
            width: MediaQuery.of(context).size.width*0.95,
          color: Color.fromRGBO(158, 158, 158, 1),
           ),
            Padding(
             padding: const EdgeInsets.only(left: 10,right: 10),
             child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text('AAPL',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Text('  Apple Inc.',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Row(
              children: [
                Text('3.13',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
             SizedBox(width: MediaQuery.of(context).size.width*0.01,)
              ],
            ),
            Row(
              children: [
                Text('11.24',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05,)
              ],
            ),                                
            Text('13.59%',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                          )),
            
            
           
           
            
          ],
             ),
           ),
            SizedBox(height:MediaQuery.of(context).size.height*0.01,),
            Container(
            height: 0.2,
            width: MediaQuery.of(context).size.width*0.95,
          color: Color.fromRGBO(158, 158, 158, 1),
           ),
     
            Padding(
             padding: const EdgeInsets.only(left: 10,right: 10),
             child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text('AMZN',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Text(' Amazon.',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                            )),
            Row(
              children: [
                Text(' 3.13',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
             SizedBox(width: MediaQuery.of(context).size.width*0.01,)
              ],
            ),
            Row(
              children: [
                Text('11.24',style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                )),
                    SizedBox(width: MediaQuery.of(context).size.width*0.05,)
              ],
            ),                                
            Text('13.59%',style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 15.0,
                                            color: ColorPalette().TextColor,
                                          )),
            
            
           
           
            
          ],
             ),
           ),
            SizedBox(height:MediaQuery.of(context).size.height*0.01,),
            Container(
            height: 0.2,
            width: MediaQuery.of(context).size.width*0.95,
          color: Color.fromRGBO(158, 158, 158, 1),
           ),
            
            

        //     Padding( 
        //      padding: const EdgeInsets.only(left: 10,right: 10),
        //      child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text('MSFT',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                     )),
        //     Text(' Microsoft.',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                     )),
        //     Text('  3.16  ',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                     )),
        //     Text('  11.22',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                     )),
        //     Text('20.32%',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                   )),
            
            
            
                                           
            
            
        //   ],
        //      ),
        //    ),SizedBox(height:MediaQuery.of(context).size.height*0.01,),
        //     Container(
        //     height: 0.2,
        //     width: MediaQuery.of(context).size.width*0.95,
        //   color: Colors.grey,
        //    ),
        //     SizedBox(height:MediaQuery.of(context).size.height*0.01,),
        //     Padding(
        //      padding: const EdgeInsets.only(left: 9,right: 9),
        //      child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text('AMZN',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 14.5,
        //                                     color: ColorPalette().TextColor,
        //                                     )),
        //     Text(' Amazon.'  ,style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                     )),
        //     Text('      1.56',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                     )),
        //     Text('      7.31',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                     )),
        //     Text('13.63%',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                   )),
            
            
            
            
            
        //   ],
        //      ),
        //    ),
        //     SizedBox(height:MediaQuery.of(context).size.height*0.01,),
        //     Container(
        //     height: 0.2,
        //     width: MediaQuery.of(context).size.width*0.95,
        //   color: Colors.grey,
        //    ),
        //     SizedBox(height:MediaQuery.of(context).size.height*0.01,),
        //     Padding(
        //     padding: const EdgeInsets.only(left: 7,right: 7),
        //     child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: [
        //   Text('NVDA',style: TextStyle(
        //                                   fontFamily: 'Quicksand',
        //                                   fontSize: 14.5,
        //                                   color: ColorPalette().TextColor,
        //                                   )),
        //   Text('NVIDIA. ',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                   fontSize: 15.0,
        //                                   color: ColorPalette().TextColor,
        //                                   )),
        //   Text('  2.56',style: TextStyle(
        //                                   fontFamily: 'Quicksand',
        //                                   fontSize: 15.0,
        //                                   color: ColorPalette().TextColor,
        //                                   )),
        //   Text('  8.31',style: TextStyle(
        //                                   fontFamily: 'Quicksand',
        //                                   fontSize: 15.0,
        //                                   color: ColorPalette().TextColor,
        //                                   )),                                
        //   Text('16.63%',style: TextStyle(
        //                                   fontFamily: 'Quicksand',
        //                                   fontSize: 15.0,
        //                                   color: ColorPalette().TextColor,
        //                                 )),
          
          
          
          
        // ],
        //     ),
        //   ),
        //     SizedBox(height:MediaQuery.of(context).size.height*0.01,),
        //     Container(
        //   height: 0.2,
        //   width: MediaQuery.of(context).size.width*0.95,
        // color: Colors.grey,
        //   ),
        //     SizedBox(height:MediaQuery.of(context).size.height*0.01,),
        //     Padding(
        //     padding: const EdgeInsets.only(left: 7,right: 7),
        //     child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: [
        //   Text('GOOGL',style: TextStyle(
        //                                   fontFamily: 'Quicksand',
        //                                   fontSize: 14.5,
        //                                   color: ColorPalette().TextColor,
        //                                   )),
        //   Text(' Alphabet',style: TextStyle(
        //                                   fontFamily: 'Quicksand',
        //                                   fontSize: 15.0,
        //                                   color: ColorPalette().TextColor,
        //                                   )),
        //   Text('     2.56  ',style: TextStyle(
        //                                   fontFamily: 'Quicksand',
        //                                   fontSize: 15.0,
        //                                   color: ColorPalette().TextColor, 
        //                                   )),  
        //   Text('      8.31 ',style: TextStyle(
        //                                   fontFamily: 'Quicksand',
        //                                   fontSize: 15.0,
        //                                   color: ColorPalette().TextColor,
        //                                   )),                                                              
        //   Text('16.63%',style: TextStyle(
        //                                   fontFamily: 'Quicksand',
        //                                   fontSize: 15.0,
        //                                   color: ColorPalette().TextColor,
        //                                 )),
          
          
          
          
          
        // ],
        //     ),
        //   ),      
        //     SizedBox(height:MediaQuery.of(context).size.height*0.01,),
        //     Container(
        //   height: 0.2,
        //   width: MediaQuery.of(context).size.width*0.95,
        // color: Colors.grey,
        //   ),
        //     SizedBox(height:MediaQuery.of(context).size.height*0.01,),
        //     Padding(
        //      padding: const EdgeInsets.only(left: 7,right: 7),
        //      child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text('GOOG',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 14.5,
        //                                     color: ColorPalette().TextColor,
        //                                     )),
        //     Text('     Alphabet   ',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                     )), 
        //     Text('     2.56  ',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor, 
        //                                     )), 
        //     Text('      8.31 ',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                     )),                                                                                              
        //     Text('16.63%',style: TextStyle(
        //                                     fontFamily: 'Quicksand',
        //                                     fontSize: 15.0,
        //                                     color: ColorPalette().TextColor,
        //                                   )),
            
            
            
            
            
        //   ],
        //      ),
        //    ),      
        //     SizedBox(height:MediaQuery.of(context).size.height*0.01,),
        //     Container(
        //     height: 0.2,
        //     width: MediaQuery.of(context).size.width*0.95,
        //   color: Colors.grey,
        //    ),
          //   SizedBox(height:MediaQuery.of(context).size.height*0.01,),
          //   Padding(
          //    padding: const EdgeInsets.only(left: 7,right: 7),
          //    child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // children: [
          //   Text('16.63%',style: TextStyle(
          //                                   fontFamily: 'Quicksand',
          //                                   fontSize: 15.0,
          //                                   color: ColorPalette().TextColor,
          //                                 )),
          //   Text('      18.31 ',style: TextStyle(
          //                                   fontFamily: 'Quicksand',
          //                                   fontSize: 15.0,
          //                                   color: ColorPalette().TextColor,
          //                                   )),
          //   Text('     2.56    ',style: TextStyle(
          //                                   fontFamily: 'Quicksand',
          //                                   fontSize: 15.0,
          //                                   color: ColorPalette().TextColor, 
          //                                   )),
          //   Text('       Tesla Inc.     ',style: TextStyle(
          //                                   fontFamily: 'Quicksand',
          //                                   fontSize: 15.0,
          //                                   color: ColorPalette().TextColor,
          //                                   )),
          //   Text('TSLA',style: TextStyle(
          //                                   fontFamily: 'Quicksand',
          //                                   fontSize: 14.5,
          //                                   color: ColorPalette().TextColor,
          //                                   )),
            
          // ],
          //    ),
          //  ),  
          //   SizedBox(height:MediaQuery.of(context).size.height*0.01,),
          //   Container(
          //   height: 0.2,
          //   width: MediaQuery.of(context).size.width*0.95,
          // color: Colors.grey,
          //  ),
          //   SizedBox(height:MediaQuery.of(context).size.height*0.01,),
          //   Padding(
          //    padding: const EdgeInsets.only(left: 7,right: 7),
          //    child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // children: [
          //   Text('16.63%',style: TextStyle(
          //                                   fontFamily: 'Quicksand',
          //                                   fontSize: 15.0,
          //                                   color: ColorPalette().TextColor,
          //                                 )),
          //   Text('      18.31 ',style: TextStyle(
          //                                   fontFamily: 'Quicksand',
          //                                   fontSize: 15.0,
          //                                   color: ColorPalette().TextColor,
          //                                   )),
          //   Text(' 25.56            ',style: TextStyle(
          //                                   fontFamily: 'Quicksand',
          //                                   fontSize: 15.0,
          //                                   color: ColorPalette().TextColor, 
          //                                   )),
          //   Text('Eli Lilly         ',style: TextStyle(
          //                                   fontFamily: 'Quicksand',
          //                                   fontSize: 15.0,
          //                                   color: ColorPalette().TextColor,
          //                                   )),
          //   Text('LLY',style: TextStyle(
          //                                   fontFamily: 'Quicksand',
          //                                   fontSize: 14.5,
          //                                   color: ColorPalette().TextColor,
          //                                   )),
            
          // ],
          //    ),
          //  ),          
          //   ],
          ],),
        ),
      ),
    );
  }
}
class ChartData {
  final int x;
  final int y;

  ChartData(this.x, this.y);
}
class LineChartWidget extends StatelessWidget {
  final List<ChartData> chartData;

  LineChartWidget(this.chartData);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      primaryXAxis: NumericAxis(),
      primaryYAxis: NumericAxis(),
      series: <ChartSeries>[
        SplineSeries<ChartData, int>(
          dataSource: chartData,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          color: Colors.green,
        ),
      ],
    );
  }
}



