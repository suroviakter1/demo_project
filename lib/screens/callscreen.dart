

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
 Uri dialnumber=Uri(scheme: 'tel',path: '12345678910');

 callnumber()async{
  await launchUrl(dialnumber);
 }
 directcall()async{
  await FlutterPhoneDirectCaller.callNumber('12345678910');
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      ElevatedButton.icon(onPressed: callnumber,
      icon: Icon(Icons.call),
      label: Text('Call',style: TextStyle(color: Colors.purple),),)
        ), );
    
  }


}