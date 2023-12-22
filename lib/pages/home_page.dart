


import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import 'dart:convert';

import "package:vivia_mobile/api_Service/api_Service.dart";
import "package:vivia_mobile/models/product.dart";
import "package:vivia_mobile/widgets/product_card.dart";



class HomePage extends StatefulWidget {
  static const String routeName = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
   dynamic res;
    Product m = Product();
      //List<Product>?
      final  produitsList =[
    {
        "id": 1,
        "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        "price": 109.95,
        "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
        "category": "men's clothing",
        "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
        "rating": {
            "rate": 3.9,
            "count": 120
        }
    },
    {
        "id": 2,
        "title": "Mens Casual Premium Slim Fit T-Shirts ",
        "price": 22.3,
        "description": "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",
        "category": "men's clothing",
        "image": "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
        "rating": {
            "rate": 4.1,
            "count": 259
        }
    }, ] ; 
  bool loading = false; 

   void fetchproduits() async {
   // produitsList = await APIService().fetchProduct(context: context);
    setState(() {});
  } 
 /* Future _getData() async {
    //_userModel = (await ApiService().getinfoVille())!;
  
    var response = await APIService().getData(); 
    final parsedJson = jsonDecode(response);

    Map<String, dynamic> meteodata = {
      "title": parsedJson['title'],
    "image": parsedJson['image'],
      "description": parsedJson['description'],
      "price": parsedJson['price'] , 
      "id": parsedJson['id'],
      "category": parsedJson['category'],
    };
    setState(() {
      m = Product.fromMap(meteodata);
      loading = false;
      print( "data " ) ; 
    });
    return m;
  } 
  */
  Future _getData() async {
    var response = await APIService().getData();
    try {
      final parsedJson = jsonDecode(response);
      Map<String, dynamic> meteodata = {
        "title": parsedJson['title'],
        "image": parsedJson['image'],
        // Ajoutez d'autres champs ici
      };
      setState(() {
        m = Product.fromMap(meteodata);
        loading = false;
        print("data ");
      });
      return m;
    } catch (e) {
      print("Erreur lors du décodage JSON: $e");
      // Gérer l'erreur de décodage JSON ici
      setState(() {
        loading = false;
      });
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    _getData() ; 
    fetchproduits() ; 
   
  }

   

 
 /* void navigateToDetailsShop(FastFood fastFood) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ShopDetailsPage(fastFood: fastFood),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const  EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorLight,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            'assets/icons/scan.svg',
                            height: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                     
                    ],
                  ),
                  Row (children: [ tagWidget(context, 'MAN ' , true ),
                  tagWidget(context, 'WOMAN' , false  ) ],) , 
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorLight,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            'assets/icons/search.svg',
                            height: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    
                    ],
                  ),
                 ],
              ),
              // publicites
           
             /* Image.asset(
                'assets/images/Banner.png',
              ),*/
                  Positioned(
          right: 0,
          bottom: 0,
          left: 0,
          child: Container(
           height:  MediaQuery.of(context).size.height * 0.2, 
            margin: const EdgeInsets.all(4),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage( 'assets/images/Banner.png',)),
              color: Theme.of(context).brightness == Brightness.light
                  ?  Color.fromARGB(0, 0, 134, 78)//(0xFF1D2839) //const Color(0xFF321D0B)
                  : const Color(0xFFFF9314),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'GRACE YOURSELE! \n GET YOURS! ',
                      style: Theme.of(context).textTheme.headline3!.copyWith(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                    ),
                    
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                    
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFFE5E37),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'SHOP NOW ',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
       
             


           
               SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tagWidget(context, 'NEW IN' ,true ),
                  tagWidget(context, 'CLOTHING' , false  ),
                  tagWidget(context, 'NEW IN ' , false ),
                  tagWidget(context, 'BOSS  & ..' , false ),
                ],
              ),
            ), 
             SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (final prod in produitsList ?? [])
                      ProductCardWidget(
                        product: prod,
                      ),
                      //ProductCardWidget(context , p ) , 
                      afficherdata(m , loading), 
               
                      
                  ],
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }



  Widget categoryButton(BuildContext context, String image, String title) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 70,
      // width: 70,
      margin: const EdgeInsets.all(10),
      /* decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(20),
      ),*/
      // child: Image.asset(asset),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                image,
                // GlobalVariables.categoryImages[index]['image']!,
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              ),
            ),
          ),
          Text(
            title,
            //global_variables.categoryImages[index]['title']!,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
  

}
 /*  Widget  ProductCardWidget( BuildContext context, {required product}  ) {
     return InkWell(
      onTap: () {
       /* Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => ProductDetailsPage(product: product)),
        );*/
      },
      child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width / 2.3,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColorLight,
          ),
          child: Stack(
            children: [
              Stack(
                children: [
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.light
                            ? const Color(0xFF5EB7BF) //const Color(0xFF321D0B)
                            : const Color(0xFFFF9314),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: SvgPicture.asset(
                          'assets/icons/basket.svg',
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(p.image),
                            /* AssetImage(
                              product.image ,
                            ),*/
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.all(13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              p.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              //(product.price ) as String,
                              '\$${p.price}',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: const Color(0xFFFF9314),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      'assets/icons/heart.svg',
                      height: 20,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );

   }
*/
 Widget tagWidget(BuildContext context, String title ,  bool  active  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
      
        color: active == false ? Theme.of(context).primaryColorLight: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
 
 Widget afficherdata(m, loading ) { 
 
    return loading == true
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Ville:${m.getDescription}"),
              //Text("Températue :${m.getTemp}"),
            
              Divider(
                height: 10,
                color: Colors.black,
              ),
              //Text(res.coord.long),
            ],
          );
  } 