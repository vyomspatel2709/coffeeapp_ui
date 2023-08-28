import 'package:design/util/coffee_tile.dart';
import 'package:design/util/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of coffee type

  final List coffee_type =[
    ['Cappucino',true],
    ['Latte',false],
    ['Black',false],
    ['Tea',false],];

  // user tapped on coffee types
  void coffeeTypeSelected(int index){
      setState(() {
        // this for loop makes every selection false
        for(int i=0; i<coffee_type.length;i++){
          coffee_type[i][1]=false;
        }
        coffee_type[index][1]=true;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [Padding(
          padding: const EdgeInsets.only(right:20.0),
          child: Icon(Icons.person),
        )],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label:'',
            ),
            BottomNavigationBarItem(
            icon:Icon(Icons.favorite),
            label:'',
            ),
            BottomNavigationBarItem(
            icon:Icon(Icons.notifications),
            label:'',
            )
        ]
      ),
      body: Column(
        // find the best coffee for you
              children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25.0),
                    child: Text("Find the best coffee for you",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 56,
                    ),
                    ),
                  ),
                  SizedBox(height:25),

                  // search bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(decoration: InputDecoration(
                      prefixIcon:Icon(Icons.search),
                      hintText: 'Find your coffee...',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600),
                      )
                    ),),
                  ),

                  SizedBox(height: 25),

                  // horizontal listview of coffee types
                  Container(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: coffee_type.length,
                      itemBuilder: (context,index){
                        return CoffeeType(
                          coffeetype: coffee_type[index][0],
                          isSelected: coffee_type[index][1], 
                          onTap:(){ 
                            coffeeTypeSelected(index);
                            });
                      },
                    ),
                  ),

                  // horizontal listview of coffee tile

                  Expanded(child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CoffeeTile(
                        coffeeImagePath: 'assets/images/coffee_latte.jpg',
                        coffeeName: 'Latte',
                        coffePrice: '4.20',
                      ),
                      CoffeeTile(
                        coffeeImagePath: 'assets/images/cappucino.jfif',
                        coffeeName: 'Cappucino',
                        coffePrice: '5.50',
                      ),
                      CoffeeTile(
                        coffeeImagePath: 'assets/images/milk.jfif',
                        coffeeName: 'Milk Coffee Thing',
                        coffePrice: '4.70',
                      ),
                    ],
                    )
                   )
              ],
      )
    );
  }
}