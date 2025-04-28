abstract class ChatEvent {
  int? index;
  ChatEvent({this.index});
}

class EventGetChat extends ChatEvent {
  EventGetChat(int index):super(index: index);
}

class EventReadChat extends ChatEvent {
  EventReadChat(int index) : super(index: index);
}
