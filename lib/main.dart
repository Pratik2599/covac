import 'package:flutter/material.dart';
import 'package:welcomea/contrant.dart';
import 'package:welcomea/signin_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen & Login Page",
      theme: ThemeData(
        primaryColor: PrimaryColor,
        textTheme: TextTheme(
          headline5: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold,
          ),
          button: TextStyle(
            color: PrimaryColor,
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: PrimaryColor.withOpacity(.4),)
          )
        )
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets\corona-4942823_960_720.png"),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "WELCOME \n",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "Your vaccine is on the way",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
              ),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SignInPage();
                    },),);
                  },
                
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 90),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: PrimaryColor,
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Lets Get Started",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ))))
            ],
          ),
        )
      ]),
    );
  }
}
