import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/features/home/domain/usecase/status_usecase.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/updates/status_event.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/updates/status_state.dart';

class StatusBloc extends Bloc<StatusEvent, StatusState> {
  final StatusUsecase _statusUsecase;
  StatusBloc(this._statusUsecase) : super(LoadStatus(_statusUsecase.call())) {
    on<EventStatus>((event, emit) {
      LoadStatus(_statusUsecase.call());
    });
  }
}
