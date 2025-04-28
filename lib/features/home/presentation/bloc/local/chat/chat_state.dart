import 'package:equatable/equatable.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';

abstract class ChatState extends Equatable {
  final List<ChatEntity> chatList;
  final int index;

  const ChatState({required this.chatList,this.index = 0});

  @override
  List<Object?> get props => [chatList,index];
}

class LoadChat extends ChatState {
  const LoadChat(List<ChatEntity>chatList,int index) : super(chatList: chatList,index: index);
}

class MsgRead extends ChatState {
  const MsgRead({required super.chatList});
}
