class Notice {
  final String heading;
  final String description;
  final DateTime eventTime;
  final String location;
  final String host;

  Notice(
      {required this.heading,
      required this.description,
      required this.eventTime,
      required this.location,
      required this.host});
}
