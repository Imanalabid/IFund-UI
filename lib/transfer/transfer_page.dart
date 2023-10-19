import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../constants/color_palette.dart';
import '../creditcard/credit_card_page.dart';
import '../linecharts.dart';


class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  State<TransferPage> createState() => _TransferPageState();
}
class _TransferPageState extends State<TransferPage> {
  
  @override
  Widget build(BuildContext context) {
     final List<ChartData> chartData = [
    ChartData(0, 5),
    ChartData(1, 10),
    ChartData(2, 7),
    ChartData(3, 12),
    ChartData(4, 15),
    ChartData(5, 9),
    // Add more data points as needed
  ];
    return Scaffold(
   
      appBar: AppBar(
        backgroundColor: ColorPalette().theardgColor,
        title: Center(
          child: Text(
            'Transfer       ',
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 20.0,
                color: ColorPalette().ContainerColor,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
 padding: const EdgeInsets.only(top: 30, bottom: 10),   
              child: Center(
                child: Text('Portfolio performance',
                  style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 20.0,
                                        color: Colors.grey.shade800,
                                        fontWeight: FontWeight.bold)
                  ),
              ),
              ),

             Container(
                  height: 200,
                  color: Colors.grey.shade200,
                 child:LineChartSample2()
                ),
             

              SizedBox(height: MediaQuery.of(context).size.height * 0.12),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Text(
                    'Transfer Methods ',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 18.0,
                        color: ColorPalette().TextColor,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Center(
                child: InkWell(
                  onTap: () {
             Navigator.pushNamed(context, '/etfpage'); 
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        Container(
                          height: 50,
                          width: 50,
                          child: Icon(Icons.money),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height * 0.035),
                            Text(
                              'Deposit via money transfer / ETF',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 13.0,
                                  color: ColorPalette().TextColor,
                                  fontWeight: FontWeight.w800),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                            Text(
                              'money transfer',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 12.0,
                                  color: ColorPalette().TextColor,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey.shade400),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              Center(
                child: InkWell(
                  onTap: () {
                  Navigator.pushNamed(context, '/creditcart'); 
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Row(
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        Container(
                          height: 50,
                          width: 50,
                          child: Icon(Icons.credit_card),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height * 0.035),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(builder: (context) => CreditCardPage()));
                              },
                              child: Text(
                                      'Deposit by credit card',                               
                                      style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 13.0,
                                    color: ColorPalette().TextColor,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                            Text(
                              'Credit card',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 12.0,
                                  color: ColorPalette().TextColor,
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey.shade400),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            ],
          ),
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



