import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xfFE9EBEA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(CupertinoIcons.search),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Container(
              width: 410,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color(0xfFE9EBEA),
                image: DecorationImage(
                  image: AssetImage("assets/images/laptop9.jpg"),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0),
            child: Container(
              width: 410,
              height: 230,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.black),
                          Icon(Icons.star, color: Colors.black),
                          Icon(Icons.star, color: Colors.black),
                          Icon(Icons.star, color: Colors.black),
                          Icon(Icons.star, color: Colors.black),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text("\$10", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                      )
                    ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Nitro 5 AN515-52-70TD", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(CupertinoIcons.minus, color: Colors.white, size: 20,),
                                Text("1", style: TextStyle(color: Colors.white, fontSize: 16),),
                                Icon(CupertinoIcons.plus, color: Colors.white, size: 20),
                              ],
                            ),
                          )
                        )
                      ]
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text("The Nitro 5 AN515-52-70TD is a high-performance gaming laptop designed to deliver an immersive gaming experience. "
                        "It features a sleek and aggressive design, "
                        "paired with powerful hardware specifications "
                        "to meet the demands of modern gaming.", style: TextStyle(fontSize: 15),),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Time", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Icon(Icons.access_time_outlined, size: 25,),
                              ),
                              Text("7 days", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)
                            ],
                          ),
                        )
                      ]
                  ),
                  Divider(thickness: 2,),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 13.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total: \$10", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(CupertinoIcons.shopping_cart, color: Colors.white, size: 25,),
                          Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 18),),
                        ],
                      ),
                    )
                  )
                ]
            ),
          ),
        ],
      ),
    );
  }
}
