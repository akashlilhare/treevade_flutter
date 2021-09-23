import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:treevade/constants/constants.dart';

import 'package:treevade/screens/filter_screen/header_section.dart';
import 'package:treevade/screens/filter_screen/car_type_filter.dart';
import 'package:treevade/screens/filter_screen/price_filter.dart';
import 'package:treevade/screens/filter_screen/seats_filter.dart';

import 'other_filers.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = "project-page";

  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();


    buildBody() {
      return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [

               CarTypeFilter(),
               PriceFilter(),
               SeatFilter(),
               OtherFilter()
            ],
          ));
    }

    buildButton() {
      return Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Set Filters"),
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                primary: constants.primaryColor),
          ));
    }

    return Scaffold(
      backgroundColor: constants.mainBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FilterHeaderSection(),
                    buildBody(),
                  ],
                ),
              ),
            ),
            buildButton(),
          ],
        ),
      ),
    );
  }
}
