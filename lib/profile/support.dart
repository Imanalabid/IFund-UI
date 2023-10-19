import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/color_palette.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: ColorPalette().theardgColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           SizedBox(width: MediaQuery.of(context).size.width*0.21),
            Text(
              'Support',
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
         
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text(
                'Connect Us',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'If you have any questions or need support, feel free to contact us via email.',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  _launchEmail('support@example.com');
                },
                child: Text(
                  'support@mrayya.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 40), // Add some spacing
           // Updated TextFormField for message field
                  TextFormField(
                    controller: _messageController,
                    maxLines: 4,
                  textAlign: TextAlign.start, 
                  
                    decoration: InputDecoration(
                      labelText: 'Type your message here',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0), 
                        floatingLabelBehavior: FloatingLabelBehavior.always, /// Adjust the vertical padding
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your message';
                      }
                      return null;
                    },
                  ),

              SizedBox(height: 16),

              // Send Button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 360, 
                    child: ElevatedButton(
                      
                      onPressed: () {
                        _handleSendButton();
                      },
                      style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade600,
                    onPrimary: Colors.green.shade900,
                      ),
                      child: Text('Send',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleSendButton() {
    if (_formKey.currentState!.validate()) {
      String name = _nameController.text;
      String message = _messageController.text;

      // Perform any actions with the name and message values (e.g., sending the email)

      // Clear the text fields after sending
      _nameController.clear();
      _messageController.clear();
    }
  }

  void _launchEmail(String emailAddress) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
    );
    final String emailUrl = emailUri.toString();
    if (await canLaunch(emailUrl)) {
      await launch(emailUrl);
    } else {
      throw 'Could not launch $emailUrl';
    }
  }
}
