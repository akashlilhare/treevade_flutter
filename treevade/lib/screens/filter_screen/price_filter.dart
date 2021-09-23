
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:treevade/constants/constants.dart';

class PriceFilter extends StatefulWidget {
  const PriceFilter({Key? key}) : super(key: key);

  @override
  _PriceFilterState createState() => _PriceFilterState();
}


class _PriceFilterState extends State<PriceFilter> {
  RangeValues _currentRangeValues = const RangeValues(2000, 190000);
Constants constants = Constants();


  buildTitle(double min, double max) {
    var f = NumberFormat("###,###", "en_US");
   String minVal = f.format(min.toInt());
    String maxVal = f.format(max.toInt());
    return Row(
      children: [
          Text(
          "Price Range",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: constants.primaryTextColor),
        ),

        const Spacer(),

        Text(
          "\$$minVal - \$$maxVal",
          style:  TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: constants.primaryTextColor),
        ),

      ],
    );
  }

  buildPriceFilter(){
    return RangeSlider(

        values: _currentRangeValues,
        min: 2000,
        max: 200000,

        labels: RangeLabels(
          _currentRangeValues.start.round().toString(),
          _currentRangeValues.end.round().toString(),
        ),
        activeColor: constants.primaryColor,
        onChanged: (RangeValues values) {
          setState(() {
            _currentRangeValues = values;
          });
        },
      );
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const   SizedBox(height: 18,),
        buildTitle(_currentRangeValues.start,_currentRangeValues.end),
        const    SizedBox(height: 18,),
        buildPriceFilter(),
        const      SizedBox(height: 18,),
      ],
    );
  }
}


