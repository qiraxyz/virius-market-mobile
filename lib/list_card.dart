import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF4F4FF),
      child: Center(
        child: Card(
          margin: EdgeInsets.only(top: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            width: 470,
            height: 319,
            child: Column(
              children: [
                Container(
                    height: 50,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'image/avatar.jpg',
                            width: 32,
                            height: 32,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Text(
                              'Vinci Xin',
                              style: TextStyle(
                                  fontFamily: 'abeezee', fontSize: 18),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Text(
                            '1 hour ago',
                            style: TextStyle(
                                fontFamily: 'quando',
                                fontSize: 16,
                                color: Color.fromARGB(255, 189, 189, 189)),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/content-2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 43,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset('image/plus-circle.svg'),
                      ),
                      Expanded(child: Container()),
                      Expanded(child: Container()),
                      Expanded(child: Container()),
                      Expanded(
                          child: Row(
                        children: [
                          Text(
                            '20',
                            style: TextStyle(fontFamily: 'quando'),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          SvgPicture.asset('image/Chat.svg'),
                        ],
                      )),
                      Expanded(
                          child: Row(
                        children: [
                          Text('125', style: TextStyle(fontFamily: 'quando'),),
                          SizedBox(width: 3,),
                          SvgPicture.asset('image/Heart.svg')
                          ],
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
