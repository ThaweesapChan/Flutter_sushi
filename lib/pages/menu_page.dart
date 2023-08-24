import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/components/food_tile.dart';
import 'package:sushi/models/food.dart';
import 'package:sushi/theme/colors.dart';
import 'package:sushi/components/button.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //food menu
  List foodMenu = [
    //sushi
    Food(
        name: "sushi",
        price: "20.00",
        imagePath: "lib/images/sushi.png",
        rating: "5"),
    //sushi2
    Food(
        name: "sushi",
        price: "20.00",
        imagePath: "lib/images/sushi (1).png",
        rating: "5"),
    //sushi3
    Food(
        name: "sushi",
        price: "20.00",
        imagePath: "lib/images/sushi (2).png",
        rating: "5"),
    //sushi4
    Food(
        name: "sushi",
        price: "20.00",
        imagePath: "lib/images/sushi (3).png",
        rating: "5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'Tokyo',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // promo message
                    Text(
                      "Get 30 % Promotion",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // redeem button
                    MyButton(
                      buttonName: "Redeem ",
                      onTap: () {},
                    ),
                  ],
                ),
                // image
                Image.asset(
                  "lib/images/sushi (1).png",
                  height: 100,
                ),
              ],
            ),
          ),
          // search bar
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Search here...",
              ),
            ),
          ),

          const SizedBox(height: 25),
          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.00),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          // popular food
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              //จะทำให้รายการที่สร้างด้วย ListView.builder แสดงในแนวนอนแทนที่จะเป็นแนวตั้ง
              itemCount: foodMenu.length,
              // ทำให้ขอบของ list สุดลงเมื่อเลื่อนจนไอเทมครบจำนวน
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),

          //popular food
          const SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20.00),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //image
                Row(
                  children: [
                    Image.asset(
                      "lib/images/sushi.png",
                      height: 60,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sushi ieie",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),
                        const SizedBox(height: 20),

                        //price
                        Text(
                          "\$ 21.00",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //heart
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
