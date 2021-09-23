

import 'package:flutter/material.dart';
import 'package:treevade/constants/constants.dart';
import 'package:treevade/screens/second_screen/second_screen.dart';

class MainHeaderSection extends StatefulWidget {
  const MainHeaderSection({Key? key}) : super(key: key);

  @override
  State<MainHeaderSection> createState() => _MainHeaderSectionState();
}

class _MainHeaderSectionState extends State<MainHeaderSection> {
  Constants constants = Constants();
  TextEditingController textEditingController = TextEditingController();
  List<String> label = ["Buy", "Rent", "Sell"];




  @override
  Widget build(BuildContext context) {
    int value = 1;
    buildHeader() {
      return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.apps_sharp,color: constants.primaryTextColor,),
            Container(
              width: 40,
              height: 40,
              decoration:const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                      "assets/user_photo.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ]);
    }

    buildTitle() {
      return Text(
        "Thousands of cars \nwaiting for you",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600,color: constants.primaryTextColor,),
      );
    }

    buildSearchBox() {
      return Container(
        height: 55,
        decoration:const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(16))
        ),
        child:
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),

              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: constants.backgroundColor

              ),
              child: DropdownButton(
                underline: Container(),

                icon: Icon(Icons.keyboard_arrow_down,
                  color: constants.primaryColor.withOpacity(.7), size: 34,),
                items:
                const [
                  DropdownMenuItem(
                    child: Text("Buy"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Rent"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("Sell"),
                    value: 3,
                  ),
                ],


                onChanged: (int? value) {
                  setState(() {
                    value = value!;
                  });
                },
                hint: Text(label[value], style: TextStyle(
                    color: constants.primaryColor.withOpacity(.8),
                    fontWeight: FontWeight.w600),),

              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(child: TextField(
              controller: textEditingController,

              onSubmitted: (_){
                Navigator.of(context)
                    .push (
                    MaterialPageRoute (
                      builder: (BuildContext context) =>  SecondScreen(title: textEditingController.text),
                    ));

              },

              decoration:  InputDecoration(
                  hintStyle: TextStyle(color: constants.secondaryTextColor),
                  border: InputBorder.none,
                  hintText: "Type city, neighborhood or address"
              ),
            ))

          ],
        ),
      );
    }
    return  Container(
      padding: const EdgeInsets.all(16),
      color: constants.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, children: [

        buildHeader(),
        buildTitle(),
        const SizedBox(height: 18,),
        buildSearchBox(),
      ],
      ),
    );
  }
}
