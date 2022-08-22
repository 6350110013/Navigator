import 'package:flutter/material.dart';
import 'package:flutter_login/page/reportloginpage.dart';
import 'package:flutter_login/src/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 30,bottom: 30),
              child: Text("Login",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Center(
                child: Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  width: 340,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(29)),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,color: Colors.black26,),
                      hintText: "Email",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Center(
                child: Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  width: 340,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(29)),
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock,color: Colors.black26,),
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 20),
              child: SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => ReportLoginPage(
                            email: email.text,
                            password: password.text)));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  child: Text("Login",style: TextStyle(fontSize: 20),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an Account ? ",
                    style: TextStyle(color: Colors.black),),
                  GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return RegisterPage(title: 'page2');
                        })
                      );
                    },
                    child: Text("Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
