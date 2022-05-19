import 'package:flutter/material.dart';
import 'package:plantui/modal.dart';

class DetailScreen extends StatefulWidget {
  final Plant plant;

  DetailScreen(
      {required this.plant}); //  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50))),
              child: Container(
                height: 600,
                width: 270,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.plant.imgUrl),
                        fit: BoxFit.cover),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 25,
                          color: Colors.green.shade200),
                    ]
                ),
              ),
            ),
            Expanded(
                child: Column(
              children: [
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.sunny,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.thermostat_rounded,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.water_drop_outlined,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.eco,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      Icons.air,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                widget.plant.plantName,
                style: TextStyle(color: Colors.green, fontSize: 35,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                children: [
                  Text("\$",style: TextStyle(color: Colors.green,fontWeight: FontWeight.normal,fontSize: 25),),
                  Text(widget.plant.price.toString(),style: TextStyle(color: Colors.green,fontWeight: FontWeight.normal,fontSize: 25),)
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 5,),
        Padding(padding: EdgeInsets.all(10),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 25,
                        color: Colors.green.shade200),
                  ]
              ),
              child: Center(
                child: Text("Buy now",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.normal),),
              )
            ),
            Text("Description",style: TextStyle(color: Colors.green,fontWeight: FontWeight.normal,fontSize: 25),)
          ],
        ) ,
        )
      ],
    ));
  }
}
