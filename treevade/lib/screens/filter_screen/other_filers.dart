import 'package:flutter/material.dart';
import 'package:treevade/constants/constants.dart';
import 'package:treevade/models/other_filters_model.dart';

class OtherFilter extends StatefulWidget {
  const OtherFilter({Key? key}) : super(key: key);

  @override
  _OtherFilterState createState() => _OtherFilterState();
}

List<OtherFilterModel> otherFilterList = [
  OtherFilterModel(title: "Sort by A-Z", isSelected: false,value: 1),
  OtherFilterModel(title: "Sort by Price", isSelected: false,value: 2),
  OtherFilterModel(title: "Sort by Seats", isSelected: false,value: 3),
  OtherFilterModel(title: "Sort by Default", isSelected: false,value: 4),
];

class _OtherFilterState extends State<OtherFilter> {


  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();


    buildOtherFilter() {
      return otherFilterList
          .map((filter) => ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(filter.title,style: TextStyle(color: constants.primaryTextColor,fontWeight: FontWeight.w600,fontSize: 16),),

        trailing: Radio(


          value: filter.isSelected,
          groupValue: filter.value,
          onChanged: (_){
            setState(() {
              filter.isSelected =!filter.isSelected;
            });
          },
        ),
      ))
          .toList();
    }
    return Column(
      children: [
        const SizedBox(height:18),
        ...buildOtherFilter(),
      ],
    );
  }
}
