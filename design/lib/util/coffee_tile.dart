import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {

  final String coffeeImagePath;
  final String coffeeName;
  final String coffePrice;

  CoffeeTile({required this.coffeeImagePath, 
              required this.coffeeName,
              required this.coffePrice,});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 25.0,bottom: 25.0),
            child: Container(
            padding: EdgeInsets.all(20),
            width: 200,          
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black54,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // image of coffee
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(coffeeImagePath),
                  ),
                  // coffee name
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                        coffeeName,
                        style: TextStyle(fontSize: 20),),

                        SizedBox(
                          height: 4,
                        ),

                        Text(
                        'With Almond Milk',
                        style: TextStyle(color:Colors.grey[700]),),
                      ],
                    ),
                  ),
                  
                  // price
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('\$'+ coffePrice),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(color: Colors.orange,
                        borderRadius: BorderRadius.circular(6)),
                        child: Icon( Icons.add)),
                    ],),
                  )
                
                ],
              ),
           ),
         );
  }
}