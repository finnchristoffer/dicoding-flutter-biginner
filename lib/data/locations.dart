class LocationData {
  String name;
  String location;
  double long;
  double lat;
  String imageDir;
  String about;

  LocationData(
      this.name, this.location, this.lat, this.long, this.imageDir, this.about);
}

class NationData {
  String title;
  String imageDir;
  List<LocationData> locations;

  NationData(this.title, this.imageDir, this.locations);
}

class LocationRepos {
  static var all = [
    NationData('Japan', 'assets/images/japan/flag.jpeg', [
      LocationData(
          'Mount Fuji',
          'Shizuoka, Japan',
          35.3605556,
          138.7277778,
          'assets/images/japan/fuji.jpeg',
          'Mount Fuji, located on Honshū, is the highest volcano in Japan at 3,776.24 m (12,389 ft), 2nd-highest volcano of an island in Asia (after Mount Kerinci in Sumatra), and 7th-highest peak of an island in the world. It is a dormant stratovolcano that last erupted in 1707–1708. Mount Fuji lies about 100 kilometers (60 mi) south-west of Tokyo, and can be seen from there on a clear day. Mount Fuji\'s exceptionally symmetrical cone, which is snow-capped for about 5 months a year, is a well-known symbol of Japan and it is frequently depicted in art and photographs, as well as visited by sightseers and climbers.'),
      LocationData(
          'Osaka Castle',
          'Osaka, Japan',
          34.687315,
          135.526201,
          'assets/images/japan/osaka_castle.jpeg',
          'Osaka Castle is a Japanese castle in Chūō-ku, Osaka, Japan. The castle is one of Japan\'s most famous landmarks and it played a major role in the unification of Japan during the sixteenth century of the Azuchi–Momoyama period. The main tower of Osaka Castle is situated on a plot of land roughly one square kilometer. It is built on two raised platforms of landfill supported by sheer walls of cut rock, using a technique called Burdock piling, each overlooking a moat. The central castle building is five stories on the outside and eight stories on the inside, and built atop a tall stone foundation to protect its occupants from attackers.'),
      LocationData(
          'Tokyo Tower',
          'Tokyo, Japan',
          35.658581,
          139.745433,
          'assets/images/japan/tokyo_tower.jpeg',
          'Tokyo Tower is a communications and observation tower in the Shiba-koen district of Minato, Tokyo, Japan. At 332.9 meters (1,092 ft), it is the secrond-tallest structure in Japan. The structure is an Eiffel Tower-inspired lattice tower that is painted white and international orange to comply with air safety regulations. Built in 1958, the tower\'s main sources of revenue are tourism and antenna leasing. Over 150 million people have visited the tower since its opening. FootTown, a four-story building located directly under the tower, houses museums, restaurants, and shops. Departing from there, guests can visit two observation decks. The two-story Main Observatory is located at 150 meters (490 ft), while the smaller Special Observatory reaches a height of 249.6 meters (819 ft).'),
    ]),
    NationData('South Korea', 'assets/images/korea/flag.jpeg', [
      LocationData(
          'Seoul',
          'South Korea',
          37.5666791,
          126.9782914,
          'assets/images/korea/seoul.jpeg',
          'Seoul, officially the Seoul Special City, is the capital and largest metropolis of South Korea. Seoul has a population of 9.7 million people, and forms the heart of the Seoul Capital Area with the surrounding Incheon metropolis and Gyeonggi province. Seoul was the world\'s 4th largest metropolitan economy in 2014 after Tokyo, New York City and Los Angeles. In 2017, the cost of living in Seoul was ranked 6th globally. Seoul was rated Asia\'s most livable city with the second highest quality of life globally by Arcadis in 2018. Seoul is the most visited city in South Korea, with 17.5 million visitors in 2019.'),
      LocationData(
          'Busan',
          'South Korea',
          35.1795543,
          129.0756416,
          'assets/images/korea/busan.jpeg',
          'Busan, formerly known as Pusan and now officially Busan Metropolitan City, is South Korea\'s second-most populous city after Seoul, with a population of over 3.4 million inhabitants. It is the economic, cultural and educational center of southeastern South Korea, with its port—Korea\'s busiest and the 9th-busiest in the world—only about 190 kilometers (120 mi) from the Japanese islands of Kyushu and Honshu. The surrounding "Southeast Economic Zone" (including Ulsan and South Gyeongsang) is now South Korea\'s largest industrial area.'),
      LocationData(
          'Gyeongju',
          'South Korea',
          35.856172,
          129.224748,
          'assets/images/korea/gyeongju.jpeg',
          'Gyeongju, historically known as Seorabeol, is a coastal city in the far southeastern corner of North Gyeongsang Province in South Korea. It is the second-largest city by area in the province after Andong, covering 1,324 km2 (511 sq mi) with a population of 264,091 people (as of December 2019). Gyeongju is 370 km (230 mi) southeast of Seoul, and 55 km (34 mi) east of the provincial capital, Daegu. The city borders Cheongdo and Yeongcheon to the west, Ulsan to the south and Pohang to the north, while to the east lies the coast of the Sea of Japan (East Sea). Numerous low mountains—outliers of the Taebaek range—are scattered around the city.'),
    ]),
    NationData('Indonesia', 'assets/images/indonesia/flag.jpeg', [
      LocationData(
          'Raja Empat',
          'Indonesia',
          -1.979722,
          130.895556,
          'assets/images/indonesia/raja_empat.jpeg',
          'Raja Ampat Regency is a regency of West Papua province of Indonesia. The regency, which was formed based on the Law 26 of 2002, was inaugurated on 12 April 2003, and consists of a number of groups of islands situated off the northwest end of West Papua; the four main islands are Misool, Salawati, Batanta, and Waigeo. At present, the regency covers a land area of 8,034.44 sq.km, and had a population of 47,352 at the 2010 Census; the latest official estimate (as at January 2014) is 59,004. The principal town lies at Waisai.'),
      LocationData(
          'Borobudur',
          'Indonesia',
          -7.607874,
          110.203751,
          'assets/images/indonesia/borobudur.jpeg',
          'Borobudur, also transcribed Barabudur, is a 9th-century Mahayana Buddhist temple in Magelang Regency, not far from the town of Muntilan, in Central Java, Indonesia. It is the world\'s largest Buddhist temple. The temple consists of nine stacked platforms, six square and three circular, topped by a central dome. The temple is decorated with 2,672 relief panels and 504 Buddha statues. The central dome is surrounded by 72 Buddha statues, each seated inside a perforated stupa. It is the world\'s largest Buddhist temple, as well as one of the greatest Buddhist monuments in the world.'),
      LocationData(
          'Bromo',
          'Indonesia',
          -7.942493,
          112.953360,
          'assets/images/indonesia/bromo.jpeg',
          'Mount Bromo, is an active volcano and part of the Tengger massif, in East Java, Indonesia. At 2,329 meters (7,641 ft) it is not the highest peak of the massif, but is the best known. The massif area is one of the most visited tourist attractions in East Java, Indonesia. The volcano belongs to the Bromo Tengger Semeru National Park. The name of Bromo derived from Javanese pronunciation of Brahma, the Hindu creator god.'),
    ]),
    NationData('China', 'assets/images/china/flag.jpeg', [
      LocationData(
          'Beijing',
          'China',
          39.9041999,
          116.4073963,
          'assets/images/china/beijing.jpeg',
          'Beijing, alternatively romanized as Peking, is the capital of the People\'s Republic of China. It is the world\'s most populous capital city, with over 21 million residents within an administrative area of 16,410.5 km2. The city, located in North China, is governed as a municipality under the direct administration of the central government with 16 urban, suburban, and rural districts. Beijing is mostly surrounded by Hebei Province with the exception of neighboring Tianjin to the southeast; together, the three divisions form the Jingjinji megalopolis and the national capital region of China.'),
      LocationData(
          'Guilin',
          'China',
          25.234479,
          110.179953,
          'assets/images/china/guilin.jpeg',
          'Guilin, formerly romanized as Kweilin, is a prefecture-level city in the northeast of China\'s Guangxi Zhuang Autonomous Region. It is situated on the west bank of the Li River and borders Hunan to the north. Its name means "Forest of Sweet Osmanthus", owing to the large number of fragrant sweet osmanthus trees located in the region. The city has long been renowned for its scenery of karst topography.'),
      LocationData(
          'Shanghai',
          'China',
          31.230390,
          121.473702,
          'assets/images/china/shanghai.jpeg',
          'Shanghai is one of the four municipalities under the direct administration of the central government of the People\'s Republic of China, the largest city in China by population, and the second-most populous city proper in the world, with a population of 26.3 million as of 2019. It is a global financial, innovation and technology, and transport hub, with the world\'s busiest container port. Located in the Yangtze River Delta, it sits on the south edge of the estuary of the Yangtze in the middle portion of the East China coast. The municipality borders the provinces of Jiangsu and Zhejiang to the north, south and west, and is bounded to the east by the East China Sea.'),
    ]),
  ];
}
