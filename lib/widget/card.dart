import 'package:flutter/material.dart';

import 'colors.dart';

class Cards extends StatelessWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: SizedBox(
        height: 220,
        width: 100,
        child: Card(
          elevation: 15,
          shadowColor: CommonMethod().themedata.primaryColor,
          margin: const EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Historic",
                  style: TextStyle(
                      color: CommonMethod().themedata.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Stack(children: [
                  Container(
                    height: 150,
                    width: 330,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage("images/mus.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 14,
                    child: Container(
                        height: 30,
                        width: 120,
                        child: Center(
                            child: Text(
                          "Discover Places",
                          style: TextStyle(
                              color: CommonMethod().themedata.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(5),
                        )),
                  )
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
