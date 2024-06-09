import 'package:flutter/material.dart';
import 'package:swg_flutter/constants.dart';
import 'package:swg_flutter/models/Department.dart';

class DepartmentTile extends StatelessWidget {
  final Department branch;
  const DepartmentTile({super.key, required this.branch});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: GlobalStyles.kSecondaryBlueColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 25,
          ),
          Image.asset(
            branch.image,
            height: 53,
            width: 53,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            branch.name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
