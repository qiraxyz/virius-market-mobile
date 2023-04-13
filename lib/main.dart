import 'package:flutter/material.dart';
import 'login_button.dart';
import 'white_login_button.dart';
import 'register.dart';
import 'home.dart';
import 'bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virius Market',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Virius Market'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color signUpColor = Color.fromARGB(255, 31, 11, 11);

  void _changeColor() {
    setState(() {
      signUpColor = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Container(
              width: 186,
              height: 141,
              margin: EdgeInsets.only(top: 150),
              child: Image.asset('image/virius.png'),
            ),
            SizedBox(height: 10),
            Container(
              width: 282.33,
              height: 40,
              child: Text(
                'Virius Pixel Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 29.09,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                width: 282.33,
                height: 56.67,
                child: Text(
                  'Find and buy your assets or make your assets and sell it. Virius Pixel is a public market for all people.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'abeezee',
                    fontWeight: FontWeight.normal,
                  ),
                )),

            // login register container
            Container(
              child: Column(
                children: [
                  Container(
                    width: 289.08,
                    height: 53.5,
                    margin: EdgeInsets.only(top: 25),
                    child: LoginButton(),
                  ),
                  Container(
                    width: 289.08,
                    height: 53.5,
                    margin: EdgeInsets.only(top: 17),
                    child: white_LoginButton(),
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 25),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Not have an account? ',
                  style: TextStyle(
                      fontFamily: 'abeezee',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 31, 11, 11)),
                ),
                GestureDetector(
                  onTap: () {
                    //navigate to signup page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WidgetRegisterHome()),
                    );
                  },
                  child: MouseRegion(
                    onHover: (event) {
                      _changeColor();
                    },
                    onExit: (event) {
                      setState(() {
                        signUpColor = Color.fromARGB(255, 31, 11, 11);
                      });
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontFamily: 'abeezee',
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                          color: signUpColor),
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
      
    );
  }
}
