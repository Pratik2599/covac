import "package:flutter/material.dart";
import 'package:welcomea/contrant.dart';


class SignInPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
       body: Column(
         children: [
           Expanded(
             child: Container(
               decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets\corona-4942823_960_720.png"),),
               ),),),
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                 
                 child: Column(
                   children: [
                     Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  
                     Text("Sign In",
                     style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),),
                      Text("Sign up",
                     style: Theme.of(context).textTheme.button.copyWith(fontWeight: FontWeight.bold)),
                      ],
       ),
       Row(
         children: [
           Padding(padding: const EdgeInsets.only(right: 5),
           child: Icon(Icons.email,
           color: PrimaryColor,
           ),),
           Expanded(
             child: TextField(
               decoration: InputDecoration(
                 hintText: "Email"
               )),)
         ],
       ),
        Row(
         children: [
           Padding(padding: const EdgeInsets.only(right: 5),
           child: Icon(Icons.lock,
           color: PrimaryColor,
           ),),
           Expanded(
             child: TextField(
               decoration: InputDecoration(
                 hintText: "Password"
               )),)
         ],
       ),
       Spacer(),
       Padding(
        padding: EdgeInsets.only(bottom: 90),
       child: Container(
         padding: EdgeInsets.all(16),
         decoration: BoxDecoration(
           shape: BoxShape.circle,
           color: PrimaryColor,
         ),
         child: Icon(Icons.arrow_forward,
         color: Colors.white,
         ),
       ),)
                   ],
               ), ),)
         ],),);
  }
}