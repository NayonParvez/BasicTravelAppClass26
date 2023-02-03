import 'package:flutter/material.dart';

import '../model/travel_place.dart';

class PlaceInfo extends StatefulWidget {
  final place_list = Place.generatedPlace();

  @override
  State<PlaceInfo> createState() => _PlaceInfoState();
}

class _PlaceInfoState extends State<PlaceInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: widget.place_list.length,
          itemBuilder: (context,index){
         var place=  widget.place_list[index];
       return Stack(
         children: [
           ClipRRect(
             borderRadius: BorderRadius.circular(25),
             child: Padding(
               padding: const EdgeInsets.only(left: 6,right: 10),
               child: Image.asset(place.img1,fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
             ),
           ),
           Positioned(
               left: 10,
               bottom: 60,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(place.name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                   Text(place.addrss,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                 ],
               )),
         ],
       );

      }),
    );
  }
}
