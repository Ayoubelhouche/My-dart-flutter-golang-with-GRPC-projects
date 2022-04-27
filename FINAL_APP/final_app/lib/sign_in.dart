// ignore_for_file: dead_code, empty_statements

import 'package:flutter/material.dart';
import 'package:final_app/lib/sign_in_button.dart';
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
              onPressed: () {}),
        ],
        backgroundColor: Image.asset('images/Signin.jpg').color,
      )
    ]);
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
      // padding: const EdgeInsets.all(16.0),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: <Widget>[
      //     Text("Sign in ",
      //     textAlign: TextAlign.center,
      //     style: TextStyle(fontSize: 32.0,
      //     fontWeight: FontWeight.w600),
      //     ),
      //     const SizedBox(
      //       height: 48.0,
      //     ),
      //     CustomElevatedButton(
      //       child: Row(
      //         children: <Widget>[
      //         Image.asset('images/1xG.png'),
      //         Text('Sign in with google',
      //         style: TextStyle(
      //           color: Colors.black
      //         ),)
      //       ],
      //       ),
      //       color:Colors.white ,
      //       onPressed: (){}
      //       ),
      //       const SizedBox(
      //       height: 8.0,
      //     ),
      //     // CustomElevatedButton(
      //     //   child: Text(
      //     //     "Sign in With Google ",
      //     //     textAlign: TextAlign.center,
      //     //     style: TextStyle(
      //     //         fontSize: 28.0,
      //     //         fontWeight: FontWeight.w500,
      //     //         color: Colors.black87),
      //     //   ),
      //     //   color: Colors.white,
      //     //   borderRadius: 8.0,
      //     //   onPressed: () {},
      //     // ),
      //     // const SizedBox(
      //     //   height: 8.0,
      //     // ),
      //     SignInButton(
      //       text: 'Sign in with Google',
      //       textColor: Colors.black87,
      //       color: Colors.white,
      //       onPressed: () {},
      //     ),
      //     // CustomElevatedButton(
      //     //   child: Text(
      //     //     "Sign in with Facebook ",
      //     //     textAlign: TextAlign.center,
      //     //     style: TextStyle(
      //     //         fontSize: 28.0,
      //     //         fontWeight: FontWeight.w500,
      //     //         color: Colors.black87),
      //     //   ),
      //     //   color: Colors.white,
      //     //   borderRadius: 8.0,
      //     //   onPressed: () {},
      //     // ),
      //     const SizedBox(
      //       height: 8.0,
      //     ),
      //     // custom sign in button
      //     SignInButton(
      //       text: 'Sign in with Facebook',
      //       textColor: Colors.white,
      //       color: Color(0xFF334D92),
      //       onPressed: () {},
      //     ),
      //     const SizedBox(
      //       height: 8.0,
      //     ),
      //     // custom sign in button
      //     SignInButton(
      //       text: 'Sign in with Email',
      //       textColor: Colors.white,
      //       color: Colors.teal,
      //       onPressed: () {},
      //     ),
      //     SizedBox(height: 8.0,
      //     ),
      //     Text("or",
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //       fontSize: 14.0,
      //       color:Colors.black,
      //     ),
      //     ),

      //     SizedBox(height: 8.0,
      //     ),
      //     SignInButton(
      //       text: 'Go anonymus',
      //       textColor: Colors.black,
      //       color: Color.fromARGB(255, 229, 255, 0),
      //       onPressed: () {},
//           ),

//         ],
//       ),
//     );
//   }
    );
    ;
    ;
  }
}