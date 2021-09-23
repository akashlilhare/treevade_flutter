import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:treevade_flutter/constants/constants.dart';

class SeatFilter extends StatelessWidget {
  const SeatFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
Color primaryColor = constants.primaryColor;

    buildToggleSwitch() {
      return ToggleSwitch(
        minHeight: 50,
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        cornerRadius: 8.0,
        activeBgColor: [primaryColor, primaryColor, primaryColor],
        activeFgColor: Colors.white,
        inactiveBgColor: Colors.blue.shade50,
        inactiveFgColor: Colors.black,
        initialLabelIndex: 1,
        totalSwitches: 4,
        labels: const ["Any", "1", "2","4+"],
        radiusStyle: true,
        onToggle: (index) {
        },
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          "Number of Seats",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: constants.primaryTextColor),
        ),
        const    SizedBox(height: 18,),
        buildToggleSwitch(),
       const SizedBox(height: 8,)
      ],
    );
  }
}
