import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iFund/profile/profile.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../constants/color_palette.dart';
import '../home/home.dart';



class ChartData {
  final String category;
  final double value;

  ChartData(this.category, this.value);
}
class DecoPage extends StatefulWidget {
  const DecoPage({Key? key}) : super(key: key);

  @override
  State<DecoPage> createState() => _DecoPageState();
}

class _DecoPageState extends State<DecoPage> {
  double principal = 0;
  double interestRate = 0;
  int duration = 0;
  double result = 0;
  Color borderColor = ColorPalette().theardgColor;
  List<ChartData> chartData = [
    ChartData('01', 10),
    ChartData('02 ', 20),
    ChartData('03 ', 30),
    ChartData('04', 40),
    ChartData('05', 50),
    ChartData('06', 60),
    ChartData('07 ', 70),
    ChartData('08', 80),
    ChartData('09', 90),
    ChartData('10', 100),
    ChartData('11', 80),
    ChartData('12', 60),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor:  ColorPalette().theardgColor,
        title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(width: MediaQuery.of(context).size.width*0.22),
                  
                    Text( 'Reports' ,
                      style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 20.0,
                                            color:ColorPalette().ContainerColor,
                                            fontWeight: FontWeight.bold)),
                
                         InkWell(
                          onTap: () {
                             Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder:
                      (context)=>ProfilePage(  
              ) ));
                          },
                          child: Icon(Icons.arrow_forward_ios,color:Colors.transparent)),
        
                    ],
        
                  ),
      ),
      body: Column(
        
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.03),
             Center(
               child:  Padding(
                 padding: const EdgeInsets.only(left: 10,right: 15,top: 11,bottom: 11),
                 child: Container(
                  height: 250,
                             
                  child: SfCartesianChart(
                      plotAreaBackgroundColor: Colors.transparent, // Set the plot area background color to transparent
                    primaryXAxis: CategoryAxis(
                      majorGridLines: MajorGridLines(width: 0),
                        minorGridLines: MinorGridLines(width: 0),
                    ),
                    primaryYAxis: NumericAxis(
                      majorGridLines: MajorGridLines(width: 0),
                        minorGridLines: MinorGridLines(width: 0),
                    ),
                    isTransposed: true, // Set this property to true for vertical bars
                    series: <ChartSeries>[
                      BarSeries<ChartData, String>(
                        dataSource: chartData,
                        xValueMapper: (ChartData data, _) => data.category,
                        yValueMapper: (ChartData data, _) => data.value,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ],
                  ),
                             ),
               ),
             ),
             SizedBox(height: MediaQuery.of(context).size.height*0.03),
            InkWell(
                onTap: () {
                
                },
                child: Container(            
                  height: MediaQuery.of(context).size.height*0.08,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                  color: ColorPalette().ContainerColor,
                            borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // Offset of the shadow
                ),
              ],
                            ),
                            child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: 14,left: 10),
                        child: Icon(Icons.payment_outlined,size: 20,
                        color: ColorPalette().secoundgColor,
                    ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 5),
                        child: Text( 'Cash movement' ,
        
                        style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 15.0,
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.bold)),
                      ),
        
              
                      Spacer(),
                       Padding(
                         padding: const EdgeInsets.only(left: 12),
                         child: Stack(
                          children: [
                            
                            Positioned(
                              left: 5,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.green.shade500,
                              ),
                            ),
                        SizedBox(width: MediaQuery.of(context).size.height*0.05,),
                            Positioned(
                              right: 10,
                              child: Icon(
                                  Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.green.shade300,
                              ),
                            ),
                         
                            Icon(
                                Icons.arrow_forward_ios,
                              size: 15,
                              color: Colors.green.shade100,
                            ),
             
        
                          ],
                        ),
                       ),
                       
                     
                      
                    
              
              
                    ],
                  ),
                ),
              ),
               SizedBox(height: MediaQuery.of(context).size.height*0.03),
            InkWell(
                onTap: () {
                
                },
                child: Container(            
                  height: MediaQuery.of(context).size.height*0.08,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                  color: ColorPalette().ContainerColor,
                            borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // Offset of the shadow
                ),
              ],
                            ),
                            child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                       padding:  EdgeInsets.only(right: 14,left: 10),
                        child: Icon(Icons.money,size: 20,
                        color: ColorPalette().secoundgColor,
                    ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 5),
                         child: Text('Dividend movement',
        
                        style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 15.0,
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.bold)),
                      ),
        
              
                      Spacer(),
                       Padding(
                         padding: const EdgeInsets.only(left: 12),
                         child: Stack(
                          children: [
                            
                            Positioned(
                              left: 5,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.green.shade500,
                              ),
                            ),
                        SizedBox(width: MediaQuery.of(context).size.height*0.05,),
                            Positioned(
                              right: 10,
                              child: Icon(
                                  Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.green.shade300,
                              ),
                            ),
                         
                            Icon(
                                Icons.arrow_forward_ios,
                              size: 15,
                              color: Colors.green.shade100,
                            ),
             
        
                          ],
                        ),
                       ),
                       
                     
                      
                    
              
              
                    ],
                  ),
                ),
              ),
               SizedBox(height: MediaQuery.of(context).size.height*0.03),
            InkWell(
                onTap: () {
                
                },
                child: Container(            
                  height: MediaQuery.of(context).size.height*0.08,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                  color: ColorPalette().ContainerColor,
                            borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // Offset of the shadow
                ),
              ],
                            ),
                            child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                     padding:  EdgeInsets.only(right: 14,left: 10),
                        child: Icon(Icons.auto_graph,size: 20,
                        color: ColorPalette().secoundgColor,
                    ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 5),
                        child: Text('Annual reports' ,
        
                        style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 15.0,
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.bold)),
                      ),
        
              
                      Spacer(),
                       Padding(
                         padding: const EdgeInsets.only(left: 12),
                         child: Stack(
                          children: [
                            
                            Positioned(
                              left: 5,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.green.shade500,
                              ),
                            ),
                        SizedBox(width: MediaQuery.of(context).size.height*0.05,),
                            Positioned(
                              right: 10,
                              child: Icon(
                                  Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.green.shade300,
                              ),
                            ),
                         
                            Icon(
                                Icons.arrow_forward_ios,
                              size: 15,
                              color: Colors.green.shade100,
                            ),
             
        
                          ],
                        ),
                       ),
                       
                     
                      
                    
              
              
                    ],
                  ),
                ),
              ),
        ],
      ),

      

    );
    
  }
}