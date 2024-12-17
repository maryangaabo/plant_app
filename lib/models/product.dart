import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String image;
  final String name;
  final int price;

  const Product(
      {Key? key, required this.name, required this.price, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 300,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 55),
          child: Text(
            name,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(right: 20, left: 55),
          child: Text(
            "more deaiatal but price ,that cusmater want to know ",
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 54, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$$price',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Image.asset(
                "images/basket icon.png",
                width: 60,
                height: 60,
              )
            ],
          ),
        )
      ],
    );
  }
}
