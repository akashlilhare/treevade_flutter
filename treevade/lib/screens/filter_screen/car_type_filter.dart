import 'package:flutter/material.dart';
import 'package:treevade/constants/constants.dart';
import 'package:treevade/models/car_type_model.dart';

class CarTypeFilter extends StatefulWidget {
  const CarTypeFilter({Key? key}) : super(key: key);

  @override
  _CarTypeFilterState createState() => _CarTypeFilterState();
}

class _CarTypeFilterState extends State<CarTypeFilter> {
  Constants constants = Constants();
  List<CarType> carTypeList = [
    CarType(type: "SUV", isSelected: false, index: 0),
    CarType(type: "Hatchback", isSelected: false, index: 1),
    CarType(type: "Plug-In Hybrids", isSelected: false, index: 2),
    CarType(type: "Hybrid", isSelected: false, index: 3),
    CarType(type: "Pick Up", isSelected: false, index: 4),
    CarType(type: "Van", isSelected: false, index: 5)
  ];


  @override
  Widget build(BuildContext context) {

    buildTitle(String title) {
      return Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      );
    }

    buildVehicleFilter() {
      return Wrap(
        children: [
          ...carTypeList
              .map((carType) => Padding(
            padding: const EdgeInsets.only(right: 18),
            child: FilterChip(
              showCheckmark: false,
                selected:carType.isSelected  ,
                selectedColor: constants.mainBackgroundColor,
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: carType.isSelected  ? constants.primaryColor : Colors.blue.shade50),
                    borderRadius: const BorderRadius.all(Radius.circular(4))),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                backgroundColor: constants.mainBackgroundColor,
                label: Text(carType.type,style: TextStyle(color: carType.isSelected  ? constants.primaryColor : Colors.black54),),
                onSelected: (val) {

                  setState(() => carType.isSelected = val);
                }),
          ))
              .toList()
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8,),
        buildTitle("Vehicle Type"),
        const SizedBox(height: 8,),
        buildVehicleFilter(),
        const SizedBox(height: 18,),
      ],
    );
  }
}
