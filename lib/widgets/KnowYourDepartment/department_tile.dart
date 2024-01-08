import 'package:flutter/material.dart';
import 'package:swg_flutter/models/Branch.dart';

class DepartmentTile extends StatelessWidget {
  final Branch branch;
  const DepartmentTile({super.key, required this.branch});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 128, 228, 255),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.all(14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.engineering),
          Text(
            branch.name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
