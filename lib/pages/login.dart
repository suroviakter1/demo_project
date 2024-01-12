
import 'package:demo_flutter/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

TextEditingController emailController = TextEditingController();

TextEditingController passwordController= TextEditingController();

void login(String email, password) async{
 try{
  Response response = await post(Uri.parse('https://reqres.in/api/register'),
  body: {
     'email' : email,
     'password' : password,
  }
  );
  if(response.statusCode == 200){
    print('Log in successfully');
  }else {
    print('failed to log in');
  }
 }catch(e){
    print(e.toString());
 }
}

class _LogInPageState extends State<LogInPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
      children:[ 
           Image.network('data:image/jpeg;base64,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'),
                      
        const Padding(padding: EdgeInsets.all(5),
        child: Text('Teleapp',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                  
        SizedBox(height: 10,),           
        Padding(padding: EdgeInsets.all(5),
     child: TextField(
    controller: emailController,
        decoration: InputDecoration(
                border: OutlineInputBorder(),
           icon: Icon(Icons.person),
          labelText: 'Username or Email', enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(color: Colors.purple),borderRadius: BorderRadius.circular(30))),
 ),),
         SizedBox(height: 20),
                            
    Padding(padding: EdgeInsets.all(5),
         child: TextField(
        controller: passwordController,
        decoration: InputDecoration(fillColor: Colors.black,
         border: OutlineInputBorder(),
            icon: Icon(Icons.password),
           labelText: 'Password',
             errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),),
           enabledBorder: OutlineInputBorder(
             borderSide: BorderSide(color: Colors.purple),
             borderRadius: BorderRadius.circular(30))),
             ),),
          SizedBox(height: 20,),
         GestureDetector(onTap: () {
         login(emailController.text.toString(),
       passwordController.text.toString(),
         );
  },
               child: Container(
                height: 40,
             width: 200,
                decoration: BoxDecoration(
             color: Colors.purple,
             borderRadius: BorderRadius.circular(30)
         ),
            child: const Center(
              child: Text('Sign In',style: TextStyle(
                color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold
              ),),
            ),
        ),),
        SizedBox(height: 10,),
        TextButton(onPressed: () {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => HomePage(),
          ));
        },
         child: Text('Log In',style: TextStyle(
          color: Colors.purple,fontSize: 18,fontWeight: FontWeight.bold
        ),))
         ],
     ),),
     
    );         
   }
  }
          