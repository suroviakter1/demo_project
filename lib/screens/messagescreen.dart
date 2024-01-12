import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Padding(
          padding: const EdgeInsets.all(8.0),
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            const Padding(padding:EdgeInsets.all(8)),
          TextField(
        decoration: InputDecoration(
           border: OutlineInputBorder(),
           icon: Icon(Icons.message),
          labelText: 'write your message here', 
          enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(color: Colors.purple),)),),
        Padding(padding: EdgeInsets.all(8)),
        TextField(
        decoration: InputDecoration(
           border: OutlineInputBorder(),
           icon: Icon(Icons.person),
          labelText: 'Recipient', 
          enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(color: Colors.purple),)),),
         SizedBox(
          height: 20),
          Container(
                height: 40,
             width: 200,
                decoration: BoxDecoration(
             color: Colors.purple,
             borderRadius: BorderRadius.circular(30)
         ),
            child: const Center(
              child: Text('Send',style: TextStyle(
                color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold
              ),),
            ),
        ),
       ],
       
      )
       ));
  }
}