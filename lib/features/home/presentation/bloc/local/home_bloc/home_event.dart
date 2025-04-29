abstract class HomeEvent {}

class EventTabChange extends HomeEvent {
  final int index;
  final bool animate;
  EventTabChange(this.index, {this.animate = false});
}

class EventTabScroll extends HomeEvent {
  final int index;
  EventTabScroll(this.index);
}
