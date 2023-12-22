
import "package:flutter/material.dart";

import "package:flutter_svg/svg.dart";
import "package:vivia_mobile/config/utils.dart";
import "package:vivia_mobile/pages/main_page.dart";
import "package:vivia_mobile/pages/order_accepted_page.dart";
import "package:vivia_mobile/pages/recept.dart";


class OrderDetailsPage extends StatefulWidget {
  //static const String routeName = '/actual-home';

  const OrderDetailsPage({super.key});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {


  String addressToBeUsed = "";


  @override
  void initState() {
    super.initState();
   
  }

  @override
  void dispose() {
    super.dispose();
    /*flatBuildingController.dispose();
    areaController.dispose();
    pincodeController.dispose();
    cityController.dispose();*/
  }

 @override
  Widget build(BuildContext context) {
 
  
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("SHIPMENT "),
        centerTitle: true,
      ), 
      bottomNavigationBar: InkWell(
        onTap: () {
        /*  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>  ReceptePage(),
      ),
    ); */
          //showSnackBar(context, " place order ") ; 
          },
        child:   Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Theme.of(context).primaryColorLight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  
                      Text(
                       "TOTAL PAYMENT :  \n  \$178.15" , 
                        style: Theme.of(context).textTheme.headline3,
                      ),
                       
                    
                 GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) =>  const ReceptePage(),
                        ),
                      );
                    },
                    child: Container(
                       width: 150 , //double.infinity,
          height: 50 , 
          margin:  const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'CHECKOUT',
                          style: Theme.of(context).textTheme.button,
                         // style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*Container(
          width: double.infinity,
          height: 60,
          margin:  const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Text(
              'CHECKOUT',
              style: Theme.of(context).textTheme.button,
            ),
            ] , 
          ),
        ),*/
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          /*  headerWidget(context),
            const SizedBox(
              height: 10,
            ),*/
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                  
                       const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'SHIPMENT LOCATION ',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  Text(
                    'CHANGE LOGATION',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
              Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Theme.of(context).primaryColorLight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                   'STUDIO',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                 /* GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) =>  const MainScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Add Items',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),*/
                ],
              ),
            ),
            
              Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Theme.of(context).primaryColorLight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   
                  Text(
                    ' Chrifa Bahrouni (+21699828278  , ... \n Perumation Smart Sulyan no 74 75 , Jalan sejahtera...)',
                   
                    style: Theme.of(context).textTheme.headline3,
                  ),
                 /* GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) =>  const MainScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Add Items',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),*/
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
                       Padding(
                        padding:
                           const  EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                        child: SvgPicture.asset(
                          'assets/icons/shipment.svg',
                          height: 30,
                            color:  Colors.black , 
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SHIPMENT',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                         
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                       print(' adresse add..') ; 
                     /* Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) =>   const AddressSetupPage(),
                        ),
                      );*/
                    },
                    child: SvgPicture.asset(
                      'assets/icons/next.svg',
                      height: 30,
                      color: const Color(0xFFA8A8A8),
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
                       Padding(
                        padding:
                           const  EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                        child: SvgPicture.asset(
                          'assets/icons/payment.svg',
                          height: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PAYEMENT ',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                         
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                       print(' adresse add..') ; 
                     /* Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) =>   const AddressSetupPage(),
                        ),
                      );*/
                    },
                    child: SvgPicture.asset(
                      'assets/icons/next.svg',
                      height: 30,
                      color: const Color(0xFFA8A8A8),
                    ),
                  ),
                ],
              ),
            ),
            
          Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Theme.of(context).primaryColorLight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'PRODUCTS',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                 /* GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) =>  const MainScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Add Items',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),*/
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  //for (final productCart in user.cart ?? [])
                    // tileWidget(productCart['product'], productCart['quantity']),
                    //tileWidget(Product.fromMap(productCart['product']),
                       // productCart['quantity']),
                     
                            tileWidget(
              context,
              'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
              'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
                '109.95',
              'L',
            
              '11'
              
            ), 

            tileWidget(
              context,
              'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
              'Mens Casual Premium Slim Fit T-Shirts', '22.3', 
              'M',
             '1'
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
                       Padding(
                        padding:
                           const  EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                        child: SvgPicture.asset(
                          'assets/icons/ticket.svg',
                          height: 30,
                            color:  Colors.black , 
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'USE YOURS PROMO CODE ',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                         
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                       print(' adresse add..') ; 
                     /* Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) =>   const AddressSetupPage(),
                        ),
                      );*/
                    },
                    child: SvgPicture.asset(
                      'assets/icons/next.svg',
                      height: 30,
                      color: const Color(0xFFA8A8A8),
                    ),
                  ),
                ],
              ),
            ),
            
             const  SizedBox(
              height: 10,
            ),
           ],
        ),
      ),
    );
  }


  Widget headerWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 90,
        ),
        Positioned(
          right: 0,
          top: 50,
          left: 0,
          child: Column(
            children: [
              Text(
                '',
                style: Theme.of(context).textTheme.headline3,
              ),
              /*Text(
                'Distance from you: 1.2 km',
                style: Theme.of(context).textTheme.headline6,
              ),*/
            ],
          ),
        ),
        Positioned(
          top: 55,
          left: 15,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                margin: const EdgeInsets.all(8),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

   Widget tileWidget(BuildContext context, String image, String title,
      String price, String size , String qt) {
    return Container(
      padding: const EdgeInsets.all(13),
      width: double.infinity,
      child: Column(
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           
                        Row(
      children: [
        Checkbox(value: true, onChanged: (value){} ,checkColor: Colors.white, activeColor: Colors.black,),
        
      ],
    ) , 
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                       Text(
                        "\$"+price,
                        
                        style: Theme.of(context).textTheme.headline3,
                      ), 
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Container(
                height:  MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.height * 0.2, 
                child : 
                       Text(
                        title,
                        
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 14,
                        ),
                      ),
                       ) ,  
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     InkWell(
                        onTap: () {
                          setState(() {
                           // quantity++;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black  , //Theme.of(context).primaryColorLight,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color:  Colors.black  ,  // Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            child: const Icon(
                              Icons.add,
                              color:
                              Colors.white 
                              
                              // Color(0xFFFF9314),
                            ),
                          ),
                        ),
                      ),
                      
                     Container(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          //'10' , 
                          qt,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                     InkWell(
                        onTap: () {
                          setState(() {
                            //quantity--;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            child: const Icon(
                              Icons.minimize,
                              color: Colors.black , //Color(0xFFFF9314),
                            ),
                          ),
                        ),
                      ),
                     
                     Text("Size : " , 
                       style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 10,
                        ),
                     ) , 
                   
                        Text(
                    size,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 10,
                        ),
                  ), 
                     ],
                  ),
                   
                  /*const SizedBox(
                    height: 05,
                  ),
                 */
                ],
              ),
              const Spacer(),
              /*Text(
                'Edit',
                style: Theme.of(context).textTheme.headline5,
              ),*/
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Theme.of(context).dividerColor,
            height: 2,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
