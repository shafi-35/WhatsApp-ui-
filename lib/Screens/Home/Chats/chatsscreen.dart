import 'package:flutter/material.dart';
import 'package:waclone/Screens/Home/Contact/contactscreen.dart';
import 'package:waclone/Widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrContent = [
      {
        "images":
            "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
        "name": "Aron",
        "lastmsg": "Lorem Ipsum",
        "time": "5:45 am",
        "msg": "7",
      },
      {
        "images":
            "https://www.georgetown.edu/wp-content/uploads/2022/02/Jkramerheadshot-scaled-e1645036825432-1050x1050-c-default.jpg",
        "name": "jullie",
        "lastmsg": "Oi",
        "time": "06:45 am",
        "msg": "17",
      },
      {
        "images":
            "https://t3.ftcdn.net/jpg/03/02/88/46/360_F_302884605_actpipOdPOQHDTnFtp4zg4RtlWzhOASp.jpg",
        "name": "Vardie",
        "lastmsg": "hey",
        "time": "09:06 am",
        "msg": "1",
      },
      {
        "images":
            "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
        "name": "Aron",
        "lastmsg": "Lorem Ipsum",
        "time": "5:45 am",
        "msg": "7",
      },
      {
        "images":
            "https://www.georgetown.edu/wp-content/uploads/2022/02/Jkramerheadshot-scaled-e1645036825432-1050x1050-c-default.jpg",
        "name": "jullie",
        "lastmsg": "Oi",
        "time": "06:45 am",
        "msg": "17",
      },
      {
        "images":
            "https://t3.ftcdn.net/jpg/03/02/88/46/360_F_302884605_actpipOdPOQHDTnFtp4zg4RtlWzhOASp.jpg",
        "name": "Vardie",
        "lastmsg": "hey",
        "time": "09:06 am",
        "msg": "1",
      },
      {
        "images":
            "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
        "name": "Aron",
        "lastmsg": "Lorem Ipsum",
        "time": "5:45 am",
        "msg": "7",
      },
      {
        "images":
            "https://www.georgetown.edu/wp-content/uploads/2022/02/Jkramerheadshot-scaled-e1645036825432-1050x1050-c-default.jpg",
        "name": "jullie",
        "lastmsg": "Oi",
        "time": "06:45 am",
        "msg": "17",
      },
      {
        "images":
            "https://t3.ftcdn.net/jpg/03/02/88/46/360_F_302884605_actpipOdPOQHDTnFtp4zg4RtlWzhOASp.jpg",
        "name": "Vardie",
        "lastmsg": "hey",
        "time": "09:06 am",
        "msg": "1",
      },
    ];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(arrContent[index]["images"].toString()),
                  ),
                  title: UiHelper.CustomText(
                      text: arrContent[index]["name"].toString(),
                      height: 14,
                      fontweight: FontWeight.bold),
                  subtitle: UiHelper.CustomText(
                      text: arrContent[index]["lastmsg"].toString(),
                      height: 13,
                      color: Color(0XFF889095)),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(
                          text: arrContent[index]["time"].toString(),
                          height: 12,
                          color: Color(0XFF026500)),
                      CircleAvatar(
                        child: UiHelper.CustomText(
                            text: arrContent[index]["msg"].toString(),
                            height: 12,
                            color: Color(0XFFFFFFFF)),
                        radius: 11,
                        backgroundColor: Color(0XFF036A01),
                      )
                    ],
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContactScreen()));
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color(0XFF008665),
          child: Image.asset("assets/images/mode_comment_black_24dp 1.png"),
        ),
      ),
    );
  }
}
