import 'package:flutter/material.dart';
import 'package:flutter_login/page/reportsignuppage.dart';
import 'package:flutter_login/src/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController password = new TextEditingController();

  final fromKey = GlobalKey<FormState>();

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
              child: Text("Sign Up",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Center(
                child: Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(29)),
                  child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                      icon: Icon(Icons.email,color: Colors.black26,),
                      hintText: "Email",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: Center(
                child: Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(29)),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person,color: Colors.black26,),
                      hintText: "Name",
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
                  width: 350,
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
              padding: const EdgeInsets.only(left: 25,top: 20),
              child: SizedBox(
                width: 345,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  child: Text("Sign Up",style: TextStyle(fontSize: 20),),
                  onPressed: () async {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => ReportSignupPage(
                                  email: email.text,
                                  name: name.text,
                                  password: password.text)));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an Account ? ",
                    style: TextStyle(color: Colors.black),),
                  GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return LoginPage(title: 'page1');
                        })
                    );
                    },
                    child: Text("Sign In",
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),),
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

