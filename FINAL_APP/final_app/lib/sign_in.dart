// ignore_for_file: dead_code, empty_statements

import 'package:flutter/material.dart';
import 'package:final_app/common_widgets/custom_elevated_button.dart';
import 'package:final_app/common_widgets/custom_elevated_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "images/Signin.jpg",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Services Tracker"),
          elevation: 2.0,
          backgroundColor: Colors.black,
        ),
        body: _buildContent(),
        persistentFooterButtons: <Widget>[
          Container(
            
            child: CustomElevatedButton(
              
                // ignore: prefer_const_constructors
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Wien Pro Medium',
                    fontSize: 16.0,
                  ),
                ),
                color: Colors.white,
                onPressed: () {}),
          ),
          CustomElevatedButton(
              child: Text(
                'REGISTER',
                style: TextStyle(
                  fontFamily: 'Wien Pro Medium',
                  fontSize: 16.0,
                ),
              ),
              color: Colors.black,
              onPressed: () {})
              ,SizedBox(width: 11,),
        ],
        backgroundColor: Image.asset('images/Signin.jpg').color,
      )
    ]
    );
  }
// void _signInwothGoogle(){
//     // TO DO : auth with google sign in
//   }

  Container _buildContent() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://i.postimg.cc/tR6kGj28/Screenshot-from-2022-04-23-00-51-41.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
    ;
    ;
  }
}