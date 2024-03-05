import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}
TextEditingController txtEmail = TextEditingController();
TextEditingController txtPassword = TextEditingController();




class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    'asset/img/bg.png',
                    fit: BoxFit.cover,
                  )),
              RichText(text: TextSpan(
                children: [TextSpan(
                  text: 'Welcome Back,\n' , style: TextStyle(color: Colors.black , fontSize: 32 , fontWeight: FontWeight.bold)
                ),

                TextSpan(text: 'Make it work, make it right, make it fast.' , style: TextStyle(color: Colors.black , fontSize: 15 , fontWeight: FontWeight.w500))]
              )),


              SizedBox(
                height: 20,
              ),
              TextField(
                textInputAction: TextInputAction.next,
                controller: txtEmail,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
                      size: 30,
                    ),
                    label: Text('Email'),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: txtPassword,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.fingerprint_outlined,
                      size: 30,
                    ),
                    label: Text('Password'),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.remove_red_eye)),

              ),

              SizedBox(height: 10,),
              Center(
                child: Text(
                  'Forget Password ?',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  setState(() {

                    txtEmail = txtEmail;
                    txtPassword = txtPassword;

                  });
                  Navigator.pushNamed(context, '/storage');
                },
                child: Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'OR',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 40,
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 1.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Image.asset('asset/img/g.jpg' , fit: BoxFit.cover,),
                    SizedBox(width: 10,),
                    Text('Sign-In with Google' , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
           // Row(
           //  mainAxisAlignment: MainAxisAlignment.start,
           //   crossAxisAlignment: CrossAxisAlignment.start,
           //   children: [
           //     Container(
           //       height: 40,
           //       width: 340,
           //       decoration: BoxDecoration(
           //         border: Border.all(width: 1.5 , color: Colors.black),
           //         borderRadius: BorderRadius.circular(5)
           //       ),
           //       child: Image.asset('asset/img/g.jpg' , fit: BoxFit.fitHeight,),
           //
           //
           //     ),
           //    // SizedBox(height: 5,),
           //
           //
           //
           //   ],
           // ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an Account ?" , style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w600),),
                  SizedBox(width: 5,),
                  Text('Signup' , style: TextStyle(color: Colors.blueAccent , fontWeight: FontWeight.w600),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
