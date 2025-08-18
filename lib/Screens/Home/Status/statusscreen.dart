import 'package:flutter/material.dart';
import 'package:waclone/Widgets/uihelper.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var statusContent = [
      {
        "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqcVXIgWCvTbb55lDj91N_g2rd0F3rma21CA&s",
        "name": "Michael",
        "statustime": "15 min ago",
      },
      {
        "img": "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
        "name": "Franklin",
        "statustime": "1 min ago",
      },
      {
        "img": "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg",
        "name": "Trevor",
        "statustime": "1 hr ago",
      },
    ];
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            UiHelper.CustomText(text: "Status", height: 20),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Stack(
              children: [
                CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/id/1008484130/vector/creative-vector-illustration-of-default-avatar-profile-placeholder-isolated-on-background.jpg?s=612x612&w=0&k=20&c=H57e2HUi6qDyPoBl8Om1dlX22--BqgGp64cFKsywWZ0="),
              ), 
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0XFF008069),
                    child: Icon(Icons.add, color: Color(0XFFFFFFFF), size: 15,),
                  ),
                )
            ]
            ),
          ),
          title: UiHelper.CustomText(text: "My Status", height: 20),
          subtitle: UiHelper.CustomText(text: "Tap to add status update", height: 15),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            UiHelper.CustomText(text: "Recent updates", height: 15),
            Icon(Icons.arrow_drop_down, color: Color(0XFF5E5E5E),)
          ],),
        ), 
        SizedBox(height: 10,), 
        Expanded(
          child: ListView.builder(itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(statusContent[index]["img"].toString()),
              ),
              title: UiHelper.CustomText(text: statusContent[index]["name"].toString(), height: 16, fontweight: FontWeight.bold),
              subtitle: UiHelper.CustomText(text: statusContent[index]["statustime"].toString(), height: 14),
            );
          },
          itemCount: statusContent.length,
          ),
        )
      ],
    ));
  }
}
