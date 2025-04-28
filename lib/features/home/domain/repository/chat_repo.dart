import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';

abstract class ChatRepo {
  List<ChatEntity> getChatList();
}
