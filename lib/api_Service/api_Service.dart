
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vivia_mobile/config/error_handling.dart';
import 'package:vivia_mobile/config/utils.dart';
import 'package:vivia_mobile/models/product.dart';

class APIService{
  Future<List<Product>> fetchProduct({required BuildContext context
      // required String category,
      }) async {
        final uri ="https://fakestoreapi.com/products?fbclid=IwAR2yLhmTope8nYxciVO-UbIseDMTjZMoL_4kXLUUcpQfu3GJLv3NWNvfGBs" ;
    List<Product> ProduitsList = [];
    try {
      http.Response res = await http
          //.get(Uri.parse('$uri/api/products?category=$category'), headers: {
          .get(Uri.parse(uri), headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        //'x-auth-token': userProvider.user.token,
      });

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          for (int i = 0; i < jsonDecode(res.body).length; i++) {
            ProduitsList.add(
              Product.fromJson(
                jsonEncode(
                  jsonDecode(res.body)[i],
                ),
              ),
            );
          }
          // showSnackBar(context, "produit list have data ");
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
    return ProduitsList;
  }

  Future getData() async{
    dynamic body;
    print("appel api ................");
    try{
      var url = Uri.parse("https://fakestoreapi.com/products?fbclid=IwAR2yLhmTope8nYxciVO-UbIseDMTjZMoL_4kXLUUcpQfu3GJLv3NWNvfGBs") ;
      print(url);
      var response = await http.get(url);
      if(response.statusCode==200){
        body=response.body;
        print("response recu=....\n");
        print(body);
        return body;
      }
    }catch (error) {
     // log(error.toString() as num) ; 
      print(error.toString());

  }
  }
}