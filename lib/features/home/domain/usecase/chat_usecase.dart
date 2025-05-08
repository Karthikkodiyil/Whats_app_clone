import 'package:whatsapp_clone/core/usecase/usecase.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';
import 'package:whatsapp_clone/features/home/domain/repository/chat_repo.dart';

class ChatUsecase extends Usecase<List<ChatEntity>, void> {
  final ChatRepo _chatRepo;

  ChatUsecase(this._chatRepo);

  @override
  List<ChatEntity> call({parms}) {
    return _chatRepo.getChatList();
  }
}
