import 'package:flutter/material.dart';

class ReportSignupPage extends StatelessWidget {
  String email,name,password;

  ReportSignupPage(
      {Key? key, required this.email, required this.name, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,top: 5),
              child: Text(
                "$email",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Email : $email',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5,top: 5),
              child: Text(
                'Name : $name',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'Password : $password',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 250,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                  child: Text("Back",style: TextStyle(fontSize: 20),),
                  onPressed: (){
                    Navigator.pop(context, "Hello");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
