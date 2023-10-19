
// import 'package:flutter/material.dart';
// import 'package:Mrayya/constants/color_palette.dart';
// import 'package:Mrayya/screens/pagee.dart';
// import 'package:Mrayya/screens/transfer/qrcode_page.dart';

// import 'creditcard/recent_account_trans.dart';
// import 'home/home.dart';

// class NavBar extends StatelessWidget {
//   const NavBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       width: 250,
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           UserAccountsDrawerHeader(
//             accountName: Text(''), 
//             accountEmail: Text(''),
//             currentAccountPicture: CircleAvatar(
//               child: ClipOval(child: 
//               Image.asset('assets/img/image.png'),),
//             ),
//             decoration: BoxDecoration(
//        image:DecorationImage(image: AssetImage('assets/img/gece.png'),
//    fit: BoxFit.cover
//        ),
   

//             ),),
//             ListTile(
//               leading: Icon(Icons.home_outlined,
              
//               color: Colors.grey),
//               title: Text('الرئيسية', style: TextStyle(
                  
//                                                           fontFamily: 'Quicksand',
//                                                           fontSize: 16.0,
//                                                           color:  Color.fromRGBO(37, 109, 133, 1),
//                                                           fontWeight: FontWeight.bold
//                 ),),

//               onTap: (){
//               Navigator.of(context).pushReplacement(
//                     MaterialPageRoute(builder:
//                     (context)=>Home(  
//             ) ));
                  

//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.calculate,color:Color.fromRGBO(0, 43, 91, 1)),
//               title: Text('الحاسبة',
//               style: TextStyle(
                  
//                                                           fontFamily: 'Quicksand',
//                                                           fontSize: 16.0,
//                                                           color:  Color.fromRGBO(37, 109, 133, 1),
//                                                           fontWeight: FontWeight.bold
//                 ),),

//               onTap: (){
//               Navigator.of(context).pushReplacement(
//                     MaterialPageRoute(builder:
//                     (context)=>SonPage(  
//             ) ));
                  


//               },
//             ),
//             Divider(),
//           ListTile(
//                     leading: Icon(Icons.note_outlined,color: Color.fromRGBO(0, 43, 91, 1),),
//                     title: Text('سجل المعاملات',style: TextStyle(
                        
//                                                                 fontFamily: 'Quicksand',
//                                                                 fontSize: 16.0,
//                                                                 color:  Color.fromRGBO(37, 109, 133, 1),
//                                                                 fontWeight: FontWeight.bold
//                       ),),

//                     onTap: (){
//                       Navigator.of(context).pushReplacement(
//                     MaterialPageRoute(builder:
//                     (context)=>ReecentAccountTranPage(  
//             ) ));
                  

//                     },
//                   ),
//                     Divider(),
//           ListTile(
//                     leading: Icon(Icons.credit_card,color: Color.fromRGBO(0, 43, 91, 1),),
//                     title: Text('الدفع عن طريق NFC ',style: TextStyle(
                        
//                                                                 fontFamily: 'Quicksand',
//                                                                 fontSize: 16.0,
//                                                                 color:  Color.fromRGBO(37, 109, 133, 1),
//                                                                 fontWeight: FontWeight.bold
//                       ),),

//                     onTap: (){
//                       Navigator.of(context).pushReplacement(
//                     MaterialPageRoute(builder:
//                     (context)=>QRCodePage(data: '',  
//             ) ));
                  

//                     },
//                   ),
//           ListTile(
//                   leading: Icon(Icons.note_alt,color:Color.fromRGBO(0, 43, 91, 1)),
//                     title: Text('التقارير',style: TextStyle(
                        
//                                                                 fontFamily: 'Quicksand',
//                                                                 fontSize: 16.0,
//                                                                 color:  Color.fromRGBO(37, 109, 133, 1),
//                                                                 fontWeight: FontWeight.bold
//                       ),),

//                     onTap: (){

//                     },
//                   ),


//         ],      ),
//     );
    
//   }
// }