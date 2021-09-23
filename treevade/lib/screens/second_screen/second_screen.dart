import 'package:flutter/material.dart';
import 'package:treevade_flutter/constants/constants.dart';
import 'package:treevade_flutter/models/car_model.dart';
import 'package:treevade_flutter/widgets/car_card.dart';
import 'header_section.dart';

class SecondScreen extends StatelessWidget {

  final String title;

  const SecondScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();
    buildCards() {
      return carList.map((car) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: CarCard(
              car: car,
            ),
          ));
    }

    return Scaffold(
      backgroundColor: constants.mainBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SecondScreenHeader(
                title: title,
              ),
              ...buildCards()
            ],
          ),
        ),
      ),
    );
  }
}
