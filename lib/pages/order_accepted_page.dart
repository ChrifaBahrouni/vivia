
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:vivia_mobile/pages/main_page.dart";


class OrderAcceptedPage extends StatefulWidget {
  static const String routeName = '/order-accepted';
  const OrderAcceptedPage({super.key});

  @override
  State<OrderAcceptedPage> createState() => _OrderAcceptedPageState();
}

class _OrderAcceptedPageState extends State<OrderAcceptedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/order_success.svg',
              ),
              const SizedBox(
                width: 35,
              ),
            ],
          ),
          Text(
            'PAYMENT SUCCESS' , 
           // 'Your Order has been \n accepted',
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
          Text(
            'Your items  will arrive at your adress \n according to the delivery data ',
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const MainScreen() , //TrackPage(),
              ));
            },
            child: Container(
              width: double.infinity,
              height: 60,
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'BACK TO SHOP ',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const MainScreen(),
              ));
            },
            child: Container(
              width: double.infinity,
              height: 60,
              margin: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'TRANSACTION DETAILS',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
