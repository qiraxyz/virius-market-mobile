import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home.dart';

class white_RegisterButton extends StatelessWidget {
  const white_RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Logika ketika tombol ditekan
        // Navigasi ke halaman white_ atau tampilkan dialog white_
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
              border: Border.all(
                  color: Color.fromARGB(255, 255, 255, 255), width: 1.5),
              borderRadius: BorderRadius.circular(50),
            ),
            child: SvgPicture.asset('image/gmail.svg'),
          ),
          SizedBox(width: 16),
          Container(
            width: 200,
            height: 21,
            child: Text(
              'Sign Up With Google',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'abeezee',
                color: Color.fromARGB(158, 48, 48, 47),
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(255, 255, 255, 255)),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        side: MaterialStateProperty.all<BorderSide>(
          const BorderSide(
            color: Color.fromARGB(
                153, 2, 2, 2), // Menetapkan warna border dengan warna biru
            width: 1, // Menetapkan lebar border dengan 2 piksel
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
