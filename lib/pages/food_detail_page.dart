import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi/compare.dart';
import 'package:sushi/theme/colors.dart';
import '../models/food.dart';
import 'package:sushi/components/button.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;

  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  // quantity
  int quantityCount = 0;

  // decrement
  void decrementQuantity() {
    setState(() {
      quantityCount--;
    });
  }

  // increment

  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  Image.asset(
                    widget.food.imagePath,
                    height: 200,
                  ),

                  // image
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      // star icon
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                    ],
                  ),

                  // rating number
                  const SizedBox(width: 5),
                  Text(
                    widget.food.rating,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // food name
                  const SizedBox(height: 10),
                  Text(widget.food.name,
                      style: GoogleFonts.dmSerifDisplay(fontSize: 28)),

                  // description
                  const SizedBox(height: 25.00),
                  Text(
                    "Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                      fontSize: 18,
                    ),
                  ),

                  // text description
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sushi is a traditional Japanese dish that typically consists of vinegared rice combined with various ingredients such as seafood, vegetables, and occasionally tropical fruits. The term sushi actually refers to the vinegared rice itself, but it has become synonymous with the entire dish.Sushi is a traditional Japanese dish that typically consists of vinegared rice combined with various ingredients such as seafood, vegetables, and occasionally tropical fruits. The term sushi actually refers to the vinegared rice itself, but it has become synonymous with the entire dish.Sushi is a traditional Japanese dish that typically consists of vinegared rice combined with various ingredients such as seafood, vegetables, and occasionally tropical fruits. The term sushi actually refers to the vinegared rice itself, but it has become synonymous with the entire dish.Sushi is a traditional Japanese dish that typically consists of vinegared rice combined with various ingredients such as seafood, vegetables, and occasionally tropical fruits. The term sushi actually refers to the vinegared rice itself, but it has become synonymous with the entire dish.",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // price + quantity + add to cart button
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // price
                Text(
                  widget.food.price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                // quantity

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // mius button
                    const SizedBox(width: 10 ),
                    Container(
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                        onPressed: decrementQuantity,
                      ),
                    ),

                    //quatity count
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(width: 40,
                      child: Center(
                        child: Text(
                          quantityCount.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    // plus button
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: incrementQuantity,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
