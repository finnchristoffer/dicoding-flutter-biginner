import 'package:flutter/material.dart';
import 'package:tion/data/locations.dart';
import 'package:tion/helper/color.dart';
import 'package:tion/screens/nation_location_detail.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class MovieDetail extends StatelessWidget {
  final NationData data;
  static double maxThumbnailWidth = 750.0;
  const MovieDetail({Key? key, required this.data}) : super(key: key);

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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Ink(
                                  child: Container(
                                width: 44,
                                height: 44,
                                alignment: Alignment.centerLeft,
                                child: const Icon(
                                  Icons.chevron_left,
                                  color: ThemeColor.black,
                                  size: 24.0,
                                  semanticLabel: 'Back Button',
                                ),
                              ))),
                          Flexible(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                data.title,
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.clip,
                                style: const TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
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
                                width: screenSize.width > maxThumbnailWidth
                                    ? maxThumbnailWidth
                                    : screenSize.width,
                                height: (screenSize.width > maxThumbnailWidth
                                        ? maxThumbnailWidth
                                        : screenSize.width) *
                                    9 /
                                    16,
                                fit: BoxFit.cover),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(7)),
                        Container(
                          alignment: Alignment.center,
                          width: screenSize.width > maxThumbnailWidth
                              ? maxThumbnailWidth
                              : screenSize.width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Locations',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '${data.locations.length} found',
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(padding: EdgeInsets.all(7)),
                              Column(
                                children: <Widget>[
                                  ..._generateLocationList(context)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        )));
  }

  Iterable<Widget> _generateLocationList(BuildContext context) {
    return data.locations.map(
      (e) => InkWell(
        onTap: () {
          showMaterialModalBottomSheet(
            context: context,
            expand: false,
            builder: (context) => MovieLocationDetail(data: e),
          );
        },
        child: Ink(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(15, 18, 15, 18),
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(30, 0, 0, 0),
                  spreadRadius: 2,
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  e.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  e.location,
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
