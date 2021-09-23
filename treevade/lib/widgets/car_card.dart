import 'package:flutter/material.dart';
import 'package:treevade_flutter/constants/constants.dart';
import 'package:treevade_flutter/models/car_model.dart';

class CarCard extends StatelessWidget {
  final Car car;
  const CarCard({Key? key, required this.car}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants constants = Constants();



    buildPriceCard(){

      buildPriceTag(String price) {
        return Container(
          padding:const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
          decoration:const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Text(price,style: const TextStyle(color: Colors.white)),
        );
      }


      buildRatingTag(String rating) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(.5),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Text(rating,style:const TextStyle(color: Colors.white),),
        );
      }

      buildVerifiedTag(){
        return  Padding(
          padding: const EdgeInsets.only(left: 8,top: 8),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
            decoration: const BoxDecoration(
              color: Color(0xff160E57),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [Icon(Icons.verified_user_rounded,color: Colors.white,size: 20,), SizedBox(width: 8,),Text("Verified",style: TextStyle(color: Colors.white),)],
            ),

          ),
        );
      }

      return
        Stack(
          children: [
         if( car.isVerified)  Align(
              alignment: Alignment.topLeft,
              child:buildVerifiedTag()),
            Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildRatingTag(car.rating),
                  buildPriceTag(car.price),

                ],),
            ),),
          ],
        );
    }


    buildTags(List<String> tags) {
      buildTag() {
        return Wrap(children:
        tags.map((tag) =>
            Container(
              margin: const EdgeInsets.only(right: 8),
              child: Text(tag,style:TextStyle(color: constants.primaryTextColor,)),
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
            )).toList()
          ,);
      }

      buildHeartButton() {
        return IconButton(icon: Icon(Icons.favorite_border,color: constants.primaryTextColor,), onPressed: () {},);
      }
      return Row(
        children: [
          Expanded(child: buildTag()),
          buildHeartButton(),

        ],
      );
    }

    buildTitle(String title, String address) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,color: constants.primaryTextColor),),
          const SizedBox(height: 8,),
          Row(
            children: [
              Icon(Icons.location_on_outlined,size: 18,color: constants.secondaryTextColor,),
              const SizedBox(width:4,),
              Expanded(child:
              Text(address, style: TextStyle(overflow: TextOverflow.ellipsis,color: constants.secondaryTextColor,fontSize: 15),)
                ,),
            ],
          )

        ],
      );
    }

    buildDivider(){
      return Padding(
        padding: const EdgeInsets.only(top: 12,bottom: 0),
        child: Container(height: 1,color: Colors.grey.shade100,),
      );
    }
    buildDetailButton(){
      return TextButton(
        child: const Text("View Details"),onPressed: (){},);
    }



    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * .2,
            decoration: BoxDecoration(

              image:DecorationImage(image: AssetImage(car.imgUrl), fit: BoxFit.cover) ,
              borderRadius:const BorderRadius.all(Radius.circular(16)),
            ),
            child:
          buildPriceCard()),

          const SizedBox(height: 8,),
          buildTags(car.tags),
          const SizedBox(height: 8,),
          buildTitle(car.name, car.address),
         buildDivider(),
          buildDetailButton()

        ],
      ),
    );
  }
}
