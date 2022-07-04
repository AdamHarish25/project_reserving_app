// ignore_for_file: implementation_imports, unnecessary_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace, unnecessary_string_escapes, non_constant_identifier_names, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project_reserving_app/Icons.dart';
import 'package:project_reserving_app/homePage.dart';

class BookingPage extends StatefulWidget {
  BookingPage({
    Key? key,
    this.HomestayNames,
    this.HomestayPrices,
    this.HomestayRatings,
  }) : super(key: key);

  final HomestayNames;
  final HomestayPrices;
  final HomestayRatings;

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  // double? _ratingValue;
  final ListImage = [
    "assets/images/Bedroom.png",
    "assets/images/Bathtub.png",
    "assets/images/Sofa.png",
    "assets/images/Workdesk.png",
    "assets/images/Cactus.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/BookpageBack.png"),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => HomePage(),
                            ),
                          );
                        },
                        child: Icon(
                          size: 30,
                          color: Colors.black,
                          Icons.keyboard_arrow_left_rounded,
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(40, 60),
                          elevation: 0,
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          size: 25,
                          color: Colors.black,
                          Heart_Outlined,
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(40, 60),
                          elevation: 0,
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                // height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 70,
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              textAlign: TextAlign.start,
                              text: TextSpan(
                                text: widget.HomestayNames + (" \n"),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "PoppinsMed",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                                children: [
                                  TextSpan(
                                    text: widget.HomestayPrices,
                                    style: TextStyle(
                                      fontFamily: "PoppinsMed",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 196, 46, 222),
                                    ),
                                  ),
                                  TextSpan(
                                    text: " / month",
                                    style: TextStyle(
                                      fontFamily: "PoppinsMed",
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RatingBar(
                              itemCount: 5,
                              initialRating: widget.HomestayRatings,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              ratingWidget: RatingWidget(
                                full: Icon(
                                  Icons.star_rounded,
                                  color: Colors.orange,
                                ),
                                half: Icon(
                                  Icons.star_half_rounded,
                                  color: Colors.orange,
                                ),
                                empty: Icon(
                                  Icons.star_outline_rounded,
                                  color: Colors.orange,
                                ),
                              ),
                              ignoreGestures: true,
                              onRatingUpdate: (value) {
                                setState(() {
                                  // _ratingValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 40,
                            bottom: 25,
                          ),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Main Facilities",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 100,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/Bar.png",
                                    height: 60,
                                    width: 50,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "2 ",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 196, 46, 222),
                                        fontSize: 16,
                                        fontFamily: "PoppinsMed",
                                        fontWeight: FontWeight.w500,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "kitchen",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/Bed.png",
                                    height: 60,
                                    width: 50,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "3 ",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 196, 46, 222),
                                        fontSize: 16,
                                        fontFamily: "PoppinsMed",
                                        fontWeight: FontWeight.w500,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Bedrooms",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 100,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/Cupboard.png",
                                    height: 60,
                                    width: 50,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "3 ",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 196, 46, 222),
                                        fontSize: 16,
                                        fontFamily: "PoppinsMed",
                                        fontWeight: FontWeight.w500,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Big Lemari",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 40,
                            bottom: 25,
                          ),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Photos",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          child: ListView.builder(
                            itemCount: ListImage.length,
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (ctx, idx) {
                              return Container(
                                margin: EdgeInsets.all(10),
                                height: 100,
                                width: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ListImage[idx],
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 40,
                            bottom: 25,
                          ),
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Location",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Jln. Kappan Sukses No.20 \nPalembang",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 224, 224, 224),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.location_on,
                                color: Color.fromARGB(255, 126, 126, 126),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: "PoppinsMed",
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(
                              MediaQuery.of(context).size.width,
                              50,
                            ),
                            primary: Color.fromARGB(255, 137, 15, 158),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
