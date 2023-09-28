import 'package:flutter/material.dart';
import 'package:tion/components/grid_ns.dart';
import 'package:tion/components/nation_list_item.dart';
import 'package:tion/components/trending_item.dart';
import 'package:tion/data/locations.dart';
import 'package:tion/helper/color.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static double maxInnerWidth = 750.0;
  final TextEditingController _searchQueryController = TextEditingController();
  List<MovieListItem> foundMovies = [];

  @override
  void initState() {
    super.initState();
    _findByTitleQuery();

    // Start listening to changes.
    _searchQueryController.addListener(_findByTitleQuery);
  }

  @override
  void dispose() {
    _searchQueryController.dispose();
    super.dispose();
  }

  void _findByTitleQuery() {
    List<MovieListItem> res = [];
    String query = _searchQueryController.text.toLowerCase();
    for (int i = 0; i < LocationRepos.all.length; i++) {
      var e = LocationRepos.all[i];
      if (e.title.toLowerCase().contains(query)) {
        res.add(MovieListItem(data: e));
      }
    }
    setState(() {
      foundMovies = res;
    });
  }

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
                      alignment: screenSize.width > maxInnerWidth
                          ? Alignment.center
                          : Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      child: Column(
                        crossAxisAlignment: screenSize.width > maxInnerWidth
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tion',
                            textAlign: screenSize.width > maxInnerWidth
                                ? TextAlign.center
                                : TextAlign.left,
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Find favorite nation location for vacation',
                            textAlign: screenSize.width > maxInnerWidth
                                ? TextAlign.center
                                : TextAlign.left,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )),
                  const Padding(padding: EdgeInsets.all(10)),
                  Container(
                    alignment: Alignment.center,
                    width: screenSize.width > maxInnerWidth
                        ? maxInnerWidth
                        : screenSize.width,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Trending 🔥',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(7)),
                              TrendingItem(
                                data: LocationRepos.all.first,
                                maxWidth: maxInnerWidth,
                              ),
                              const Padding(padding: EdgeInsets.all(12)),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.fromLTRB(15, 12, 15, 12),
                                decoration: const BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(31, 0, 0, 0),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                      ),
                                    ],
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.search,
                                      color: ThemeColor.black,
                                      size: 24.0,
                                      semanticLabel: 'Search Symbol',
                                    ),
                                    const Padding(padding: EdgeInsets.all(5)),
                                    Expanded(
                                        child: TextField(
                                      controller: _searchQueryController,
                                      decoration:
                                          const InputDecoration.collapsed(
                                              hintText: 'Find nation name...'),
                                    )),
                                  ],
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(12)),
                              const Text(
                                'Find location below',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Padding(padding: EdgeInsets.all(10)),
                              GridNS(
                                columnCount: 2,
                                gap: 10,
                                padding: EdgeInsets.zero,
                                children: foundMovies,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ))
            ],
          ),
        )));
  }
}
