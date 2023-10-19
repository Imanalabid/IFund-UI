import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math';
import '../constants/color_palette.dart';



class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  double principal = 0;
  double interestRate = 0;
  int duration = 0;
  double result = 0;
  Color borderColor = Colors.grey.shade300;

  List<ChartData> chartData = [
    ChartData(0, 5),
    ChartData(1, 10),
    ChartData(2, 7),
    ChartData(3, 12),
    ChartData(4, 15),
    ChartData(5, 9),
    // Add more data points as needed
  ];
  
  bool showChart = false;

void calculateInterest() {
    setState(() {
      // Calculate the result
      result = principal * pow(1 + (interestRate / 100), duration);

      // Show the chart after calculating the result
      showChart = true;

      // Clear the previous data from the chartData list
      chartData.clear();

      // Calculate and add data points for each year
      for (int year = 0; year <= duration; year++) {
        double yearResult = principal * pow(1 + (interestRate / 100), year);
        chartData.add(ChartData(year, yearResult));
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette().theardgColor,
        title: Center(
          child: Text(
            'Earnings calculator',
            style: TextStyle(
              fontFamily: 'Quicksand',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 16, left: 16, top: 50),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Initial investment',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: borderColor),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          labelText: 'Share capital',
                          labelStyle: TextStyle(
                            fontFamily: 'Quicksand',
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: borderColor),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: borderColor),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onChanged: (value) {
                          principal = double.parse(value);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Estimated profit rate',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: borderColor),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.grey,
                        ),
                        decoration: InputDecoration(
                          labelText: ' Percentage',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: borderColor),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: borderColor),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onChanged: (value) {
                          interestRate = double.parse(value);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'The number of years',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: borderColor),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          labelText: 'Duration (years)',
                          labelStyle: TextStyle(
                            fontFamily: 'Quicksand',
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: borderColor),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: borderColor),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onChanged: (value) {
                          duration = int.parse(value);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green.shade600,
                        onPrimary: Colors.green.shade900,
                        minimumSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 5.0,
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(top: 3),
                        child: Text(
                          'Calculate',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onPressed: calculateInterest,
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Result : ${result.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 18.0,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                 Visibility(
                  visible: showChart,
                  child: Container(
                    height: 200,
                    color: Colors.grey.shade200,
                    child: LineChartWidget(chartData),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChartData {
  final int x;
  final double y;

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


// import 'package:flutter/material.dart';
// import 'package:Mrayya/constants/color_palette.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// class CalculatorScreen extends StatefulWidget {
//   @override
//   _CalculatorScreenState createState() => _CalculatorScreenState();
// }

// class _CalculatorScreenState extends State<CalculatorScreen> {
//   double principal = 0;
//   double interestRate = 0;
//   int duration = 0;
//   double result = 0;
//   Color borderColor = Colors.grey.shade300;

//   final List<ChartData> chartData = [
//     ChartData(0, 5),
//     ChartData(1, 10),
//     ChartData(2, 7),
//     ChartData(3, 12),
//     ChartData(4, 15),
//     ChartData(5, 9),
//     // Add more data points as needed
//   ];

//   void calculateInterest() {
//     setState(() {
//       result = principal * (1 + (interestRate / 100)) * duration;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: ColorPalette().theardgColor,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Icon(Icons.arrow_back),
//             Text('حاسبة الأرباح',
//             style: TextStyle(
//                                     fontFamily: 'Quicksand',
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold)),
//             Icon(Icons.home),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(right: 16, left: 16, top: 50),
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [

//                     Text(
//                       'الاستثمار الأولي',
//                       style: TextStyle(
//                         fontFamily: 'Quicksand',
//                         fontSize: 16.0,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                       Container(
//                       height: 50,
//                       width: 180,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(25),
//                         border: Border.all(color: borderColor),
//                       ),
//                       child: TextField(
//                         keyboardType: TextInputType.number,
//                         style: TextStyle(color: Colors.grey),
//                         decoration: InputDecoration(
//                           labelText: 'رأس المال',
//                           labelStyle: TextStyle(
//                               fontFamily: 'Quicksand',
//                             color: Colors.grey),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: borderColor),
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: borderColor),
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                         ),
//                         onChanged: (value) {
//                           principal = double.parse(value);
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: MediaQuery.of(context).size.height * 0.03),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       'معدل الربح المقدر',
//                       style: TextStyle(
//                         fontFamily: 'Quicksand',
//                         fontSize: 16.0,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Container(
//                       height: 50,
//                       width: 180,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(25),
//                         border: Border.all(color: borderColor),
//                       ),
//                       child: TextField(
//                         keyboardType: TextInputType.number,
//                         style: TextStyle(
//                           fontFamily: 'Quicksand',
//                           color: Colors.grey),
//                         decoration: InputDecoration(
//                           labelText: ' النسبة',
//                           labelStyle: TextStyle(
//                             color: Colors.grey),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: borderColor),
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: borderColor),
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                         ),
//                         onChanged: (value) {
//                           interestRate = double.parse(value);
//                         },
//                       ),
//                     ),
                    
//                   ],
//                 ),
//                 SizedBox(height: MediaQuery.of(context).size.height * 0.03),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                      Text(
//                       'عدد السنوات',
//                       style: TextStyle(
//                         fontFamily: 'Quicksand',
//                         fontSize: 16.0,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Container(
//                       height: 50,
//                       width: 180,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(25),
//                         border: Border.all(color: borderColor),
//                       ),
//                       child: TextField(
//                         keyboardType: TextInputType.number,
//                         style: TextStyle(color: Colors.grey),
//                         decoration: InputDecoration(
//                           labelText: 'المدة (سنوات)',
//                           labelStyle: TextStyle(
//                               fontFamily: 'Quicksand',
//                             color: Colors.grey),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: borderColor),
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: borderColor),
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                         ),
//                         onChanged: (value) {
//                           duration = int.parse(value);
//                         },
//                       ),
//                     ),
                   
//                   ],
//                 ),
//                 SizedBox(height: MediaQuery.of(context).size.height * 0.05),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.grey.shade300,
//                         onPrimary: Colors.grey.shade600,
//                         minimumSize: Size(150, 50),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(25),
//                         ),
//                         elevation: 5.0,
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.only(top: 10),
//                         child: Text(
//                           'احسب',
//                           style: TextStyle(
//                             fontFamily: 'Quicksand',
//                             fontSize: 18.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       onPressed: calculateInterest,
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       ' النتيجة : $result',
//                       style: TextStyle(
//                         fontFamily: 'Quicksand',
//                         fontSize: 18.0,
//                         color: Colors.grey.shade600,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: MediaQuery.of(context).size.height*0.05,),
//                 Container(
//                   height: 200,
//                   color: Colors.grey.shade200,
//                  child: LineChartWidget(chartData),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ChartData {
//   final int x;
//   final int y;

//   ChartData(this.x, this.y);
// }
// class LineChartWidget extends StatelessWidget {
//   final List<ChartData> chartData;

//   LineChartWidget(this.chartData);

//   @override
//   Widget build(BuildContext context) {
//     return SfCartesianChart(
//       primaryXAxis: NumericAxis(),
//       primaryYAxis: NumericAxis(),
//       series: <ChartSeries>[
//         SplineSeries<ChartData, int>(
//           dataSource: chartData,
//           xValueMapper: (ChartData data, _) => data.x,
//           yValueMapper: (ChartData data, _) => data.y,
//           color: Colors.green,
//         ),
//       ],
//     );
//   }
// }



