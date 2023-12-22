import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:vivia_mobile/config/utils.dart";
import "package:vivia_mobile/pages/order_accepted_page.dart";
import "package:vivia_mobile/pages/order_details_page.dart";

class ReceptePage extends StatefulWidget {
  // final int index;
  const ReceptePage({
    Key? key,
    //  required this.index,
  }) : super(key: key);

  @override
  State<ReceptePage> createState() => _ReceptePageState();
}

class _ReceptePageState extends State<ReceptePage> {
 
 

  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const OrderAcceptedPage(),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
          decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).primaryColorLight,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const SizedBox(
                  width: 60,
                ),
                Text(
                  'PAY NOW ',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                ),
                const  SizedBox(
                  width: 30,
                ),
               ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("RECEPT "),
        centerTitle: true,
      ), 
      body: 
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/order_success.svg',
              ),
             
            ],
          ),
                 Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SUBTOTAL : ',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color:  Colors.black , //const Color(0xFFFF9314),
                        ),
                  ),
                  Text(
                     '\$300.15',
                    //'\DT $sum ',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color:Colors.black ,  //const Color(0xFFFF9314),
                        ),
                  ),
                ],
              ),
            ),
          
               Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SHIPMENT SERVICE',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color:  Colors.black , //const Color(0xFFFF9314),
                        ),
                  ),
                  Text(
                     '\$02.15',
                    //'\DT $sum ',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color:Colors.black ,  //const Color(0xFFFF9314),
                        ),
                  ),
                ],
              ),
            ),
          
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                    /*  Padding(
                         padding:
                           const  EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                        child: SvgPicture.asset(
                          'assets/icons/bike.svg',
                          height: 30,
                          color: const Color(0xFFFF9314),
                        ),
                      ),*/
                       const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'DISCOUNT  : ',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  Text(
                     '\$20.15',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                color: Theme.of(context).dividerColor,
                height: 1,
                width: double.infinity,
              ),
            ),
            /*  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'DISCOUNT  : ',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color:  Colors.black , //const Color(0xFFFF9314),
                        ),
                  ),
                  Text(
                     '\$20.15',
                   
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color: const Color(0xFFFF9314),
                        ),
                  ),
                ],
              ),
            ),
          */
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TOTAL PAYMENT ',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          color:  Colors.black , //const Color(0xFFFF9314),
                        ),
                  ),
                  Text(
                     '\$178.15',
                    //'\DT $sum ',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          color:Colors.black ,  //const Color(0xFFFF9314),
                        ),
                  ),
                ],
              ),
            ),
          
           ],
        ),
    
       );
  }

}
