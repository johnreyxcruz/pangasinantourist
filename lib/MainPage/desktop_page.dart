import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50,),
                    const Text(
                      "Book Your Stay",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: const Text(
                        "Experience the charm and comfort of Lingayen, Pangasinan, at our selection of hotels, where modern amenities meet traditional hospitality. Nestled amidst the breathtaking landscapes of Pangasinan, our hotels offer a serene retreat for both leisure and business travelers alike. Whether you're here to explore the historic landmarks, indulge in delectable local cuisine, or simply unwind by the picturesque beaches, our accommodations provide the perfect base for your adventures. Immerse yourself in the rich culture and warm hospitality of Pangasinan, and book your stay with us today for an unforgettable experience.",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 30),
                    MaterialButton(
                      color: const Color.fromARGB(255, 184, 228, 249),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 20,
                        ),
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Lottie.network(
                "https://lottie.host/4209b2b3-5da9-4736-8793-f3cc94cbcee6/kDU3gkZmvT.json",
                height: 700,
                width: 700,
              ),
            ),
          ],
        ),
        Container(
          color: const Color.fromARGB(58, 182, 135, 4),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/capitol.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  height: 400,
                ),
              ),
              const SizedBox(width: 40),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/lingayen.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  height: 400,
                ),
              ),
              const SizedBox(width: 40),
            ],
          ),
        ),
        const SizedBox(height: 40,),
        Center(
          child: Container(
            color: const Color.fromARGB(255, 244, 228, 227),
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/hotel.png",height: 100,width: 100,),
                const Text(
                  "Hotel Reservation",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:40, right: 40 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "About Us",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/2.7,
                        child: const Text(
                          "Escape to Lingayen, Pangasinan, where comfort meets culture. Book your stay today and explore the charm of our historic town.",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/2.7,
                        child: const Text(
                          "Discover the beauty of Lingayen, Pangasinan, where every sunrise paints the sky with vibrant hues and every corner whispers tales of its rich heritage. Our hotels offer more than just a place to stay; they are gateways to unforgettable experiences and cherished memories",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Follow Us",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.facebook,color: Colors.blue,),
                        const SizedBox(width: 20,),
                        Icon(FontAwesomeIcons.youtube,color: Colors.red,),
                        const SizedBox(width: 20,),
                        Icon(FontAwesomeIcons.instagram,color: Color.fromARGB(230, 175, 134, 10),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
          child: Container(
            color: Colors.blueGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Copyright © 2024 Hotel Reservation All Rights Reserved",
                  style: TextStyle(color: Colors.black,),
                ),
                SizedBox(width: 10,),
                Text(
                  "Terms & Condition",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
