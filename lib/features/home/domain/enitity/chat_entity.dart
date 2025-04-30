class ChatEntity {
  String name;
  String category;
  String phno;
  bool isGroup;
  String dp;
  String noOfUnreadMsg;
  String about;
  String aboutUpdateDate;
  List<Map<String, dynamic>> messages;

  ChatEntity({
    this.name = "",
    this.category = "",
    this.isGroup = false,
    this.phno = "",
    this.dp = "",
    this.noOfUnreadMsg = "",
    this.about = "",
    this.aboutUpdateDate = "",
    required this.messages,
  });
}
