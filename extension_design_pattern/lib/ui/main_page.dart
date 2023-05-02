import 'package:extension_design_pattern/extension/date.dart';
import 'package:extension_design_pattern/extension/text.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final content = 'Hello everybody';
  final dateTime = DateTime.now();
  bool isChangedColor = false;

  void onChangeTextColor() {
    setState(() {
      isChangedColor = !isChangedColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Extension Demo',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            !isChangedColor
                ? Text(
                    dateTime.toDateFormat(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  )
                : Text(
                    dateTime.toDateFormat(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ).changeTextColor(Colors.red),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onChangeTextColor,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: Text(
                !isChangedColor ? 'Change text color' : 'Init Text Color',
                style: const TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
