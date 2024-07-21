import 'package:flutter/material.dart';
import 'package:swg_flutter/models/Department.dart';
import 'package:url_launcher/url_launcher.dart';

class DepartmentTile extends StatelessWidget {
  final Department branch;
  bool forStudyMaterial = false;
  DepartmentTile({
    super.key,
    required this.branch,
    this.forStudyMaterial = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final Uri uri = forStudyMaterial
            ? Uri.parse(branch.studyMaterialLink ?? '')
            : Uri.parse(branch.mediumArticleLink ?? '');
        launchUrl(uri);
      },
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
