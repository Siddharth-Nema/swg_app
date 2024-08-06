import 'package:flutter/material.dart';

class SMComingSoon extends StatelessWidget {
  const SMComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Coming Soon",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          //our team is working hard to provide you with the best study material
          SizedBox(height: 20),
          Text(
            "Our team is working hard to provide you with the best study material",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
