import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import '../../constants/color_palette.dart';
import 'boxs.dart';
import 'home.dart';


class ChartData {
  final String category;
  final double value;

  ChartData(this.category, this.value);
}
class BoxPage extends StatefulWidget {
  const BoxPage({Key? key}) : super(key: key);
 
  @override
  State<BoxPage> createState() => _BoxPageState();
}

class _BoxPageState extends State<BoxPage> {
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
           SizedBox(width: MediaQuery.of(context).size.width*0.25),

                      Text('Box ',
                      style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 22.0,
                                            color:ColorPalette().ContainerColor,
                                            fontWeight: FontWeight.bold)),
               
        
                    ],
        
                  ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
               
              Padding(
                 padding: const EdgeInsets.only(left: 10,right: 15,top: 20,bottom: 11),
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
            SizedBox(height: MediaQuery.of(context).size.height*0.04,),
          Column(
            children: [
              
           Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                Text('Details',
                style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 20.0,
                                                  color: ColorPalette().TextColor,
                                                  fontWeight: FontWeight.bold)),
               
              ],),
           SizedBox(height: MediaQuery.of(context).size.height*0.03,),
           Container(
            height: MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.of(context).size.width*0.95,
            child: Padding(
              padding:  EdgeInsets.only(right: 10,left: 10,top: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('overview',  style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                  )),
                Text('4,137.64', style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                  ))
              ]),
            ),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(15)
           ),
           ),
           SizedBox(height: MediaQuery.of(context).size.height*0.01,),
           Container(
            height: MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.of(context).size.width*0.95,
            child: Padding(
              padding:  EdgeInsets.only(right: 10,left: 10,top: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('last close',  style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                  )),
                Text('4,137.64', style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                  ))
              ]),
            ),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(15)
           ),
           ),
           SizedBox(height: MediaQuery.of(context).size.height*0.01,),
           Container(
            height: MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.of(context).size.width*0.95,
            child: Padding(
              padding:  EdgeInsets.only(right: 10,left: 10,top: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('price and distributions',  style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                  )),
                Text('4,137.64', style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                   color: ColorPalette().TextColor,
                                                  ))
              ]),
            ),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(15)
           ),
           ),
           SizedBox(height: MediaQuery.of(context).size.height*0.01,),
           InkWell(
            onTap: () {
          Navigator.pushNamed(context, '/boxspage'); 
 
         
            },
             child: Container(
              height: MediaQuery.of(context).size.height*0.05,
              width: MediaQuery.of(context).size.width*0.95,
              child: Padding(
                padding:  EdgeInsets.only(right: 10,left: 10,top: 5),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('portfolio components',  style: TextStyle(
                                                    fontFamily: 'Quicksand',
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.bold,
                                                     color: ColorPalette().TextColor,
                                                    )),
                  Text('4,137.64', style: TextStyle(
                                                    fontFamily: 'Quicksand',
                                                    fontSize: 15.0,
                                                     color: ColorPalette().TextColor,
                                                    ))
                ]),
              ),
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(15)
             ),
             ),
           ),
           SizedBox(height: MediaQuery.of(context).size.height*0.01,),
           Container(
            height: MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.of(context).size.width*0.95,
            child: Padding(
              padding:  EdgeInsets.only(right: 10,left: 10,top: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Risk Management',  style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                   color: ColorPalette().TextColor,
                                                  )),
                Text('4,137.64', style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                   color: ColorPalette().TextColor,
                                                  ))
              ]),
            ),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(15)
           ),
           ),
           SizedBox(height: MediaQuery.of(context).size.height*0.01,),
           Container(
            height: MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.of(context).size.width*0.95,
            child: Padding(
              padding:  EdgeInsets.only(right: 10,left: 10,top: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Administration',  style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                  )),
                Text(' 45 Week Range', style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                  ))
              ]),
            ),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(15)
           ),
           ),
            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
           Container(
            height: MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.of(context).size.width*0.95,
            child: Padding(
              padding:  EdgeInsets.only(right: 10,left: 10,top: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Portfolio literature',  style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                  )),
                Text(' 45 Week Range', style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                  ))
              ]),
            ),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(15)
           ),
           ),
           
      
      
      
            ],
          ),
         SizedBox(height: MediaQuery.of(context).size.height*0.02,),
         InkWell(
          onTap: () {
             Navigator.pushNamed(context, '/FPage'); 
          },
           child: Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
           
             borderRadius: BorderRadius.circular(25),
            color: Colors.green
           ),
            child: Center(
              child: Text('Buy Now',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand',
                  ),),
            ),
           ),
         ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          ],
        ),
      ),
    );
    
  }
}