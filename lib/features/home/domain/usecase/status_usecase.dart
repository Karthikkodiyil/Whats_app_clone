import 'package:whatsapp_clone/core/usecase/usecase.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/status_entity.dart';
import 'package:whatsapp_clone/features/home/domain/repository/status_repo.dart';

class StatusUsecase extends Usecase<List<StatusEntity>,void> {
  final StatusRepo _statusRepo;

  StatusUsecase(this._statusRepo);
  @override
  List<StatusEntity> call({parms}) {
   return _statusRepo.getStaus();
  }
}
