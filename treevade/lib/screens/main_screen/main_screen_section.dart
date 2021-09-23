
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:treevade/constants/constants.dart';
import 'package:treevade/models/car_model.dart';
import 'package:treevade/widgets/car_card.dart';

class MainBodySection extends StatelessWidget {
  const MainBodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    List<String> label = ["Buy", "Rent", "Sell"];
    Color primaryColor = constants.primaryColor;
    buildCards() {
      return carList.map((car) =>
          CarCard(
            car: car,
          ));
    }



    buildToggleSwitch() {
      return ToggleSwitch(
        minHeight: 50,
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        cornerRadius: 12.0,
        activeBgColor: [primaryColor, primaryColor, primaryColor],
        activeFgColor: Colors.white,
        inactiveBgColor: Colors.blue.shade50,
        inactiveFgColor: Colors.black,
        initialLabelIndex: 1,
        totalSwitches: 3,
        labels: label,
        radiusStyle: true,
        onToggle: (index) {
        },
      );
    }
    return     Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 4,),

          buildToggleSwitch(),
          const SizedBox(height: 8,),
          ...buildCards(),
        ],
      ),
    );
  }
}

