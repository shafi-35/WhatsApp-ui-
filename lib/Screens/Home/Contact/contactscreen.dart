import 'package:flutter/material.dart';
import 'package:waclone/Widgets/uihelper.dart';

class ContactScreen extends StatelessWidget{
  var contactContent = [
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqcVXIgWCvTbb55lDj91N_g2rd0F3rma21CA&s",
      "name": "Michael",
      "status": "Busy",
    },
    {
      "img": "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
      "name": "Franklin",
      "status": "Cool",
    },
    {
      "img": "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg",
      "name": "Trevor",
      "status": "Busy",
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqcVXIgWCvTbb55lDj91N_g2rd0F3rma21CA&s",
      "name": "Michael",
      "status": "Busy",
    },
    {
      "img": "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
      "name": "Franklin",
      "status": "Cool",
    },
    {
      "img": "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg",
      "name": "Trevor",
      "status": "Busy",
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqcVXIgWCvTbb55lDj91N_g2rd0F3rma21CA&s",
      "name": "Michael",
      "status": "Busy",
    },
    {
      "img": "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
      "name": "Franklin",
      "status": "Cool",
    },
    {
      "img": "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg",
      "name": "Trevor",
      "status": "Busy",
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqcVXIgWCvTbb55lDj91N_g2rd0F3rma21CA&s",
      "name": "Michael",
      "status": "Busy",
    },
    {
      "img": "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
      "name": "Franklin",
      "status": "Cool",
    },
    {
      "img": "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg",
      "name": "Trevor",
      "status": "Busy",
    },
    {
      "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqcVXIgWCvTbb55lDj91N_g2rd0F3rma21CA&s",
      "name": "Michael",
      "status": "Busy",
    },
    {
      "img": "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg",
      "name": "Franklin",
      "status": "Cool",
    },
    {
      "img": "https://t4.ftcdn.net/jpg/02/14/74/61/360_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg",
      "name": "Trevor",
      "status": "Busy",
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(text: "Select Contact", height: 16, color: Colors.white),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)), 
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(contactContent[index]["img"].toString()),
          ),
          title: UiHelper.CustomText(text: contactContent[index]["name"].toString(), height: 16, color: Color(0XFF000000), fontweight: FontWeight.bold),
          subtitle: UiHelper.CustomText(text: contactContent[index]["status"].toString(), height: 14),
        );
      },
      itemCount: contactContent.length,
      ),
    );
  }

}