import 'package:whatsapp_clone/features/home/data/model/chat_model.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/chat_entity.dart';
import 'package:whatsapp_clone/features/home/domain/repository/chat_repo.dart';

class ChatRepoImpl implements ChatRepo {
  @override
  List<ChatEntity> getChatList() {
    List<ChatModel> chatList = [
      ChatModel(
          name: "Finch",
          category: "",
          phno: "9994726188",
          noOfUnreadMsg: "1",
          about: "✨💼",
          aboutUpdateDate: "Oct 05 2023",
          messages: [
            {
              "sendByMe": true,
              "time": "10:25 PM",
              "msg": "Hello",
              "status": "seen"
            },
            {
              "sendByMe": true,
              "time": "10:25 PM",
              "msg": "Are you comming or not ?",
              "status": "seen"
            },
            {
              "sendByMe": false,
              "time": "10:30 PM",
              "msg": "Yes Am",
              "status": ""
            },
          ], ),
      ChatModel(
          name: "Alex",
          category: "",
          dp: "https://c.pxhere.com/photos/08/7a/male_portrait_profile_social_media_cv_young_elegant_suit-459413.jpg!d",
          phno: "9944726584",
          noOfUnreadMsg: "0",
          about: "🔍",
          aboutUpdateDate: "May 26 2024",
          messages: [
            {"sendByMe": true, "time": "8:56 PM", "msg": "Hello", "status": "seen"},
            {
              "sendByMe": true,
              "time": "8:57 PM",
              "msg": "Where are you ?",
              "status": "seen"
            },
            {
              "sendByMe": false,
              "time": "9:00 PM",
              "msg": "Am little busy right now",
              "status": ""
            },
            {"sendByMe": true, "time": "9:05 PM", "msg": "Ok", "status": "seen"},
            {
              "sendByMe": false,
              "time": "9:07 PM",
              "msg": "Is that any urgent issue  🚀",
              "status": ""
            },
            {"sendByMe": true, "time": "9:10 PM", "msg": "No", "status": "seen"},
            {
              "sendByMe": false,
              "time": "9:14 PM",
              "msg": "I will call you latter",
              "status": ""
            },
            {
              "sendByMe": true,
              "time": "9:15 PM",
              "msg": "Ok am waiting...  🤝 ",
              "status": "send"
            }
          ]),
      ChatModel(
          dp: "https://i.pinimg.com/originals/a7/66/92/a766923c29305a16ce461b2ae54f4c68.jpg",
          name: "Marc",
          category: "",
          phno: "8847265007",
          noOfUnreadMsg: "2",
          about: " 🖤 ",
          aboutUpdateDate: "June 16 2024",
          messages: [
            {
              "sendByMe": false,
              "time": "7:16 PM",
              "msg": "Hiiii",
              "status": ""
            },
            {"sendByMe": true, "time": "7:16 PM", "msg": "hi", "status": "seen"},
            {
              "sendByMe": false,
              "time": "7:20 PM",
              "msg": "Are you free on tomorrow  ?",
              "status": ""
            },
            {"sendByMe": false, "time": "7:22 PM", "msg": " 🙄 ", "status": ""},
            {"sendByMe": true, "time": "7:25 PM", "msg": "Yes", "status": "seen"},
            {"sendByMe": true, "time": "7:25 PM", "msg": "👍", "status": "seen"},
            {
              "sendByMe": false,
              "time": "7:28 PM",
              "msg": "Oh nice",
              "status": ""
            },
            {
              "sendByMe": true,
              "time": "7:29 PM",
              "msg": "Whats the matter  ?",
              "status": "seen"
            },
            {
              "sendByMe": false,
              "time": "7:30 PM",
              "msg": "Guess that",
              "status": ""
            },
            {"sendByMe": true, "time": "7:32 PM", "msg": " 🤔 ", "status": "seen"},
            {
              "sendByMe": false,
              "time": "7:34 PM",
              "msg": "Tommorrow is my birthday  🥺 ",
              "status": ""
            },
            {
              "sendByMe": true,
              "time": "7:34 PM",
              "msg": "oh am sorry bro",
              "status": "seen"
            },
            {
              "sendByMe": true,
              "time": "7:35 PM",
              "msg": "Am just forgotted that 🙏",
              "status": "seen"
            },
            {
              "sendByMe": false,
              "time": "7:37 PM",
              "msg": "Thats not a problem",
              "status": ""
            },
            {
              "sendByMe": false,
              "time": "7:38 PM",
              "msg": "Tomorrow am walking a party on my house 🎉",
              "status": ""
            },
            {
              "sendByMe": false,
              "time": "7:38 PM",
              "msg": "And you are also invited so dont forgot that   🎊",
              "status": ""
            },
            {"sendByMe": true, "time": "7:38 PM", "msg": "no", "status": "seen"},
            {
              "sendByMe": true,
              "time": "7:39 PM",
              "msg": "I will surely be there for that  💚 ",
              "status": "seen"
            },
            {"sendByMe": true, "time": "7:40 PM", "msg": "💖", "status": "seen"},
            {
              "sendByMe": false,
              "time": "7:45 PM",
              "msg": "Then see you tomorrow",
              "status": ""
            },
            {"sendByMe": true, "time": "7:38 PM", "msg": "🙌", "status": "seen"},
            {"sendByMe": false, "time": "7:38 PM", "msg": "Ok", "status": ""},
            {"sendByMe": false, "time": "7:38 PM", "msg": "Bye", "status": ""},
          ]),
      ChatModel(
          name: "Seleena",
          category: "",
          phno: "6254726120",
          noOfUnreadMsg: "1",
          about: "😇",
          aboutUpdateDate: "May 26 2024",
          messages: [
            {"sendByMe": true, "time": "6:11 PM", "msg": "Hello", "status": "seen"},
            {
              "sendByMe": true,
              "time": "6:11 PM",
              "msg": "Where are you ?",
              "status": "seen"
            },
            {
              "sendByMe": false,
              "time": "6:30 PM",
              "msg": "Am at home 🏠",
              "status": ""
            },
          ]),
      ChatModel(
          name: "Peter",
          category: "",
          dp: "https://saint313.com/wp-content/uploads/2018/04/pexels-photo-428341-1024x683.jpeg",
          phno: "8574726155",
          noOfUnreadMsg: "2",
          about: "😇",
          aboutUpdateDate: "May 26 2024",
          messages: [
            {"sendByMe": false, "time": "6:01 PM", "msg": "Hi", "status": ""},
            {
              "sendByMe": false,
              "time": "6:02 PM",
              "msg": "Do you have bike ?",
              "status": ""
            },
          ]),
      ChatModel(
          dp: "https://ienglishstatus.com/wp-content/uploads/2022/02/Instagram-Standard-Whatsapp-DP-1367x2048.jpg",
          name: "Tony",
          category: "",
          phno: "7454726111",
          noOfUnreadMsg: "0",
          about: "✨💼",
          aboutUpdateDate: "Nov 26 2020",
          messages: [
            {"sendByMe": true, "time": "5:35 PM", "msg": "Hello", "status": "seen"},
            {
              "sendByMe": true,
              "time": "5:35 PM",
              "msg": "Where are you ?",
              "status": "seen"
            },
            {
              "sendByMe": false,
              "time": "5:47 PM",
              "msg": "Am at home",
              "status": ""
            },
          ]),
      ChatModel(
          name: "Harry",
          category: "",
          phno: "98747261021",
          noOfUnreadMsg: "0",
          about: "😈",
          aboutUpdateDate: "Dec 26 2020",
          messages: [
            {"sendByMe": true, "time": "3:35 PM", "msg": "Hi", "status": "seen"},
            {
              "sendByMe": true,
              "time": "3:35 PM",
              "msg": "PLease call me",
              "status": "seen"
            },
            {"sendByMe": false, "time": "3:47 PM", "msg": "OK", "status": ""},
          ]),
      ChatModel(
          dp: "https://wallpapercave.com/wp/wp6974821.jpg",
          name: "Glen",
          category: "",
          phno: "74547261440",
          noOfUnreadMsg: "0",
          about: "✨💼",
          aboutUpdateDate: "Sep 26 2024",
          messages: [
            {"sendByMe": true, "time": "2:35 PM", "msg": "Hello", "status": "delivered"},
          ]),
      ChatModel(
          name: "Sam",
          category: "",
          phno: "8754726111",
          noOfUnreadMsg: "0",
          about: "✨💼",
          aboutUpdateDate: "Nov 26 2020",
          messages: [
            {"sendByMe": true, "time": "2:25 PM", "msg": "Hello", "status": "seen"},
            {
              "sendByMe": true,
              "time": "2:27 PM",
              "msg": "Where are you ?",
              "status": "seen"
            },
          ]),
      ChatModel(
          name: "Hector",
          category: "",
          phno: "7454726111",
          noOfUnreadMsg: "2",
          about: "✨💼",
          aboutUpdateDate: "Nov 26 2020",
          messages: [
            {"sendByMe": true, "time": "1:35 PM", "msg": "Hello", "status": "seen"},
            {
              "sendByMe": true,
              "time": "1:35 PM",
              "msg": "Where are you ?",
              "status": "seen"
            },
            {
              "sendByMe": false,
              "time": "1:47 PM",
              "msg": "Am at home",
              "status": ""
            },
            {
              "sendByMe": false,
              "time": "1:47 PM",
              "msg": "Whats the matter",
              "status": ""
            },
          ]),
    ];
    return chatList;
  }
}
