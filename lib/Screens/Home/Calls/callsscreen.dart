import 'package:flutter/material.dart';
import 'package:waclone/Widgets/uihelper.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var callContent = [
      {
        "name": "Michael",
        "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqcVXIgWCvTbb55lDj91N_g2rd0F3rma21CA&s",
        "calltime": "15 min ago",
      },
      {
        "name": "Franklin",
        "img":
            "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
        "calltime": "1 hr ago",
      },
      {
        "name": "Trevor",
        "img":
            "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg",
        "calltime": "1 day ago",
      },
      {
        "name": "Michael",
        "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqcVXIgWCvTbb55lDj91N_g2rd0F3rma21CA&s",
        "calltime": "15 min ago",
      },
      {
        "name": "Franklin",
        "img":
        "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
        "calltime": "1 hr ago",
      },
      {
        "name": "Trevor",
        "img":
        "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg",
        "calltime": "1 day ago",
      },
    ];
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            UiHelper.CustomText(text: "Recent", height: 18),
          ],
        ),
        SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      NetworkImage(callContent[index]["img"].toString()),
                ),
                title: UiHelper.CustomText(
                    text: callContent[index]["name"].toString(),
                    height: 18,
                    fontweight: FontWeight.bold,
                color: Colors.black
                ),
                subtitle: UiHelper.CustomText(
                  text: callContent[index]["calltime"].toString(),
                  height: 16,
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      color: Color(0XFF00A884),
                    )),
              );
            },
            itemCount: callContent.length,
          ),
        )
      ],
    ));
  }
}
