
import 'package:flutter/material.dart';

import '../../constants/color_palette.dart';
import '../home/home.dart';
import '../transfer/transfer_page.dart';

class CreditCardPage extends StatefulWidget {
  const CreditCardPage({Key? key}) : super(key: key);

  @override
  State<CreditCardPage> createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette().theardgColor,
        title: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(width: MediaQuery.of(context).size.width*0.12),
             Text('Pay by Credit Card',
                  style: TextStyle(
                                              fontFamily: 'Quicksand',
                                              fontSize: 18.0,
                                             color: ColorPalette().IconColor,
                                              fontWeight: FontWeight.w800)),
                                              Icon(Icons.arrow_back_ios,color: Colors.transparent,)



                ],
              ),
      ),
      body: SingleChildScrollView(      
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,),
              child: Center(
                child: Container(
                  height: 160,
                  width: 330,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5,left: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                 SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                                    //  Image.asset('assets/img/ycart.png',width: 100,height: 50,),
                                       Image.asset('assets/img/1.png',width: 15,height: 25,),
                                       SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                                       Image.asset('assets/img/mstr.png',width: 70,height: 50,),

                                     
                                   
                                

                                
                              ],
                            ),
                           Spacer(),
                           Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: MediaQuery.of(context).size.height*0.06,)
                           //     Image.asset('assets/img/wo.png',width: 100,height: 50,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
  
                                Image.asset('assets/img/2.png',width: 100,height: 50,),
                               Image.asset('assets/img/i.png',width: 15,height: 15,),
                              ],
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                              Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                            Text('0000 0000 0000 0000 ',style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 15.0,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w800)),
                       ],),
                        Row(
                          children: [   
                            Text('M/Y',style: TextStyle(
                                                      fontFamily: 'Quicksand',
                                                      fontSize: 12.0,
                                                      color: Colors.black87,
                                                      fontWeight: FontWeight.w800)),    
                                                        SizedBox(width: MediaQuery.of(context).size.width*0.13,),
                            Text('User Name',style: TextStyle(
                                                      fontFamily: 'Quicksand',
                                                      fontSize: 15.0,
                                                      color: Colors.black87,
                                                      fontWeight: FontWeight.w800)),
                           

                                                      
                          ],
                        ),

                          ],
                        ),
                          ],
                        ),
                      
                      ],
                    ),
                  ),
             
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        colors: [
          ColorPalette().secoundbColor,
          ColorPalette().maingColor
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.0, 1.0], // You can adjust the stops to control the color distribution
      ),

                  ),
                ),
              ),
            ),
           SizedBox(height: MediaQuery.of(context).size.height*0.025,),

             Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           SizedBox(width: MediaQuery.of(context).size.width*0.085,),
                            Text('Card Number', style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.w800)),
                                                 SizedBox(width: MediaQuery.of(context).size.width*0.08,),

                          ],
                        ), 
            Container(
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.85,
                    child: Opacity(
                      opacity: 0.5,
                      child: Padding(
                         padding: const EdgeInsets.only(top: 26,right: 192,left: 2),
                        child: TextField(
                           textInputAction: TextInputAction.done, // or any other appropriate action               
                        decoration: InputDecoration(
                          hintText: ' **** **** **** **** ', 
                          hintStyle: TextStyle(   
                        fontFamily: 'Quicksand',
                          fontSize: 20.0,
                        color: Colors.grey.shade400,
                          fontWeight: FontWeight.bold),
                         enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
                          
                        
                        ),
                        
                                        ),
                      ),
                    )
                  ,
                  decoration: BoxDecoration(
                   color:Colors.transparent,
                    borderRadius: BorderRadius
                    .all(Radius.circular(5),
                    
                    ),
                    border: Border.all(color: ColorPalette().secoundgColor),
                    
                  ),
                  
              ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
             Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width*0.06,),
                            Text('  Name On Card', style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                 color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.w800)),
                                                 SizedBox(width: MediaQuery.of(context).size.width*0.08,),

                          ],
                        ), 
            Container(
  height: MediaQuery.of(context).size.height * 0.06,
  width: MediaQuery.of(context).size.width * 0.85,
  child: Opacity(
    opacity: 0.5,
    child: Padding(
      padding: EdgeInsets.only(top: 0, right: 120, left: 2),
      child: TextField(
        textInputAction: TextInputAction.done, // or any other appropriate action
        decoration: InputDecoration(
          hintText: '  The name written on the card  ',
          hintStyle: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 16.0,
            color: Colors.grey.shade400,
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
        ),
      ),
    ),
  ),
  decoration: BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
    border: Border.all(color: ColorPalette().secoundgColor),
  ),
),

               SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width*0.09,),
                             Text('Expiration Data ', style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                 color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.w800)),
                                              
                                                 SizedBox(width: MediaQuery.of(context).size.width*0.35,),
                             Text(' CVC ', style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                 color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.w800)),
                             SizedBox(width: MediaQuery.of(context).size.width*0.08,),
                           

                          ],
                        ), 
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
           Container(
  height: MediaQuery.of(context).size.height * 0.06,
  width: MediaQuery.of(context).size.width * 0.2,
  child: Opacity(
    opacity: 0.5,
    child: Padding(
      padding: EdgeInsets.only(top: 0, right: 35),
      child: TextField(
        textInputAction: TextInputAction.done, // or any other appropriate action
        decoration: InputDecoration(
          hintText: '  03',
          hintStyle: TextStyle(
            fontFamily: 'Quicksand',
            fontSize: 18.0,
            color: Colors.grey.shade400,
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
        ),
      ),
    ),
  ),
  decoration: BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
    border: Border.all(color: ColorPalette().secoundbColor),
  ),
),


                         Container(
                          height: MediaQuery.of(context).size.height*0.06,
                          width: MediaQuery.of(context).size.width*0.2,
                          child: Opacity(
                            opacity: 0.5,
                            child: Padding(
                             padding:  EdgeInsets.only(top: 0,right: 20),
                              child: TextField(
                                 textInputAction: TextInputAction.done, // or any other appropriate action               
                              decoration: InputDecoration(
                                hintText: '  2017', 
                                hintStyle: TextStyle(   
                              fontFamily: 'Quicksand',
                                fontSize: 18.0,
                              color: Colors.grey.shade400,
                                fontWeight: FontWeight.bold),
                                 enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
                                
                              
                              ),
                              
                                              ),
                            ),
                          )
                        ,
                        decoration: BoxDecoration(
                         color:Colors.transparent,
                          borderRadius: BorderRadius
                          .all(Radius.circular(5),
                          
                          ),
                          border: Border.all(color:ColorPalette().secoundbColor)
                        ),
                    ),
              
                  Container(
                          height: MediaQuery.of(context).size.height*0.06,
                          width: MediaQuery.of(context).size.width*0.2,
                          child: Opacity(
                            opacity: 0.5,
                            child: Padding(
                              padding:  EdgeInsets.only(top: 0,right: 35),
                              child: TextField(
                                 textInputAction: TextInputAction.done, // or any other appropriate action               
                              decoration: InputDecoration(
                                hintText: '  123', 
                                hintStyle: TextStyle(   
                              fontFamily: 'Quicksand',
                                fontSize: 18.0,
                              color: Colors.grey.shade400,
                                fontWeight: FontWeight.bold),
                                 enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
                                
                              
                              ),
                              
                                              ),
                            ),
                          )
                        ,
                        decoration: BoxDecoration(
                         color:Colors.transparent,
                          borderRadius: BorderRadius
                          .all(Radius.circular(5),
                          
                          ),
                          border: Border.all(color:ColorPalette().secoundbColor,)
                        ),
                    ),
             
                ],
              ),
            ),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Container(
                  width: 200 ,
                  height: 0.4,
                  color:ColorPalette().secoundbColor,
                  ),  
               SizedBox(height: MediaQuery.of(context).size.height*0.01,),
              Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           SizedBox(width: MediaQuery.of(context).size.width*0.07,),
                            Text('Total ', style: TextStyle(
                                                fontFamily: 'Quicksand',
                                                fontSize: 15.0,
                                                  color: ColorPalette().TextColor,
                                                fontWeight: FontWeight.w800)),
                                                 SizedBox(width: MediaQuery.of(context).size.width*0.08,),

                          ],
                        ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                
                  Container(
                          height: MediaQuery.of(context).size.height*0.06,
                          width: MediaQuery.of(context).size.width*0.2,
                          child: Opacity(
                            opacity: 0.5,
                            child: Padding(
                              padding:  EdgeInsets.only(top: 0,right: 35),
                              child: TextField(
                                 textInputAction: TextInputAction.done, // or any other appropriate action               
                              decoration: InputDecoration(
                                hintText: '  00', 
                                hintStyle: TextStyle(   
                              fontFamily: 'Quicksand',
                                fontSize: 18.0,
                              color: Colors.grey.shade400,
                                fontWeight: FontWeight.bold),
                                 enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
                                
                              
                              ),
                              
                                              ),
                            ),
                          )
                        ,
                        decoration: BoxDecoration(
                         color:Colors.transparent,
                          borderRadius: BorderRadius
                          .all(Radius.circular(5),
                          
                          ),
                          border: Border.all(color:ColorPalette().secoundbColor)
                        ),
                    ),

      Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.03,),
          Text(' ,',
          style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 25.0,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w400)),
        ],
      ),

                  SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                  Container(
                              height: MediaQuery.of(context).size.height*0.06,
                              width: MediaQuery.of(context).size.width*0.6,
                              child: Opacity(
                                opacity: 0.5,
                                child: Padding(
                                  padding:  EdgeInsets.only(top: 0,right: 180),
                                  child: TextField(
                                     textInputAction: TextInputAction.done, // or any other appropriate action               
                                  decoration: InputDecoration(
                                    hintText: '  100\$', 
                                    hintStyle: TextStyle(   
                                  fontFamily: 'Quicksand',
                                    fontSize: 18.0,
                                  color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold),
                                 enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent, // Set the color to transparent
            ),
          ),
                                    
                                  
                                  ),
                                  
                                                  ),
                                ),
                              )
                            ,
                            decoration: BoxDecoration(
                             color:Colors.transparent,
                              borderRadius: BorderRadius
                              .all(Radius.circular(5),
                              
                              ),
                              border: Border.all(color:ColorPalette().secoundbColor)
                            ),
                        ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.08,),
                ],
              ),
                SizedBox(height: MediaQuery.of(context).size.height*0.025,),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(ColorPalette().secoundbColor),
                        ), // Replace this with your custom loading widget
                        SizedBox(height: 16),
                        Text(
                          'Please wait...',
                          style: TextStyle(
                            color: ColorPalette().secoundbColor,
                            fontFamily: 'Quicksand',
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );

           

            Future.delayed(Duration(seconds:2), () {
              Navigator.of(context).pop(); // Close the loading dialog

              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 48,
                          ),
                          SizedBox(height: 16),
                          Text(
                          'Transfer completed successfully',
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );

              Future.delayed(Duration(seconds: 2), () {
                Navigator.pop(context); // Close the success dialog
               Navigator.pushNamed(context, '/home'); 
              });
            });
          },
          child:Container(
                      height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.85,
                      child:Center(child: Text('Pay Now',
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
             SizedBox(height: MediaQuery.of(context).size.height*0.012,),
            
  
          
            InkWell(
              onTap: () {
               Navigator.pushNamed(context, '/ReecentAccountTranPage'); 
              },
              child: Container(
                            height: MediaQuery.of(context).size.height*0.06,
                      width: MediaQuery.of(context).size.width*0.85,
                      child:Center(child: Text('Recent Transactions',
                            style: TextStyle(
                                                  fontFamily: 'Quicksand',
                                                  fontSize: 14.0,
                                                  color: ColorPalette().secoundbColor,
                                                  fontWeight: FontWeight.bold)),
                          ),
                        decoration: BoxDecoration(
                       
                          borderRadius: BorderRadius
                          .all(Radius.circular(20),),
                          border: Border.all(color:ColorPalette().secoundbColor)
                        ),
                                 ),
            ),
      
        ]),
      ),
    );
  }
}