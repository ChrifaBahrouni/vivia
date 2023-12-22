

import 'dart:convert';

class Product {
  String image ; 
  String  category ; 
  String  title; 
   String? description;
   int price ; 
   int? id;
  get getDescription => this.description;

 set setDescription( description) => this.description = description;

  get getId => this.id;

 set setId( id) => this.id = id;

  Rating? rating ;
    get geTitle => this.title;

  set setTitle(title) => this.title = title;

  Product copyWith({
    String? title,
    String? image,
    String? description,
    int? id,
    int? price,
    String? category,
  }) {
    return Product(
      title: title ?? this.title,
      category: category ?? this.category,
      description: description ?? this.description,
      price: price ?? this.price,
      image: image ?? this.image,
      id: id ?? this.id,
       //rating: null,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'id': id,
      'description': description,
      'price': price,
      'image': image,
      'category': category,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'] as String,
      category: map['category'] as String,
      description: map['description'] as String,
         image: map['image'] as String,
      id: map['id'] as int,
      price: map['price'] as int,
      // rating: null ,
   
    );
  } 

Product({
     this.title="",
     this.image="",
     this.description="",
     this.id=1,
     this.category="",
     this.price=0,
  }); 

 /* Product({required this.image, 
  required this.category, required this.title,
   required this.description, required this.price,
  
    required this.id,
     required this.rating});*/


  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

}
class Rating {
   final int?  rate , count ;

  Rating(this.rate, this.count); 
   

}