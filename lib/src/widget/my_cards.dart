import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: NetworkImage(
            'https://www.hidevolution.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/r/a/razer-blade-15-gallery08-gaming-laptop_1_2_1_1.jpeg'), 
        ),
        border: Border.all(
          color: Color(0xFFFFF),
          width: 8,
        )
      ),
      child: Row(
        children: <Widget>[
          Container(
            
          ),
        ], 
      ),
    );
  }
}
