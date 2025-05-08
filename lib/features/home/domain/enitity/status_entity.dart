abstract class StatusEntity {
  String name;
  String dp;
  List<Map<String, dynamic>> status;

  StatusEntity({
    this.name = "",
    this.dp = "",
    required this.status,
  });
}
