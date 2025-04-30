import 'package:get_it/get_it.dart';
import 'package:whatsapp_clone/features/home/data/repository/chat_repo_impl.dart';
import 'package:whatsapp_clone/features/home/data/repository/status_repo_impl.dart';
import 'package:whatsapp_clone/features/home/domain/repository/chat_repo.dart';
import 'package:whatsapp_clone/features/home/domain/repository/status_repo.dart';
import 'package:whatsapp_clone/features/home/domain/usecase/chat_usecase.dart';
import 'package:whatsapp_clone/features/home/domain/usecase/status_usecase.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/chat/chat_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/updates/status_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<ChatRepo>(ChatRepoImpl());
  sl.registerSingleton<StatusRepo>(StatusRepoImpl());
  sl.registerSingleton<ChatUsecase>(ChatUsecase(sl()));
  sl.registerSingleton<StatusUsecase>(StatusUsecase(sl()));
  sl.registerFactory<ChatBloc>(() => ChatBloc(sl()));
  sl.registerFactory<StatusBloc>(() => StatusBloc(sl()));
}
