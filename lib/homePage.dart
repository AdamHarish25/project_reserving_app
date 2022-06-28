// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, file_names, non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_adjacent_string_concatenation, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:project_reserving_app/Icons.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final ListImageHorizontal = [
    "assets/images/Jakarta.png",
    "assets/images/Bandung.png",
    "assets/images/Surabaya.png",
    "assets/images/Palembang.png",
    "assets/images/Aceh.png",
    "assets/images/Bogor.png",
  ];
  final ListTitleHorizontal = [
    "Jakarta",
    "Bandung",
    "Surabaya",
    "Palembang",
    "Aceh",
    "Bogor",
  ];

  final ListImageVertical = [
    "assets/images/Kuretakeso.png",
    "assets/images/RoemahNenek.png",
    "assets/images/DarrlingHow.png",
    "assets/images/Crown.png",
    "assets/images/CityCactus.png"
  ];

  final ListTitleVertical = [
    "Kuretakeso Hott",
    "Roemah Nenek",
    "Darrling How",
    "Orang Crown",
    "City of Cactus",
  ];

  final ListHarga = [
    "\$52",
    "\$11",
    "\$20",
    "\$552",
    "\$20",
  ];

  final ListPlacesName = [
    "Bandung, Germany",
    "Seattle, Bogor",
    "Jakarta, Indonesia",
    "Halla, Sumatra",
    "Jakarta, Indonesia",
  ];

  final ListRating = [
    "4/5",
    "5/5",
    "3/5",
    "5/5",
    "3/5",
  ];

  final TipsListImages = [
    "assets/images/IllustrationImage1.png",
    "assets/images/IllustrationImage2.png",
  ];

  List<Color> TipsbackgroundColors = [
    Color.fromARGB(57, 217, 0, 255),
    Color.fromARGB(38, 0, 140, 255)
  ];

  final TipsTitle = [
    "City Guidelines",
    "Jakarta Fairship",
  ];

  final TipsDates = [
    "Updated 20 Apr",
    "Updated 11 Dec",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 30,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(
            bottom: 50,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore Now",
                      style: TextStyle(
                        fontFamily: "PoppinsMed",
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mencari kosan yang cozy",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "PoppinsMed",
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: ListImageHorizontal.length,
                  itemBuilder: (ctx, idx) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          image: DecorationImage(
                            image: AssetImage(ListImageHorizontal[idx]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(199, 232, 228, 228),
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(18),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            ListTitleHorizontal[idx],
                            style: TextStyle(
                              fontFamily: "PoppinsMed",
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommended Space",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    fontFamily: "PoppinsMed",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 450,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: ListImageVertical.length,
                  itemBuilder: (ctx, idx) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 10,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: 130,
                              alignment: Alignment.topRight,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                  image: AssetImage(
                                    ListImageVertical[idx],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(35),
                                    topRight: Radius.circular(18),
                                  ),
                                  color: Color.fromARGB(255, 196, 46, 222),
                                ),
                                height: 30,
                                width: 70,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      ListRating[idx],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  ListTitleVertical[idx],
                                  style: TextStyle(
                                    fontFamily: "PoppinsMed",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: " / " + "month",
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                    text: ListHarga[idx],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 196, 46, 222),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  ListPlacesName[idx],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tips & Guidance",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    fontFamily: "PoppinsMed",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: TipsListImages.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, idx) {
                    return Card(
                      color: Colors.transparent,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      elevation: 0,
                      child: ListTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_right_rounded,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        contentPadding: EdgeInsets.all(10),
                        onTap: () {},
                        leading: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: TipsbackgroundColors[idx],
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: AssetImage(
                                TipsListImages[idx],
                              ),
                              alignment: Alignment.bottomLeft,
                            ),
                          ),
                        ),
                        title: Text(
                          TipsTitle[idx],
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          TipsDates[idx],
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
        width: MediaQuery.of(context).size.width,
        height: 65,
        decoration: BoxDecoration(
          color: Color.fromARGB(211, 199, 198, 198),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home_rounded,
                color: Color.fromARGB(255, 102, 102, 102),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.email_rounded,
                color: Color.fromARGB(255, 102, 102, 102),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CardText,
                color: Color.fromARGB(255, 102, 102, 102),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Heart,
                color: Color.fromARGB(255, 102, 102, 102),
              ),
            )
          ],
        ),
      ),
    );
  }
}
