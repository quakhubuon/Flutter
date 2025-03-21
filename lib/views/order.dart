import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfFE9EBEA),
      appBar: AppBar(
        title: Text("Order Review"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
        child: Icon(CupertinoIcons.search),
          )
        ],
      ),
      drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: 310,
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.grey
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("assets/images/avatar.jpg",),

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text("Trần Tường Minh", style: TextStyle(color: Colors.white, fontSize: 17),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text("tranminh2014.tm@gmail.com", style: TextStyle(color: Colors.white, fontSize: 17),),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        children: [
                          Icon(Icons.home, size: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text("Home", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        children: [
                          Icon(Icons.person, size: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text("My Account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        children: [
                          Icon(Icons.shopping_cart, size: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text("My Orders", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        children: [
                          Icon(Icons.favorite, size: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text("My Wish ist", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        children: [
                          Icon(Icons.settings, size: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text("Settings", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Row(
                        children: [
                          Icon(Icons.logout, size: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text("Log Out", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text("Order Summary", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),)
                ],
              ),
            ),
            Container(
              width: 370,
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black)
                            ),
                            child: Center(child: Text("1")),
                          ),
                          SizedBox(width: 20,),
                          Text("Product name", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),),

                        ],
                      ),
                      Text("x1", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),),
                      Text("\$10", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17))
                    ],
                  ),
                  Divider(thickness: 2,)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 370,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Order", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),)
                        ],
                      ),
                      Text("\$10", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Delivery", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),)
                        ],
                      ),
                      Text("\$10", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17))
                    ],
                  ),
                  Divider(thickness: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Total", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                        ],
                      ),
                      Text("\$10", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 370,
              height: 250,
              child: Column(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text("Information", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Full Name",
                      border: OutlineInputBorder(

                      )
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Phone",
                        border: OutlineInputBorder(

                        )
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Address",
                        border: OutlineInputBorder(

                        )
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 370,
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text("Payment", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Cash On Delivery", style: TextStyle(fontSize: 17),)
                        ],
                      ),
                      Text("Change", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 370,
              height: 50,
              color: Colors.black,
              child: Center(child: Text("Order", style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
