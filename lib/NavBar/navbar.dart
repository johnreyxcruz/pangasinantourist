import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1280) {
          return const DesktopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
          return const DesktopNavBar();
        } else {
          return const MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Hotel Reservation",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              const InkWell(
                child: Text (
                  "Home",style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(width: 30,),
              const InkWell(
                child: Text (
                  "Hotels",style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(width: 30,),
              const InkWell(
                child: Text (
                  "Contact",style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(width: 30,),
              const InkWell(
                child: Text (
                  "About Us",style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(width: 30,),
              MaterialButton(color: Colors.blue, shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20,),),),
              onPressed: (){},
              child: const Text("Sign Up",style: TextStyle(color: Colors.black,),),)
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
        children: [
          Text(
            "Hotel Reservation",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                
                child: Text (
                  "Home",style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: 30,),
              InkWell(
                child: Text (
                  "Features",style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: 30,),
              InkWell(
                child: Text (
                  "Hotels",style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: 30,),
              InkWell(
                child: Text (
                  "About Us",style: TextStyle(color: Colors.black),
                ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}