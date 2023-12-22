
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:vivia_mobile/pages/home_page.dart";
import "package:vivia_mobile/pages/mybasket_page.dart";
import "package:vivia_mobile/pages/order_accepted_page.dart";
import "package:vivia_mobile/pages/order_details_page.dart";




class MainScreen extends StatefulWidget {
  static const String routeName = '/actual-home';

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _widgetOptions = [
    const HomePage(),
   const OrderAcceptedPage() , 
    const MyBasketPage(),
     const OrderDetailsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        bottomNavigationBar: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 0,
            ),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).bottomAppBarColor),
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => _onItemTapped(0),
                  child: SvgPicture.asset(
                    'assets/icons/home.svg',
                    height: 24,
                    width: 24,
                    color: _currentIndex == 0
                        ? Colors.white
                        : const Color(0xff717171),
                  ),
                ),
                InkWell(
                  onTap: () => _onItemTapped(1),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    height: 24,
                    width: 24,
                    color: _currentIndex == 1
                        ? Colors.white
                        : const Color(0xff717171),
                  ),
                ),
                InkWell(
                  onTap: () => _onItemTapped(2),
                  child: SvgPicture.asset(
                    'assets/icons/document.svg',
                    height: 24,
                    width: 24,
                    color: _currentIndex == 2
                        ? Colors.white
                        : const Color(0xff717171),
                  ),
                ),
                InkWell(
                  onTap: () => _onItemTapped(3),
                  child: SvgPicture.asset(
                    'assets/icons/profile.svg',
                    height: 24,
                    width: 24,
                    color: _currentIndex == 3
                        ? Colors.white
                        : const Color(0xff717171),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: _widgetOptions.elementAt(_currentIndex),
        ));
  }
}
