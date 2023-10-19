import 'package:flutter/material.dart';
import 'package:iFund/slider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'linecharts.dart';
import 'constants/color_palette.dart';

class SPage extends StatefulWidget {
  @override
  State<SPage> createState() => _FPageState();
}

class _FPageState extends State<SPage> with SingleTickerProviderStateMixin {
  int selectedButtonIndex = 0; // Track the selected button index
  late TabController _tabController; // To manage the tab selections


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           
      appBar: AppBar(
           backgroundColor: ColorPalette().theardgColor,
   title:
        Row(
          children: [
               SizedBox(width: MediaQuery.of(context).size.width*0.25),
            Text('Market',style: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 18.0,
            color: ColorPalette().IconColor,
            fontWeight: FontWeight.bold)),
          ],
        ),
        
     
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 20, left: 15, right: 15),
              child: Row(
                children: [
                  Icon(Icons.facebook_outlined, size: 60, color: Colors.blue),
                   SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Column(
                    children: [
                      SizedBox(height: 5,),
                      Text(
                        'FB Facebook, Inc',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 14.0,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                      Text(
                        '\$65,345',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 22.0,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.green.shade200,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_upward,size: 14,),
                          Spacer(),
                          Text(
                            '3.2%',
                            style: TextStyle(fontSize: 12, color: Colors.green.shade700),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
           SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(
      7, // There are 7 days in a week
      (index) {
        // Define a list of weekday names
        List<String> weekdays = ['1D', '5D', '6M', 'YTD', '1Y', '5Y', 'Max'];

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                selectedButtonIndex = index;
              });
            },
            style: ElevatedButton.styleFrom(
              primary: selectedButtonIndex == index ? Colors.green : Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            child: Text(weekdays[index]), // Display weekday name
          ),
        );
      },
    ),
  ),
),

            SizedBox(height: 10),
            Container(
              height: 200,
              child: LineChartSample2(), // Adjust the height as needed
             // Replace with your chart widget
            ),
            DefaultTabController(
              length: 2, // Specify the number of tabs
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TabBar(
                        controller: _tabController,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green, // Indicator color
                        ),
                        tabs: [
                          Tab(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Details', style: TextStyle(color: Colors.black)),
                            ),
                          ),
                          Tab(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Summary ', style: TextStyle(color: Colors.black)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                    child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade200, width: 1),
                    ),
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Center(child: _tabController.index == 0 ? Padding(
                          padding:  EdgeInsets.only(right: 20,left: 20,top: 15),
                          child: Column(
                            children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Column(
                                children: [
                                     Text('Open', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                     SizedBox(height: 10,),
                               Text('142.54',style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                                 SizedBox(height: 15,),
                               Text('Volume', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                 SizedBox(height: 10,),
                               Text('254.1',
                               style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)
                               ),
                                ],
                               ),
                               Column(
                                children: [
                                     Text('High', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                     SizedBox(height: 10,),
                               Text('125.48', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                                 SizedBox(height: 15,),
                               Text('Avg Volume', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                 SizedBox(height: 10,),
                               Text('124.548', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                                ],
                               ),
                                   Column(
                                children: [
                                     Text('Low', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                     SizedBox(height: 10,),
                               Text('224.15', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                                 SizedBox(height: 15,),
                               Text('Market Cap', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                 SizedBox(height: 10,),
                               Text('254.145', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                                ],
                               ),
                            
                      
                              ],
                            ),
                        
                          ],
                        ),
                      )  : null),
                        Center(child: _tabController.index == 1? Padding(
                          padding:  EdgeInsets.only(right: 20,left: 20),
                          child: Column(
                            children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Column(
                                children: [
                                     Text('Open', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                     SizedBox(height: 10,),
                               Text('142.54',style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                                 SizedBox(height: 15,),
                               Text('Volume', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                 SizedBox(height: 10,),
                               Text('254.1',
                               style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)
                               ),
                                ],
                               ),
                               Column(
                                children: [
                                     Text('High', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                     SizedBox(height: 10,),
                               Text('125.48', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                                 SizedBox(height: 15,),
                               Text('Avg Volume', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                 SizedBox(height: 10,),
                               Text('124.548', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                                ],
                               ),
                                   Column(
                                children: [
                                     Text('Low', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                     SizedBox(height: 10,),
                               Text('224.15', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                                 SizedBox(height: 15,),
                               Text('Market Cap', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16.0,
                          color: Colors.black87,
                          )),
                                 SizedBox(height: 10,),
                               Text('254.145', style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 18.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                                ],
                               ),
                            
                      
                              ],
                            ),
                        
                          ],
                        ),
                      ) :null ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey.shade300,width: 2),
    borderRadius: BorderRadius.circular(35),
   color: Colors.white
  ),
  child: SliderButton(
    action: () {
      // Callback function when the slider is slid
      print('Slider button slid successfully!');
    },
    label: Text(
      'Swipe To Sell             ',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'Quicksand',
      ),
    ),
    icon: Icon(
      Icons.arrow_forward_ios,
      color: Colors.white,
      size: 18,
    ),
    radius: 30.0,
    buttonColor: Colors.green, // Set buttonColor to transparent
    backgroundColor: Colors.transparent, // Set backgroundColor to transparent
    baseColor: Colors.transparent, // Set baseColor to transparent
  ),
),
      //               child:GestureDetector(
      // onHorizontalDragUpdate: (details) {
      //   setState(() {
      //     _isOn = details.localPosition.dx >= 165; // Adjust the threshold as needed
      //   });
      // },
      // child: Container(
      //   width: 330,
      //   height: 60,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(30),
      //     gradient: LinearGradient(
      //       colors: _isOn
      //           ? [Color(0xFFB4BBCB), Color(0xFF6E7FAA)]
      //           : [Color(0xFF53A0FD), Color(0xFF93C6FD)],
      //       begin: Alignment.centerRight,
      //       end: Alignment.centerLeft,
      //     ),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black.withOpacity(0.1),
      //         spreadRadius: 2,
      //         blurRadius: 4,
      //         offset: Offset(0, 3),
      //       ),
      //     ],
      //   ),
      //   child: Stack(
      //     children: [
      //       Align(
      //         alignment: _isOn ? Alignment.centerRight : Alignment.centerLeft,
      //         child: Container(
      //           width: 70,
      //           height: 90,
      //           decoration: BoxDecoration(
      //             shape: BoxShape.circle,
      //             color: Colors.white,
      //             boxShadow: [
      //               BoxShadow(
      //                 color: Colors.black.withOpacity(0.1),
      //                 spreadRadius: 1,
      //                 blurRadius: 3,
      //                 offset: Offset(0, 2),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';


// class FPage extends StatefulWidget {
//   @override
//   State<FPage> createState() => _FPageState();
// }

// class _FPageState extends State<FPage> {
//   int selectedButtonIndex = 0; // Track the selected button index

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//             padding: EdgeInsets.only(top: 20,bottom: 20,left: 15,right: 15),
//             child: Row(
//               children: [
//                 Icon(Icons.facebook_outlined,size: 55,color: Colors.blue,),
//                 SizedBox(width: MediaQuery.of(context).size.width*0.02,),
//                 Column(
//                   children: [
//                     Text('FB Facebook , Inc',style: TextStyle(
//                   fontFamily: 'Quicksand',
//                   fontSize: 14.0,
//                   color: Colors.black54,
//                   fontWeight: FontWeight.bold)),
//                   SizedBox(height: MediaQuery.of(context).size.height*0.02,),
//                    Text('\$65,345',style: TextStyle(
//                   fontFamily: 'Quicksand',
//                   fontSize: 20.0,
//                   color: Colors.black87,
//                   fontWeight: FontWeight.bold))
//                   ],
//                 ),
//               Spacer(),
//               Container(
//                 height: 30,
//                 width: 60,
//                 decoration: BoxDecoration(
//                   color: Colors.green.shade200,
//                   borderRadius: BorderRadius.circular(15)
//                 ),
//                 child: Row(
//                   children: [
//                     Icon(Icons.arrow_upward),
//                     Spacer(),
//                     Text('3.2%',style: TextStyle(fontSize: 12,color: Colors.green.shade700),),
//                   ],
//                 ),
//               )
//               ],
//             ),
//           ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: List.generate(
//                   6,
//                   (index) => Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 10),
//                     child: ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           selectedButtonIndex = index;
//                         });
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: selectedButtonIndex == index ? Colors.green : Colors.grey,
//                       ),
//                       child: Text('Button $index'),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Container(
//               height: 300, // Adjust the height as needed
              
//             ),
//             SizedBox(height: 10),
//          DefaultTabController(
//               length: 2, // Specify the number of tabs
//               child: Column(
//                 children: [
//                   TabBar(
//                     tabs: [
//                       Tab(text: 'Tab 1'),
//                       Tab(text: 'Tab 2'),
//                     ],
//                   ),
//                   SizedBox(height: 10),
//                   Container(
//               height: 40,
//               decoration: BoxDecoration(
//                 color: Colors.grey.shade200,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: DefaultTabController(
//                 length: 2,
//                 child: TabBar(
//                   indicator: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.green, // Indicator color
//                   ),
//                   tabs: [
//                     Tab(
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text('Details', style: TextStyle(color: Colors.black)),
//                       ),
//                     ),
//                     Tab(
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text('Summary ', style: TextStyle(color: Colors.black)),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Container(
//               height: 400,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(25),
//                 color: Colors.white,
//                 border: Border.all(color: Colors.grey.shade200, width: 1),
//               ),
//               child: TabBarView(
//                 children: [
//                   Center(child: Text('Tab 1 Content')),
//                   Center(
//                     child: Padding(
//                       padding: const EdgeInsets.only(right: 20,left: 20),
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                             Column(
//                               children: [
//                                    Text('Open', style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 16.0,
//         color: Colors.black87,
//         )),
//                                    SizedBox(height: 10,),
//                              Text('142.54',style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 18.0,
//         color: Colors.black87,
//         fontWeight: FontWeight.bold)),
//                                SizedBox(height: 15,),
//                              Text('Volume', style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 16.0,
//         color: Colors.black87,
//         )),
//                                SizedBox(height: 10,),
//                              Text('254.1',
//                              style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 18.0,
//         color: Colors.black87,
//         fontWeight: FontWeight.bold)
//                              ),
//                               ],
//                              ),
//                              Column(
//                               children: [
//                                    Text('High', style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 16.0,
//         color: Colors.black87,
//         )),
//                                    SizedBox(height: 10,),
//                              Text('125.48', style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 18.0,
//         color: Colors.black87,
//         fontWeight: FontWeight.bold)),
//                                SizedBox(height: 15,),
//                              Text('Avg Volume', style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 16.0,
//         color: Colors.black87,
//         )),
//                                SizedBox(height: 10,),
//                              Text('124.548', style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 18.0,
//         color: Colors.black87,
//         fontWeight: FontWeight.bold)),
//                               ],
//                              ),
//                                  Column(
//                               children: [
//                                    Text('Low', style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 16.0,
//         color: Colors.black87,
//         )),
//                                    SizedBox(height: 10,),
//                              Text('224.15', style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 18.0,
//         color: Colors.black87,
//         fontWeight: FontWeight.bold)),
//                                SizedBox(height: 15,),
//                              Text('Market Cap', style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 16.0,
//         color: Colors.black87,
//         )),
//                                SizedBox(height: 10,),
//                              Text('254.145', style: TextStyle(
//         fontFamily: 'Quicksand',
//         fontSize: 18.0,
//         color: Colors.black87,
//         fontWeight: FontWeight.bold)),
//                               ],
//                              ),
                          
                    
//                             ],
//                           ),
                      
//                         ],
//                       ),
//                     )),
//                 ],
//               ),
//             ),
//           ],
//         ),
          
//         ),
//        ] ))

          
  
//     );
//   }
// }



 
