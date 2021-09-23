import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:treevade/constants/constants.dart';
import 'package:treevade/screens/filter_screen/filter_screen.dart';

class SecondScreenHeader extends StatelessWidget {
  final String title;
  const SecondScreenHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    Color primaryColor = constants.primaryColor;
    TextEditingController textEditingController =
        TextEditingController(text: title);

    buildSearchBox(){
      return Container(
        height: 55,
        padding:const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
            color: constants.mainBackgroundColor,
            borderRadius:const BorderRadius.all(Radius.circular(12))
        ),

        child: Row(

          children: [
            IconButton(icon:
            const Icon(Icons.arrow_back_outlined),onPressed: (){
              Navigator.of(context).pop();
            },),
            Expanded(
              child: TextField(
                style: TextStyle(
                    color: constants.primaryTextColor,
                    fontWeight: FontWeight.w600
                ),
                controller: textEditingController,
                decoration:const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: constants.primaryColor,
              radius: 14,
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.clear_rounded),
                color: Colors.white,
                onPressed: () {
                  FocusScope.of(context).unfocus();
                },
              ),
            ),
          ],
        ),

      );
    }

    buildFilterTab() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(
                "Showing Result",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18,color: constants.primaryTextColor),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "94 Matches found",
                style: TextStyle(color: constants.primaryTextColor),
              )
            ],
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.sort_outlined),
            label: const Text("Filters"),
            onPressed: () {
              Navigator.of(context).pushNamed(FilterScreen.routeName);
            },
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: constants.primaryColor,
              side: BorderSide(width: 1.5, color: constants.primaryColor),
            ),
          )
        ],
      );
    }

    buildToggleSwitch() {
      return ToggleSwitch(
        minHeight: 50,
        minWidth: MediaQuery.of(context).size.width,
        cornerRadius: 12.0,
        activeBgColor: [primaryColor, primaryColor],
        activeFgColor: Colors.white,
        inactiveBgColor: Colors.white,
        inactiveFgColor: Colors.black,
        initialLabelIndex: 1,
        totalSwitches: 2,
        labels: const ["For Sale", "For Rent"],
        radiusStyle: true,
        onToggle: (index) {},
      );
    }



    return Container(
      padding: const EdgeInsets.all(16),
      color: constants.backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSearchBox(),
          const SizedBox(
            height: 18,
          ),
          buildFilterTab(),
          const SizedBox(
            height: 18,
          ),
          buildToggleSwitch(),
        ],
      ),
    );
  }
}
