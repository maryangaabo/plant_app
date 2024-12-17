import 'package:flutter/material.dart';
import 'package:plaant_app/screens/colors.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: double.infinity, // Ensures it takes the available width
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.amber,
              ),
              child: ListTile(
                leading: Container(
                  width: 60,
                  height: 120,
                  child: Image.asset(
                    "images/flower1.png",
                    fit: BoxFit.cover, // Ensures the image fits nicely
                    width: 60, // Adjust width if needed
                    height: 120, // Adjust height if needed
                  ),
                ),
                title: Text(
                  "Flower",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Price: \$78"),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              color: primaryColor),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                            ),
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: primaryColor),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
