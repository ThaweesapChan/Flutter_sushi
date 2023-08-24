import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonName;

  const MyButton({
    Key? key,
    this.buttonName = "setName", // กำหนดค่าเริ่มต้นให้ _text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 138, 60, 55),
        borderRadius: BorderRadius.circular(40.00),
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            buttonName,
            style: TextStyle(color: Colors.white), // ไม่ต้องใช้ const
          ),

          const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('My App')),
      body: Center(
        child: MyButton(), // ไม่ต้องส่งค่า _text เพราะมีค่าเริ่มต้น
      ),
    ),
  ));
}
