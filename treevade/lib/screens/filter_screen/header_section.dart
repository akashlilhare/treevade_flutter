import 'package:flutter/material.dart';
import 'package:treevade/constants/constants.dart';
import 'package:treevade/models/brand_model.dart';


class FilterHeaderSection extends StatelessWidget {

  const FilterHeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();


    buildAppBar() {
      return Padding(
        padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child:const Icon(Icons.clear),
              onTap:()=> Navigator.of(context).pop(),
            ),
            const  Text(
              "Filters",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
                 TextButton(
              child: Text("RESET",style: TextStyle(color: constants.primaryColor),),
              onPressed: () {},
            )
          ],
        ),
      );
    }

    buildModel() {
      buildLogo() {
        return brandList
            .map(
              (brand) => Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              padding:const EdgeInsets.all(10),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(-1, 3), // changes position of shadow
                  ),
                ],
                shape: BoxShape.circle,
                // image: DecorationImage(
                //     image: AssetImage(brand.imageUrl), fit: BoxFit.cover),
              ),
              child: Image.asset(
                brand.imageUrl,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        )
            .toList();
      }

      return Container(
        padding: const EdgeInsets.only(left: 16),
        height: 80,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: constants.primaryColor,
                shape: BoxShape.circle,
              ),
              child:const Center(
                  child: Text(
                    "All",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            ...buildLogo()
          ],
        ),
      );
    }

    buildTitle(String title) {
      return Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      );
    }


    buildHeader() {
      return Container(
        color: constants.backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildAppBar(),
            const SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: buildTitle("Preferred Model"),
            ),
            const SizedBox(height: 8,),
            buildModel(),
            const SizedBox(height: 12,),
          ],
        ),
      );
    }
    return Container(
      child: buildHeader(),
    );
  }
}
