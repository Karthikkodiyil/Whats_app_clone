import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';
import 'package:whatsapp_clone/features/home/domain/usecase/chat_usecase.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_event.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatUsecase _chatUsecase;
  ChatBloc(this._chatUsecase) : super(LoadChat(_chatUsecase.call(), 0)) {
    on<EventGetChat>((event, emit) {
      if (event.index == 1) {
        final list = _chatUsecase.call();
        List<ChatEntity> unReadList = list
            .where(
              (element) => element.noOfUnreadMsg != "0",
            )
            .toList();
        emit(LoadChat(unReadList, event.index!));
      } else {
        emit(LoadChat(_chatUsecase.call(), event.index!));
      }
    });
  }
}
