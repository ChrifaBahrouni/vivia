import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:vivia_mobile/pages/order_details_page.dart";

class MyBasketPage extends StatefulWidget {
  // final int index;
  const MyBasketPage({
    Key? key,
    //  required this.index,
  }) : super(key: key);

  @override
  State<MyBasketPage> createState() => _MyBasketPageState();
}

class _MyBasketPageState extends State<MyBasketPage> {
 
 

  

  @override
  Widget build(BuildContext context) {
   // final user = context.watch<UserProvider>().user;
    int sum = 0;
   

    /*int sum = 0;
  

    user.cart.forEach((cartItem) {
      int quantity = cartItem['quantity'];
      int price = cartItem['product']['price'];
      print("sum ${sum}");
      sum += quantity * price;
    });
 */
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text("BAGS "),
        centerTitle: true,
      ), 
      bottomNavigationBar: InkWell(
        onTap: () {
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
                          builder: (context) =>  const OrderDetailsPage(),
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
        ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            
           
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
                         // 'assets/icons/ticket.svg',
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
