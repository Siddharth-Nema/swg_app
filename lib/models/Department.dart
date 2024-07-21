class Department {
  final String name;
  final String image;
  final String code;
  final String? mediumArticleLink;
  final String? studyMaterialLink;

  Department({
    required this.name,
    required this.image,
    required this.code,
    this.mediumArticleLink,
    this.studyMaterialLink,
  });
}
