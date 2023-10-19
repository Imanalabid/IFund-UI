import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../constants/color_palette.dart';
import '../Sidebar.dart';
import '../pagee.dart';
import 'box_page.dart';
import 'home.dart';

class BoxsPage extends StatefulWidget {
  const BoxsPage({Key? key}) : super(key: key);

  @override
  State<BoxsPage> createState() => _BoxsPageState();
}

class _BoxsPageState extends State<BoxsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor:  ColorPalette().theardgColor,
        title: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
             children: [
           SizedBox(width: MediaQuery.of(context).size.width*0.25),
                      Text('Boxs ',
                      style: TextStyle(
                                            fontFamily: 'Tajawal',
                                            fontSize: 20.0,
                                            color:ColorPalette().ContainerColor,
                                            fontWeight: FontWeight.bold)),
                  Spacer(),
                        
                    ],
        
                  ),
      ),

        body:   SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              Center(
                child: Container(
                                  height: 800,
                                   width: 350,
                                   color: Colors.white,
                                   
                                   child: 
                                   Column(children: [
                                   
                                      SizedBox(height: 10,),
                                      InkWell(
                                           onTap: () {
                                 Navigator.pushNamed(context, '/sonpage'); 
                                           },
                                        child: Row(
                                         children: [
                                        Container(
                                          height:50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade300)
                                          ),
                                          child: Image.asset('assets/img/apple.png',height: 55,width: 50,)),
                                             SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                        SizedBox(height: 12,),
                                            Text('AAPL ',
                                        style:  TextStyle(
                                               fontFamily: 'Tajawal',
                                               fontSize: 15.0,
                                               color: ColorPalette().TextColor,
                                               fontWeight: FontWeight.bold)),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                              
                                        Divider(),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.52,),
                                           Column(
                                          children: [
                                            SizedBox(height: 8,),
                                            Text('%70 ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 13.0,
                                                    color: ColorPalette().TextColor,
                                                    fontWeight: FontWeight.bold)),
                                                   SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                    Text('+15% ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
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
                                      SizedBox(height: 5),
                                      Divider(),
                                      SizedBox(height: 5),
                                      InkWell(
                                             onTap: () {
                                       Navigator.pushNamed(context, '/sonpage'); 
                                           },
                                        child: Row(
                                         children: [
                                        Container(
                                           height:50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade300)
                                          ),
                                          child: Image.asset('assets/img/n.png',height: 50,width: 50,)),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                        Text('Nvidia ',
                                         style:  TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.w800)),
                                               SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                            
                                        Container(),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.5,),
                                               Column(
                                          children: [
                                            Text('%60 ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 13.0,
                                                     color: ColorPalette().TextColor,
                                                    fontWeight: FontWeight.bold)),
                                                   SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                    Text('+15% ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
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
                                      SizedBox(height: 5),
                                      Divider(),
                                      SizedBox(height: 5),
                                      InkWell(
                                       onTap: () {
                                    Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(builder:
                                          (context)=>SonPage(  
                                  ) ));
                                           },
                                         child: Row(
                                        children: [
                                                Container(
                                                  height:50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade300)
                                          ),
                                                                      child: Image.asset('assets/img/m.png',height: 50,width: 50,)),
                                             SizedBox(width: MediaQuery.of(context).size.width*0.015,),
                                                                     SizedBox(height: 8,),
                                            Text('Microsoft ',
                                                                     style:  TextStyle(
                                               fontFamily: 'Tajawal',
                                               fontSize: 15.0,
                                               color: ColorPalette().TextColor,
                                               fontWeight: FontWeight.w600)),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                             
                                                                     Container(),
                                              SizedBox(width: MediaQuery.of(context).size.width*0.45,),
                                               Column(
                                          children: [
                                            Text('%90 ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 13.0,
                                                    color: ColorPalette().TextColor,
                                                    fontWeight: FontWeight.bold)),
                                                   SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                    Text('+15% ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12.0,
                                                      color: Colors.transparent
                                                    ))
                                       
                                          ],        
                                                                     ),
                                                                
                                              
                                        
                                         
                                       
                                         ],
                                                                     ),
                                       ),
                                      SizedBox(height: 5),
                                      Divider(),
                                      SizedBox(height: 5),
                                      InkWell(
                                           onTap: () {
                                  Navigator.pushNamed(context, '/sonpage'); 
                                           },
                                        child: Row(
                                         children: [
                                        Container(
                                           height:50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade300)
                                          ),child: Image.asset('assets/img/g.png',)),
                                             SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                        SizedBox(height: 12,),
                                            Text('Google ',
                                        style:  TextStyle(
                                               fontFamily: 'Tajawal',
                                               fontSize: 15.0,
                                               color: ColorPalette().TextColor,
                                               fontWeight: FontWeight.bold)),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                              
                                        Container(),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.49,),
                                               Column(
                                          children: [
                                            SizedBox(height: 8,),
                                            Text('%70 ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 13.0,
                                                    color: ColorPalette().TextColor,
                                                    fontWeight: FontWeight.bold)),
                                                   SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                    Text('+15% ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
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
                                      SizedBox(height: 5),
                                      Divider(),
                                      SizedBox(height: 5),
                                      InkWell(
                                             onTap: () {
                                    Navigator.pushNamed(context, '/sonpage'); 
                                           },
                                        child: Row(
                                         children: [
                                        Container(
                                           height:50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade300)
                                          ),child: Image.asset('assets/img/amd.png',height: 50,width: 50,)),
                                             SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                        Text('AMD ',
                                         style:  TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.w800)),
                                               SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                            
                                        Container(),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.53,),
                                               Column(
                                          children: [
                                            Text('%60 ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 13.0,
                                                     color: ColorPalette().TextColor,
                                                    fontWeight: FontWeight.bold)),
                                                   SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                    Text('+15% ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
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
                                      SizedBox(height: 5),
                                      Divider(),
                                      SizedBox(height: 5),
                                       InkWell(
                                       onTap: () {
                                     Navigator.pushNamed(context, '/sonpage'); 
                                           },
                                         child: Row(
                                         children: [
                                        Container(
                                          height:50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade300)
                                          ),
                                                                      child: Image.asset('assets/img/oracle.png',height: 50,width: 50,)),
                                             SizedBox(width: MediaQuery.of(context).size.width*0.015,),
                                                                     SizedBox(height: 8,),
                                            Text('Oracle ',
                                                                     style:  TextStyle(
                                               fontFamily: 'Tajawal',
                                               fontSize: 15.0,
                                               color: ColorPalette().TextColor,
                                               fontWeight: FontWeight.w600)),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                             
                                                                     Container(),
                                               SizedBox(width: MediaQuery.of(context).size.width*0.5,),
                                               Column(
                                          children: [
                                            Text('%90 ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 13.0,
                                                    color: ColorPalette().TextColor,
                                                    fontWeight: FontWeight.bold)),
                                                   SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                    Text('+15% ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12.0,
                                                      color: Colors.transparent
                                                    ))
                                       
                                          ],        
                                                                     ),
                                                                
                                              
                                        
                                         
                                       
                                         ],
                                                                     ),
                                       ),
                                      SizedBox(height: 5),
                                      Divider(),
                                      SizedBox(height: 5),
                                      InkWell(
                                       onTap: () {
                                      Navigator.pushNamed(context, '/sonpage'); 
                                           },
                                         child: Row(
                                         children: [
                                                                     Container(
                                                                       height:50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade300)
                                          ),child: Image.asset('assets/img/m.png',height: 50,width: 50,)),
                                             SizedBox(width: MediaQuery.of(context).size.width*0.015,),
                                                                     SizedBox(height: 8,),
                                            Text('Microsoft ',
                                                                     style:  TextStyle(
                                               fontFamily: 'Tajawal',
                                               fontSize: 15.0,
                                               color: ColorPalette().TextColor,
                                               fontWeight: FontWeight.w600)),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                             
                                                                     Container(),
                                            SizedBox(width: MediaQuery.of(context).size.width*0.45,),
                                               Column(
                                          children: [
                                            Text('%90 ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 13.0,
                                                    color: ColorPalette().TextColor,
                                                    fontWeight: FontWeight.bold)),
                                                   SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                    Text('+15% ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12.0,
                                                      color: Colors.transparent
                                                    ))
                                       
                                          ],        
                                                                     ),
                                                                
                                              
                                        
                                         
                                       
                                         ],
                                                                     ),
                                       ),
                                      SizedBox(height: 5),
                                      Divider(),
                                      SizedBox(height: 5),
                                      InkWell(
                                           onTap: () {
                                       Navigator.pushNamed(context, '/sonpage'); 
                                           },
                                        child: Row(
                                         children: [
                                        Container(
                                           height:50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade300)
                                          ),child: Image.asset('assets/img/g.png',height: 55,width: 50,)),
                                             SizedBox(width: MediaQuery.of(context).size.width*0.022,),
                                        SizedBox(height: 12,),
                                            Text('Google ',
                                        style:  TextStyle(
                                               fontFamily: 'Tajawal',
                                               fontSize: 15.0,
                                               color: ColorPalette().TextColor,
                                               fontWeight: FontWeight.bold)),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                              
                                        Container(),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.48,),
                                               Column(
                                          children: [
                                            SizedBox(height: 8,),
                                            Text('%70 ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 13.0,
                                                    color: ColorPalette().TextColor,
                                                    fontWeight: FontWeight.bold)),
                                                   SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                    Text('+15% ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
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
                                      SizedBox(height: 5),
                                      Divider(),
                                      SizedBox(height: 5),
                                      InkWell(
                                             onTap: () {
                                     Navigator.pushNamed(context, '/sonpage'); 
                                           },
                                        child: Row(
                                         children: [
                                        Container(
                                           height:50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade300)
                                          ),child: Image.asset('assets/img/netflix.png',height: 50,width: 50,)),
                                             SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                        Text('Samsung ',
                                         style:  TextStyle(
                                                fontFamily: 'Tajawal',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.w800)),
                                               SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                            
                                        Container(),
                                        SizedBox(width: MediaQuery.of(context).size.width*0.45,),
                                               Column(
                                          children: [
                                            Text('%60 ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 13.0,
                                                     color: ColorPalette().TextColor,
                                                    fontWeight: FontWeight.bold)),
                                                   SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                    Text('+15% ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
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
                                      SizedBox(height: 5),
                                      Divider(),
                                      SizedBox(height: 5),
                                       InkWell(
                                       onTap: () {
                                     Navigator.pushNamed(context, '/sonpage'); 
                                           },
                                         child: Row(
                                         children: [
                                                                     Container(
                                                                       height:50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.grey.shade300)
                                          ),child: Image.asset('assets/img/sptf.png',height: 50,width: 50,)),
                                             SizedBox(width: MediaQuery.of(context).size.width*0.015,),
                                                                     SizedBox(height: 8,),
                                            Text('IBM ',
                                                                     style:  TextStyle(
                                               fontFamily: 'Tajawal',
                                               fontSize: 15.0,
                                               color: ColorPalette().TextColor,
                                               fontWeight: FontWeight.w600)),
                                              SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                             
                                                                     Container(),
                                                                     SizedBox(width: MediaQuery.of(context).size.width*0.54,),
                                               Column(
                                          children: [
                                            Text('%90 ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 13.0,
                                                    color: ColorPalette().TextColor,
                                                    fontWeight: FontWeight.bold)),
                                                   SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                                                    Text('+15% ',
                                             style:  TextStyle(
                                                    fontFamily: 'Tajawal',
                                                    fontSize: 12.0,
                                                      color: Colors.transparent
                                                    ))
                                       
                                          ],        
                                                                     ),
                                                                
                                              
                                        
                                         
                                       
                                         ],
                                                                     ),
                                       ),
                                   ]),),
              ),
            ],
          ),
        ),
    );
    
  }
}