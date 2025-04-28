import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';

class ChatModel extends ChatEntity{


  ChatModel(
      {super.name = "",
      super.isGroup = false,
      super.phno = "",
      super.dp = "",
      super.noOfUnreadMsg = "",
      super.category = "",
      super.about = "",
      super.aboutUpdateDate = "",
      required super.messages});
}


