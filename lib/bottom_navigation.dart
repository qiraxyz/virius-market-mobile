import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FloatBottomButton extends StatefulWidget {
  const FloatBottomButton({super.key});

  @override
  State<FloatBottomButton> createState() => _FloatBottomButtonState();
}

class _FloatBottomButtonState extends State<FloatBottomButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        //if center floating button klicked
      },
      child: Icon(Icons.add),
      backgroundColor: Color.fromARGB(255, 74, 74, 79),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 238, 238, 238),
        shape: CircularNotchedRectangle(),
        height: 65,
        notchMargin: 7,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {
              //if home button clicked
            }, icon: SvgPicture.asset('image/Home-clicked.svg')),
            IconButton(onPressed: () {

            }, icon: SvgPicture.asset('image/Category.svg')),
            SizedBox(width: 10,),
            SizedBox(
              width: 10,
            ),
            IconButton(onPressed: () {}, icon: SvgPicture.asset('image/Notification.svg')),
            IconButton(onPressed: () {}, icon: SvgPicture.asset('image/Profile.svg'))
          ],
        ),
      ),
    );
  }
}