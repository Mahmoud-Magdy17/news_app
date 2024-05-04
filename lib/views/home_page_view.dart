import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          children: [
            Text("News"),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orange,
              ),
            )
          ],
        ),
      ),
    );
  }
}
