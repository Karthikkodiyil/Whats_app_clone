import 'package:equatable/equatable.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/status_entity.dart';

abstract class StatusState extends Equatable {
  final List<StatusEntity> statusList;
  const StatusState({required this.statusList});

  @override
  List<Object?> get props => [statusList];
}

class LoadStatus extends StatusState {
  const LoadStatus(List<StatusEntity> statusList)
      : super(statusList: statusList);
}