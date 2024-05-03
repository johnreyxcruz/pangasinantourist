
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({Key? key});

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
                    const SizedBox(height: 40,),
                    const Text(
                      "Book Your Stay",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      child: SizedBox(
                        child: Text(
                          "Experience the charm and comfort of Lingayen, Pangasinan, at our selection of hotels, where modern amenities meet traditional hospitality. Nestled amidst the breathtaking landscapes of Pangasinan, our hotels offer a serene retreat for both leisure and business travelers alike. Whether you're here to explore the historic landmarks, indulge in delectable local cuisine, or simply unwind by the picturesque beaches, our accommodations provide the perfect base for your adventures. Immerse yourself in the rich culture and warm hospitality of Pangasinan, and book your stay with us today for an unforgettable experience.",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
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
                Lottie.network(
                "https://lottie.host/4209b2b3-5da9-4736-8793-f3cc94cbcee6/kDU3gkZmvT.json",
                height: 700,
                width: 700,
              ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
