
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:google_fonts/google_fonts.dart";
import "package:vivia_mobile/models/product.dart";


class ProductDetailsPage extends StatefulWidget {
    final Product product;

  const ProductDetailsPage({Key? key,  required this.product, }) : super(key: key); //required this.fastFood

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
 
 
  @override
  void initState() {
    super.initState();

  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerWidget(context),
            const SizedBox(
              height: 20,
            ),
           /*   Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        // 'Macchiato Short',
                        widget.product.name,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        //'\$5.00',
                        '\$${widget.product.price}',
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              color: const Color(0xFFFF9314),
                            ),
                      ),
                    ],
                  ),
                  Text(
                    // 'Macchiato Short',
                    widget.product.description,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 12,
                        ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Theme.of(context).dividerColor,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  /* Text(
                    'Sugar Level',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Normal',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                      Radio(
                        groupValue: false,
                        value: true,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Less Sugar ',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                      Radio(
                        groupValue: false,
                        value: true,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Theme.of(context).dividerColor,
                  ),*/
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Special Instructions',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        '  Optional',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 12,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 100,
                    child: CustomTextFieldWidget(
                      hintText: 'E.g No onions, please',
                      isPasswordField: false,
                      controller: _emailController,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            quantity--;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            borderRadius: BorderRadius.circular(10),
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
                              color: Color(0xFFFF9314),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          '$quantity',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColorLight,
                            borderRadius: BorderRadius.circular(10),
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
                              Icons.add,
                              color: Color(0xFFFF9314),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Rate The Product',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: myRating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: GlobalVariables.secondaryColor,
                    ),
                    onRatingUpdate: (rating) {
                      productDetailsServices.rateProduct(
                        context: context,
                        product: widget.product,
                        rating: rating,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ButtonWidget(
                    text: 'Add to Basket',
                    onTap:
                        addToCart, /*() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MyBasketPage(),
                        ),
                      );
                    },*/
                  )
                ],
              ),
            ),
          
*/


          ],
        ),
      ),
    );
  }

 
  Widget headerWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg"),
              /* AssetImage(
                  widget.fastFood.avatar),*/ //'assets/images/shop.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
               
                "title ",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/location.svg',
                    height: 16,
                    color: Colors.white,
                  ),
                  SizedBox(width: 2),
                  Text(
                    // widget.fastFood.distance,
                    '1.2 Km',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 7),
                  Container(
                    height: 4,
                    width: 4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  SizedBox(width: 10),
                  SvgPicture.asset(
                    'assets/icons/star.svg',
                    height: 16,
                  ),
                  SizedBox(width: 2),
                  Text(
                    '4.6 (342)',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/bike.svg',
                    height: 16,
                    color: Colors.white,
                  ),
                  SizedBox(width: 2),
                  Text(
                    '\$5.00',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 4,
                    width: 4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  SizedBox(width: 10),
                  SvgPicture.asset(
                    'assets/icons/time.svg',
                    height: 16,
                  ),
                  SizedBox(width: 2),
                  Text(
                   '10.00 AM - 12.00 PM',
                    //'10.00 AM - 12.00 PM',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
       /* Positioned(
          right: 15,
          top: 40,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
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
       */
        Positioned(
          top: 40,
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
}
