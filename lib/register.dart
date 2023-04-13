import 'package:flutter/material.dart';
import 'register_button.dart';
import 'white_register_button.dart';
import 'main.dart';

class RegisterHome extends StatelessWidget {
  const RegisterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

class WidgetRegisterHome extends StatefulWidget {
  const WidgetRegisterHome({super.key});

  @override
  State<WidgetRegisterHome> createState() => _WidgetRegisterHomeState();
}

class _WidgetRegisterHomeState extends State<WidgetRegisterHome> {
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
                'Virius Pixel Sign Up',
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
                    child: RegisterButton(),
                  ),
                  Container(
                    width: 289.08,
                    height: 53.5,
                    margin: EdgeInsets.only(top: 17),
                    child: white_RegisterButton(),
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
                  'Already have an account? ',
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
                      MaterialPageRoute(builder: (context) => MyHomePage(title: 'Login',))
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
                      'Sign In',
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
