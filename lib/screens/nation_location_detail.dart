import 'package:flutter/material.dart';
import 'package:tion/data/locations.dart';
import 'package:tion/helper/color.dart';
import 'package:tion/helper/map_launcher.dart';

class MovieLocationDetail extends StatelessWidget {
  final LocationData data;
  const MovieLocationDetail({Key? key, required this.data}) : super(key: key);
  static double maxThumbnailWidth = 750.0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
  
    return Scaffold(
      backgroundColor: ThemeColor.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
          child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(data.name, 
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold,), 
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(data.location, 
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 16,), 
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Ink(
                            child: Container(
                              width: 44,
                              height: 44,
                              alignment: Alignment.topCenter,
                              child: const Icon(
                                Icons.close,
                                color: ThemeColor.black,
                                size: 24.0,
                                semanticLabel: 'Close Button',
                              ),
                            )
                          )
                        ),
                      ],
                    )
                  ),
                  
                  const Padding(padding: EdgeInsets.all(10)),

                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x54000000),
                                spreadRadius: 2,
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(data.imageDir,
                              width: screenSize.width > maxThumbnailWidth ? maxThumbnailWidth : screenSize.width,
                              height: (screenSize.width > maxThumbnailWidth ? maxThumbnailWidth : screenSize.width) * 9 / 16,
                              fit: BoxFit.cover),
                          ),
                        ),

                        const Padding(padding: EdgeInsets.all(10)),
                      
                        Container(
                          alignment: Alignment.center,
                          width: screenSize.width > maxThumbnailWidth ? maxThumbnailWidth : screenSize.width,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  MapsLauncher.launchCoordinates(data.lat, data.long, data.name);
                                },
                                child: Ink(
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0x16000000),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                        ),
                                      ],
                                    ),
                                    padding: const EdgeInsets.fromLTRB(30, 15, 20, 15),
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.map_outlined,
                                          color: ThemeColor.black,
                                          size: 24.0,
                                          semanticLabel: 'Map Icon',
                                        ),
                                        Expanded(child: Text('View in Map', 
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: ThemeColor.black), 
                                        ),)
                                      ],
                                    ),
                                  ),
                                )
                              ),

                              const Padding(padding: EdgeInsets.all(10)),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('About', 
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,), 
                                    ),
                                    const Padding(padding: EdgeInsets.all(3)),
                                    Text(data.about, 
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(fontSize: 14,), 
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            )
          ],
        ),
        )
      )
    );
  }
}