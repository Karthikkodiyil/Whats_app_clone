import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_event.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/home_bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(InitialState()) {
    on<EventTabScroll>((event, emit) {
      emit(UpdateNavigation(event.index, state.pageController));
    });

    on<EventTabChange>((event, emit) {
      state.pageController.animateToPage(event.index,
          duration: event.animate
              ? const Duration(milliseconds: 350)
              : const Duration(microseconds: 1),
          curve: Curves.easeInOut);

      emit(UpdateNavigation(event.index, state.pageController));
    });
  }
  @override
  Future<void> close() {
    state.pageController.dispose();
    return super.close();
  }
}
