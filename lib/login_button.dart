import 'package:flutter/material.dart';
import 'home.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Logika ketika tombol ditekan
        // Navigasi ke halaman login atau tampilkan dialog login
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WidgetHomeState()),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 33.5,
            height: 33.5,
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 1.5),
              borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset('image/facebook.png',),
              ),
              SizedBox(width: 16),
              Container(
                width: 200,
                height: 21,
              child: Text(
                'Sign In With Facebook',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'abeezee',
                  fontWeight: FontWeight.normal,
                  ),
                ),
              )
              ],
            ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 23, 122, 242)),
        side: MaterialStateProperty.all(const BorderSide(
            color: Color.fromARGB(153, 2, 2, 2),
            width: 1,
        )),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
