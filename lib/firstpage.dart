import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lottie/lottie.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> place = [
      'assets/lotie/place1.jpg',
      'assets/lotie/place2.jpg',
      'assets/lotie/place3.jpg',
      'assets/lotie/place4.jpg'
    ];
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 242, 239, 239),
          actions: [
            Icon(
              Icons.notification_add_outlined,
              size: 40,
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 243, 241, 241),
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned(
                      left: 30,
                      child: Text('where do you want to go',
                          style: TextStyle(
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic))),
                  Positioned(
                    left: 120,
                    child: Container(
                        height: 150,
                        width: 100,
                        child: Lottie.network(
                            'https://lottie.host/ea094e1c-8d90-4102-ae31-4c768385afae/AF1VCJl8eF.json')),
                  ),
                  Positioned(
                      left: 20,
                      top: 140,
                      child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 177, 176, 176),
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.search),
                              border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              focusedBorder: InputBorder.none,
                              hintText: 'search your place'),
                        ),
                      )),
                  Positioned(
                      top: 220,
                      left: 20,
                      child: Text(
                        'Recomeded',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      )),
                  Positioned(
                    top: 240,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        height: 230,
                        width: 385,
                        child: CarouselSlider(
                            items: place
                                .map((e) => Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 17,
                                                offset: Offset(10, 10))
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              e,
                                            ),
                                            fit: BoxFit.cover,
                                          )),
                                    ))
                                .toList(),
                            options: CarouselOptions(
                                // viewportFraction: 0.8,
                                enlargeCenterPage: true,
                                autoPlay: true,
                                aspectRatio: 2))),
                  ),
                  Positioned(
                      top: 500,
                      child: Container(
                        width: 400,
                        height: 170,
                        color: Color.fromARGB(255, 242, 241, 241),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(10, 10),
                                          blurRadius: 17),
                                    ],
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.amber,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/lotie/kochi.jpg',
                                        ))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(10, 10),
                                          blurRadius: 17),
                                    ],
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.amber,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/lotie/place5.jpeg',
                                        ))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(10, 10),
                                          blurRadius: 17),
                                    ],
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.amber,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/lotie/alapuza.jpeg',
                                        ))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(10, 10),
                                          blurRadius: 17),
                                    ],
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.amber,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'assets/lotie/kottayam.jpeg',
                                        ))),
                              ),
                            )
                          ]),
                        ),
                      )),
                  Positioned(
                      top: 670,
                      left: 170,
                      child: IconButton(
                          onPressed: () {
                            shobuttonsheet(context);
                          },
                          icon: Icon(
                            Icons.read_more,
                            size: 50,
                          )))
                ],
              ),
            ),
          ],
        ));
  }

  Future<void> shobuttonsheet(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          child: ListView(
            children: [
              StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                  StaggeredGridTile.count(
                      crossAxisCellCount: 4,
                      mainAxisCellCount: 4,
                      child: images('assets/lotie/place6.jpeg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: images('assets/lotie/thaj.jpeg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: images('assets/lotie/place7.jpeg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 4,
                      mainAxisCellCount: 4,
                      child: images('assets/lotie/place1.jpg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: images('assets/lotie/munnar.jpeg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: images('assets/lotie/kochi.jpg')),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('close'))
                ],
              )
            ],
          ),
        );
      },
    );
  }

  images(imagepath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        imagepath,
        fit: BoxFit.cover,
      ),
    );
  }
}
