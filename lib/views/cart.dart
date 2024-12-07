import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gear/views/order.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfFE9EBEA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Cart"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Icon(CupertinoIcons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Builder(
            builder: (context) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text("Order List", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),)
                      ],
                    ),
                  ),
                  Container(
                    width: 370,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:AssetImage("assets/images/laptop10.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Frog Zphyrus", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                              Text("Laptop is high quality"),
                              Text("\$10", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),),
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          color: Colors.black,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(CupertinoIcons.minus, color: Colors.white, size: 20,),
                                Text("1", style: TextStyle(color: Colors.white, fontSize: 20),),
                                Icon(CupertinoIcons.minus, color: Colors.white, size: 20,),
                              ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    width: 370,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:AssetImage("assets/images/laptop10.jpg"),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Frog Zphyrus", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                              Text("Laptop is high quality"),
                              Text("\$10", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),),
                            ],
                          ),
                        ),
                        Container(
                          width: 60,
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(CupertinoIcons.minus, color: Colors.white, size: 20,),
                              Text("1", style: TextStyle(color: Colors.white, fontSize: 20),),
                              Icon(CupertinoIcons.minus, color: Colors.white, size: 20,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    width: 320,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text("Items:", style: TextStyle(fontSize: 15),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text("\$10", style: TextStyle(fontSize: 15),),
                            ),
                          ],
                        ),
                        Divider(thickness: 2,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text("Items:", style: TextStyle(fontSize: 15),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text("\$10", style: TextStyle(fontSize: 15),),
                            ),
                          ],
                        ),
                        Divider(thickness: 2,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text("Items:", style: TextStyle(fontSize: 15),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text("\$10", style: TextStyle(fontSize: 15),),
                            ),
                          ],
                        ),
                        Divider(thickness: 2,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text("Items:", style: TextStyle(fontSize: 15),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text("\$10", style: TextStyle(fontSize: 15),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              Text("Total:  ", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                              Text("\$80", style: TextStyle(fontSize: 20),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.black,
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => OrderPage() ));
                                },
                                child: Center(child: Text("Order Now", style: TextStyle(color:Colors.white,fontSize: 13)))),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
            }
        ),
      ),
    );
  }
}
