import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/color_palette.dart';

import 'etf__page.dart';

class BanksPage extends StatefulWidget {
  const BanksPage({Key? key}) : super(key: key);

  @override
  State<BanksPage> createState() => _BanksPageState();
}

class _BanksPageState extends State<BanksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette().theardgColor,
        title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(width: MediaQuery.of(context).size.width*0.15),
                   Text('Choose a bank', style: TextStyle(
                                                    fontFamily: 'Quicksand',
                                                    fontSize: 20.0,
                                                    color: ColorPalette().IconColor,
                                                    fontWeight: FontWeight.bold)),
                  

          ],
        ),
      ),
      body: Column(
        children: [
       
          Padding(
          padding: const EdgeInsets.only(top: 50,right: 10,left: 10,bottom: 20),
            child: Column(
              children: [

            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Text('Banks may take 5-15 minutes to complete the transfer', style: TextStyle(
          fontFamily: 'Quicksand',
          fontSize: 12.0,
          color: ColorPalette().TextColor,
          fontWeight: FontWeight.w400)),
    ],
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {
          Navigator.pushNamed(context, '/banktransferpage'); 
            },
            child: Container(
            
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.6,
              child: Image.asset('assets/img/garanti.jpg',
                 width:MediaQuery.of(context).size.width*0.95 ,
              height: MediaQuery.of(context).size.height*0.1,),
            ),
          ),
          Divider(),
           Container(
          
            height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.45,
            child: Image.asset('assets/img/yapikredi.png',
         
           ),
          ),
          Divider(),
           Container(
          
            height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.45,
            child: Image.asset('assets/img/vakifbank.png',
            width:MediaQuery.of(context).size.width*0.90 ,
            height: MediaQuery.of(context).size.height*0.1,),
          ),
          Divider(),
           Container(
          
            height: MediaQuery.of(context).size.height*0.1,
            width: MediaQuery.of(context).size.width*0.45,
            child: Image.asset('assets/img/ziraatbank.png',
               width:MediaQuery.of(context).size.width*0.90 ,
            height: MediaQuery.of(context).size.height*0.1,),
          ),
          Divider(),
        ],
      ),
    );
    
  }
}