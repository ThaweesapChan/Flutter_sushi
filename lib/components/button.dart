import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sushi/theme/colors.dart';

class MyButton extends StatelessWidget {
  final String buttonName;
  final void Function()? onTap;

  const MyButton({
    Key? key,
    this.buttonName = "setName",
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(40.00),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonName,
              style: const TextStyle(color: Colors.white),
            ),

            // icon
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class ButtonGetstarted extends StatelessWidget {
  final String buttonName;

  const ButtonGetstarted({
    super.key,
    this.buttonName = "setName",
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            if (kDebugMode) {
              print(" pressed button");
            }
          },
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(212, 135, 81, 77),
            // เปลี่ยนสีพื้นหลังของปุ่มเป็นสีแดง
            onPrimary: Colors.white, // เปลี่ยนสีข้อความของปุ่มเป็นสีขาว
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buttonName,
                  style: const TextStyle(color: Colors.white),
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SettingButton extends StatelessWidget {
  final String buttonName;
  final void Function()? color;

  const SettingButton({
    super.key,
    required this.buttonName,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector();
  }
}
