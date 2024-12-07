import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gear/views/cart.dart';
import 'package:gear/views/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfFE9EBEA),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage() ));
        },
        shape: CircleBorder(),
        backgroundColor: Colors.white,
        child: Badge(
            label: Text("1"),
            child: Icon(Icons.shopping_cart, size: 30,)
        ),
      ),
      appBar: AppBar(
        title: Text("Technology Shop"),
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
        child: Builder(
          builder: (context) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Container(
                    width: 360,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("assets/images/Banner.jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 30),
                  child: Row(
                    children: [
                      Text("Category", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/laptop.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/pc.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/smartphone.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/mouse2.jpg"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/keyboard.png"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 30),
                  child: Row(
                    children: [
                      Text("Popular", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 150,
                                  height: 220,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 150,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/laptop5.jpg"),
                                              fit: BoxFit.cover
                                          )
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text("Laptop Acer Aspire", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text("Laptop"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("\$10", style: TextStyle(fontWeight: FontWeight.w700),),
                                            InkWell(
                                                onTap: () {
                                                  print("print child");
                                                },
                                                child: Icon(Icons.favorite)
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            children: [
                              Container(
                                width: 150,
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/mouse1.jpg"),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("White Mouse", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("Mouse"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("\$10", style: TextStyle(fontWeight: FontWeight.w700),),
                                          Icon(Icons.favorite)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            children: [
                              Container(
                                width: 150,
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/pc2.jpg"),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("Titan M", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("PC"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("\$10", style: TextStyle(fontWeight: FontWeight.w700),),
                                          Icon(Icons.favorite)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            children: [
                              Container(
                                width: 150,
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/pc4.jpg"),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("Athen M", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("PC"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("\$10", style: TextStyle(fontWeight: FontWeight.w700),),
                                          Icon(Icons.favorite)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Column(
                            children: [
                              Container(
                                width: 150,
                                height: 220,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 150,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/images/laptop8.jpg"),
                                              fit: BoxFit.cover
                                          )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("Laptop Axus X515EA Ej058T", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text("Laptop"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("\$10", style: TextStyle(fontWeight: FontWeight.w700),),
                                          Icon(Icons.favorite)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 30),
                  child: Row(
                    children: [
                      Text("Newest", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20),
                        child: Column(
                          children: [
                            Container(
                              width: 370,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/laptop7.jpg"),
                                          fit: BoxFit.cover,
                                      )
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Predator Triton", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                                          Text("High quality Laptop, We provide our great products", style: TextStyle(fontSize: 14),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                            ],
                                          ),
                                          Text("\$10", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Icon(Icons.favorite),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0),
                                          child: Icon(Icons.shopping_cart),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20),
                        child: Column(
                          children: [
                            Container(
                              width: 370,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/laptop8.jpg"),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Asus X515EA", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                                          Text("High quality Laptop, We provide our great products", style: TextStyle(fontSize: 14),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                            ],
                                          ),
                                          Text("\$10", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Icon(Icons.favorite),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0),
                                          child: Icon(Icons.shopping_cart),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20),
                        child: Column(
                          children: [
                            Container(
                              width: 370,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/laptop9.jpg"),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Nitro 5AN5", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                                          Text("High quality Laptop, We provide our great products", style: TextStyle(fontSize: 14),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star_half, color: Colors.black),
                                            ],
                                          ),
                                          Text("\$10", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Icon(Icons.favorite),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0),
                                          child: Icon(Icons.shopping_cart),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20),
                        child: Column(
                          children: [
                            Container(
                              width: 370,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/mouse8.jpg"),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Red Mouse", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                                          Text("High quality Laptop, We provide our great products", style: TextStyle(fontSize: 14),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                            ],
                                          ),
                                          Text("\$10", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Icon(Icons.favorite),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0),
                                          child: Icon(Icons.shopping_cart),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 20),
                        child: Column(
                          children: [
                            Container(
                              width: 370,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 150,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("assets/images/laptop12.jpg"),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("HP Pavilion", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                                          Text("High quality Laptop, We provide our great products", style: TextStyle(fontSize: 14),),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star, color: Colors.black),
                                              Icon(Icons.star_half, color: Colors.black),
                                            ],
                                          ),
                                          Text("\$10", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Icon(Icons.favorite),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8.0),
                                          child: Icon(Icons.shopping_cart),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
