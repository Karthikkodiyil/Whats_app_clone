import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class HomeState extends Equatable {
  final int index;
  final PageController pageController;
  const HomeState({required this.index, required this.pageController});

  @override
  List<Object?> get props => [index, pageController];
}

class InitialState extends HomeState {
  InitialState()
      : super(index: 0, pageController: PageController(initialPage: 0));
}

class UpdateNavigation extends HomeState {
  const UpdateNavigation(int index, PageController pageController)
      : super(index: index, pageController: pageController);
}
