import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment.topCenter,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 118,
                    height: 39,
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F4FF),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'Popular',
                        style: TextStyle(
                          color: Color(0xFFBDBDBD),
                          fontFamily: 'quando',
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: 
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: InkWell(
                  onTap: () {},
                  splashColor: Color(0xFFF4F4FF),
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    width: 105,
                    height: 39,
                    child: Center(
                      child: Text(
                        'Trending',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFBDBDBD),
                          fontFamily: 'quando',
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                )
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5, right: 10),
                  child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(6),
                  splashColor: Color(0xFFF4F4FF),
                  child: Container(
                    width: 100,
                    height: 39,
                    child: Center(
                      child: Text(
                        'Following',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFBDBDBD),
                          fontFamily: 'quando',
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
