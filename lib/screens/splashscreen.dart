import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('asset/img/bg.png'),
              ),
              SizedBox(height: 10,),
              Center(child: Text('Build Awesome Apps' , style: TextStyle(fontSize: 35 , fontWeight: FontWeight.w700),)),
              Center(child: Text("Let's put your creativity on the \n\t\t\t\t\t development highway. " , style: TextStyle(fontSize: 20), )),
             SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('/login');
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(width: 2 , color: Colors.black),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('LOGIN' , style: TextStyle(fontSize: 23 , color: Colors.white),)),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        border: Border.all(width: 2 , color: Colors.black),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('SIGNUP' , style: TextStyle(fontSize: 23),)),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
