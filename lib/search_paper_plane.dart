import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WidgetNavbarBar extends StatelessWidget {
  const WidgetNavbarBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 283,
            height: 45, 
            margin: EdgeInsets.only(left: 20, top: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(237, 243, 245, 247),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                SvgPicture.asset(
                  'image/Search.svg',
                  width: 20,
                  height: 20,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontFamily: 'quando',
                      fontSize: 16,
                      color: Color.fromARGB(255, 189, 189, 189)
                    ),
                  ),
                  flex: 1,
                ),
              ],
            ),
          )
          ),
          SizedBox(width: 8),
          Container(
            width: 36,
            height: 36,
            margin: EdgeInsets.only(right: 12, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(
              'image/send.svg',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
