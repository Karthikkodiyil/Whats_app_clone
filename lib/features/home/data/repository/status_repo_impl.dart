import 'package:whatsapp_clone/features/home/data/model/status_model.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/status_entity.dart';
import 'package:whatsapp_clone/features/home/domain/repository/status_repo.dart';

class StatusRepoImpl implements StatusRepo {
  @override
  List<StatusEntity> getStaus() {
    List<StatusModel> list = [
      StatusModel(
          name: "Tony Alex dePaul abch jbc jsbxjbjb",
          dp: "https://ienglishstatus.com/wp-content/uploads/2022/02/Instagram-Standard-Whatsapp-DP-1367x2048.jpg",
          status: [
            {
              "status":
                  "https://th.bing.com/th/id/OIP.7cRYFyLoDEDh4sRtM73vvwHaDg?rs=1&pid=ImgDetMain",
              "time": "Yesterday, 9:03 PM",
              "isSeen": false,
            },
            {
              "isSeen": false,
              "time": "5 minutes ago",
              "status":
                  "https://th.bing.com/th/id/R.8a97c68b21bb72d8d29219a30a935f4c?rik=XOUhz40Jc9OcYg&riu=http%3a%2f%2fthewowstyle.com%2fwp-content%2fuploads%2f2015%2f01%2fnature-images-6.jpg&ehk=BQoi8QCZQtCfHkXWT0TIAxv1vTtTO1rY7ctKskX6Xfs%3d&risl=&pid=ImgRaw&r=0"
            },
          ]),
      StatusModel(
          name: "Glen perera martinez",
          dp: "https://wallpapercave.com/wp/wp6974821.jpg",
          status: [
            {
              "time": "32 minutes ago",
              "isSeen": false,
              "status":
                  "https://searchengineland.com/wp-content/seloads/2019/04/shutterstock_580466317.jpg"
            }
          ]),
      StatusModel(name: "Hector", status: [
        {
          "time": "1 hour ago",
          "isSeen": false,
          "status":
              "https://bkacontent.com/wp-content/uploads/2016/06/Depositphotos_31146757_l-2015-1280x1168.jpg"
        },
        {
          "time": "Yesterday, 10:34 PM",
          "isSeen": false,
          "status":
              "https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=2210&quality=70"
        }
      ]),
      StatusModel(name: "Harry", status: [
        {
          "time": "2 hour ago",
          "isSeen": false,
          "status":
              "https://th.bing.com/th/id/OIP.qzz797YX05q7grc10JIiOQAAAA?rs=1&pid=ImgDetMain"
        }
      ]),
      StatusModel(name: "Finch", status: [
        {
          "time": "3 hour ago",
          "isSeen": false,
          "status":
              "https://th.bing.com/th/id/OIP.gi0mV79mkVfpeuoyGgqLNgHaE8?rs=1&pid=ImgDetMain"
        }
      ]),
      StatusModel(
          name: "Marc",
          dp: "https://i.pinimg.com/originals/a7/66/92/a766923c29305a16ce461b2ae54f4c68.jpg",
          status: [
            {
              "time": "3 hour ago",
              "isSeen": false,
              "status":
                  "https://th.bing.com/th/id/R.6b36d052e8e9eba4b48f9975244c6b4b?rik=xrNnLjGNhv7nXw&riu=http%3a%2f%2f2.bp.blogspot.com%2f-l2CHOALGRZg%2fUNiVz1txIsI%2fAAAAAAAACjQ%2f5aIsZ-0Eops%2fs1600%2fhd-images-free-1.jpg&ehk=pJ52KmSR%2boI8yONz0Qk59LR9FvJL1HwIJREybskhqsc%3d&risl=&pid=ImgRaw&r=0"
            }
          ]),
      StatusModel(
          name: "Alex",
          dp: "https://c.pxhere.com/photos/08/7a/male_portrait_profile_social_media_cv_young_elegant_suit-459413.jpg!d",
          status: [
            {
              "time": "4 hour ago",
              "isSeen": false,
              "status":
                  "https://img.freepik.com/premium-photo/portrait-majestic-white-lion-light-sun-savanna_649709-683.jpg"
            },
            {
              "time": "Yesterday 09:23 PM",
              "isSeen": false,
              "status":
                  "https://www.boredpanda.com/blog/wp-content/uploads/2023/09/kejama14_A_hyper-realistic_portrait_of_a_majestic_lion_his_mane_706613bd-60ea-413d-88e5-d10b00d8176f-6512aae024957-png__700.jpg"
            }
          ]),
      StatusModel(name: "Sam", status: [
        {
          "time": "4 hour ago",
          "isSeen": false,
          "status":
              "https://th.bing.com/th/id/OIP.9Ut0kSOlIJ78mfa9oRyNFwHaE8?rs=1&pid=ImgDetMain"
        },
      ]),
      StatusModel(
          name: "Peter",
          dp: "https://saint313.com/wp-content/uploads/2018/04/pexels-photo-428341-1024x683.jpeg",
          status: [
            {
              "time": "Today, 10:12 AM",
              "isSeen": false,
              "status":
                  "https://th.bing.com/th/id/OIP.1-HEsr8kKCb2HmoxDAZlCwHaD4?rs=1&pid=ImgDetMain"
            }
          ]),
      StatusModel(name: "Saleena", status: [
        {
          "time": "Today, 7:04 AM",
          "isSeen": false,
          "status":
              "https://i.pinimg.com/originals/94/8b/2a/948b2a3b51c9f85d0988cf47f9268847.jpg"
        },
        {
          "time": "Yesterday, 5:44 PM",
          "isSeen": false,
          "status":
              "https://funkylife.in/wp-content/uploads/2023/03/good-morning-image-548.jpg"
        },
        {
          "time": "Yesterday 2:25 PM",
          "isSeen": false,
          "status":
              "https://www.bing.com/images/search?view=detailV2&ccid=a5CyJ7fO&id=6734344728BD76349A9E942879BCFBE307DB27B7&thid=OIP.a5CyJ7fOmqGkDzsQzKlgTQHaEK&mediaurl=https%3A%2F%2Fi.ytimg.com%2Fvi%2FtOH-Zvb6OiQ%2Fmaxresdefault.jpg&exph=720&expw=1280&q=images&simid=608009714850684618&form=IRPRST&ck=DC59C13AD7FDBEEF7D2C1F6A52784573&selectedindex=135&itb=0&cw=760&ch=731&ajaxhist=0&ajaxserp=0&vt=0&sim=11&mid=6734344728BD76349A9E6734344728BD76349A9E"
        }
      ])
    ];
    return list;
  }
}
