import 'package:flutter/material.dart';
import 'package:iFund/SplashScreen.dart';
import 'package:iFund/home/home_page.dart';
import 'package:iFund/buy.dart';
import 'package:iFund/pagee.dart';
import 'package:iFund/profile/deco.dart';
import 'package:iFund/profile/profiledetails.dart';
import 'package:iFund/profile/support.dart';
import 'package:iFund/sell.dart';

import 'auth/sign_in.dart';
import 'auth/signup.dart';
import 'creditcard/credit_card_page.dart';
import 'creditcard/recent_account_trans.dart';
import 'etf/bank_trasfer_page.dart';
import 'etf/banks_page.dart';
import 'etf/etf__page.dart';
import 'home/box_page.dart';
import 'home/boxs.dart';
import 'home/home.dart';
import 'linecharts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
       initialRoute: '/',
      // Define the named routes and link them to corresponding widget classes
      routes: {
        '/':(context) => SplashScreen(),
        '/signin':(context) => SignIn(),
        '/home': (context) => Home(),
        '/signup':(context) => SignUp(),
        '/boxpage':(context) => BoxPage(),
        '/etfpage':(context) => EFTPage(),
        '/creditcart':(context) => CreditCardPage(),
        '/boxspage':(context) => BoxsPage(),
        '/sonpage':(context) => SonPage(),
        '/banks':(context) => BanksPage(),
         '/banktransferpage':(context) => BankTransferPage(),
         '/ReecentAccountTranPage':(context) => ReecentAccountTranPage(),
         '/DecoPage':(context) => DecoPage(),
         '/SupportPage':(context) => SupportPage(),
         '/ProfileDetailsPage':(context) => ProfileDetailsPage(),
         '/FPage':(context) => FPage(),
          '/SPage':(context) => SPage()



      }
    );
  }
}

