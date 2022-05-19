import 'package:flutter/material.dart';
import 'package:plantui/detailscreen.dart';
import 'package:plantui/modal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _plant = Plant.generatePlantList();
  final _fplant = Plant.featuredPlantList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
            size: 20,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 10.0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.green,
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: ''),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Wellcome here!!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 10,
                              color: Colors.black12),
                        ]),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.green,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "search here",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ))
            ]),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Recommanded",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              child: ListView(
                children: [
                  Container(
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _plant.length,
                        itemBuilder: (context, index) {
                          Plant plantScreen = _plant[index];
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailScreen(plant: plantScreen) ));
                            },
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 150,
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 180,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(_plant[index].imgUrl,),
                                          fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(_plant[index].plantName,style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.normal),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 5.0),
                                          child: Row(
                                            children: [
                                              Text("\$"),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 1.0),
                                                child: Text(_plant[index].price.toString(),style: TextStyle(color: Colors.green,),),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Featured Plants",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Container(
                    height: 250,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _plant.length,
                        itemBuilder: (context, index) {
                          Plant fplantScreen = _fplant[index];
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailScreen(plant:fplantScreen ) ));
                            },
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 300,
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(5),
                                      height: 180,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(_fplant[index].imgUrl,),
                                            fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(_fplant[index].plantName,style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.normal),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 5.0),
                                          child: Row(
                                            children: [
                                              Text("\$"),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 1.0),
                                                child: Text(_fplant[index].price.toString(),style: TextStyle(color: Colors.green,),),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),

                ],
              ),
            )
          ],
        ));
  }
}
