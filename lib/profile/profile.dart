import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import '../../constants/color_palette.dart';
import '../Sidebar.dart';
import '../home/home.dart';

import 'deco.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
 
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      appBar: AppBar(
        backgroundColor: ColorPalette().theardgColor,
        title: Center(
          child: Text(
            'Profile',
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 20.0,
                color: ColorPalette().ContainerColor,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Container(
                child: Center(
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage('assets/img/profile.png'),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Muhammed',
                  style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 20.0,
                                 color: Colors.grey.shade800,
                                  fontWeight: FontWeight.bold))
                ],
              ),
        
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              InkWell(
                onTap: () {
                      Navigator.pushNamed(context, '/ProfileDetailsPage'); 
                },
                child: Container(            
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                  color: ColorPalette().ContainerColor,
                  borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: 7,left: 12),
                        child: Icon(Icons.person_outline,size: 20,
                        color: ColorPalette().secoundgColor,
                    ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 5),
                        child: Text( 'User Info' ,
        
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
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
               InkWell(
                onTap: () {
               Navigator.pushNamed(context, '/DecoPage'); 
                },
                child: Container(            
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                  color: ColorPalette().ContainerColor,
                  borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: 7,left: 12),
                        child: Icon(Icons.note_add,size: 20,
                        color: ColorPalette().secoundgColor,
                    ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 5),
                        child: Text( 'Reports' ,
        
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
               SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                   InkWell(
                onTap: () {
               Navigator.pushNamed(context, '/SPage'); 
                },
                child: Container(            
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                  color: ColorPalette().ContainerColor,
                  borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: 7,left: 12),
                        child: Icon(Icons.payments,size: 20,
                        color: ColorPalette().secoundgColor,
                    ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 5),
                        child: Text( 'Sell Page' ,
        
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
               SizedBox(height: MediaQuery.of(context).size.height*0.03,),
               InkWell(
                onTap: () {
                    _launchWebsite('https://www.mrayya.com/privacy-policy');
                },
                child: Container(            
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                  color: ColorPalette().ContainerColor,
                  borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: 7,left: 12),
                        child: Icon(Icons.security_outlined,size: 20,
                        color: ColorPalette().secoundgColor,
                    ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 5),
                        child: Text( 'Privacy and Security' ,
        
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
               SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                InkWell(
                onTap: () {
              Navigator.pushNamed(context, '/SupportPage'); 
                },
                child: Container(            
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                  color: ColorPalette().ContainerColor,
                  borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: 7,left: 12),
                        child: Icon(Icons.phone,size: 20,
                        color: ColorPalette().secoundgColor,
                    ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 5),
                        child: Text( 'Help and Support' ,
        
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
               SizedBox(height: MediaQuery.of(context).size.height*0.03,),
               InkWell(
                onTap: () {
                    _launchWebsite('https://www.mrayya.com/about-us');
                },
                child: Container(            
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                  color: ColorPalette().ContainerColor,
                  borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: 7,left: 12),
                        child: Icon(Icons.people_outline_rounded,size: 20,
                        color: ColorPalette().secoundgColor,
                    ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 5),
                        child: Text( 'About Us' ,
        
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
             SizedBox(height: MediaQuery.of(context).size.height*0.03,),
             InkWell(
                onTap: () {
               Navigator.pushNamed(context, '/'); 
                },
                child: Container(            
                  height: MediaQuery.of(context).size.height*0.06,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                  color: ColorPalette().ContainerColor,
                  borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: 7,left: 12),
                        child: Icon(Icons.logout_sharp,size: 20,
                        color: ColorPalette().secoundgColor,
                    ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 5),
                        child: Text( 'Sign Up' ,
        
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
        ),
      );
    
  }
}
void _launchWebsite(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
