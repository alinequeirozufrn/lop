import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:larilando/main.dart';

Padding circButton(IconData icon, page) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: RawMaterialButton(
      onPressed: () {
        runApp(page);
      },
      fillColor: Colors.white,
      shape: CircleBorder(),
      constraints: BoxConstraints(minHeight: 70, minWidth: 70),
      child: FaIcon(
        icon,
        size: 22,
        color: Colors.black54,
      ),
    ),
  );
}

GestureDetector modeButton(String title, String subtitle, IconData icon,
    Color color, double width, page) {
  return GestureDetector(
      child: RawMaterialButton(
    onPressed: () {
      runApp(page);
    },
    child: Container(
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    fontFamily: 'Manrope',
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      fontFamily: 'Manrope',
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
            child: FaIcon(icon, size: 35, color: Colors.white),
          )
        ],
      ),
    ),
  ));
}

GestureDetector faseButton(
    String title, IconData icon, Color color, double width, page, bool isAble) {
  return GestureDetector(
      child: RawMaterialButton(
    onPressed: () {
      if (isAble) {
        runApp(ImageLevel());
      }
    },
    child: Container(
      height: 105.0,
      width: width,
      decoration: BoxDecoration(
        color: isAble ? color : Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                fontFamily: 'Manrope',
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
            child: FaIcon(icon, size: 35, color: Colors.white),
          )
        ],
      ),
    ),
  ));
}
