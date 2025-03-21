import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gear/widgets/CustomItemDrawer.dart';
import 'package:gear/widgets/CustomTextField.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfFE9EBEA),
      appBar: AppBar(
        title: Text("Checkout Order"),
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
                    CustomItemDrawer(icon: Icons.home, label: "Home"),
                    CustomItemDrawer(icon: Icons.person, label: "My account"),
                    CustomItemDrawer(icon: Icons.shopping_cart, label: "My order"),
                    CustomItemDrawer(icon: Icons.settings, label: "Setting"),
                    CustomItemDrawer(icon: Icons.logout, label: "Log out"),
                  ],
                ),
              )
            ],
          )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Customer Information", style: TextStyle(fontSize: 20),),
                            CustomTextField(label: "Email", controller: TextEditingController()),
                            CustomTextField(label: "Full Name", controller: TextEditingController()),
                            Divider(thickness: 2,)
                          ],
                        )
                    ),
                    Container(
                        height: 250,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Delivery Information", style: TextStyle(fontSize: 20),),
                            CustomTextField(label: "Address", controller: TextEditingController()),
                            CustomTextField(label: "City", controller: TextEditingController()),
                            CustomTextField(label: "Country", controller: TextEditingController()),
                            CustomTextField(label: "Zip Code", controller: TextEditingController()),
                            Divider(thickness: 2,)
                          ],
                        )
                    ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Select a payment method", style: TextStyle(fontSize: 18, color: Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Container(
                        height: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order Summary", style: TextStyle(fontSize: 20),),
                            Divider(thickness: 2,),
                            Column(
                              children: [
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Expanded(child: Text("Subtotal", textAlign: TextAlign.center, style: TextStyle(fontSize: 15))),
                                    Expanded(child: Text("\$10", textAlign: TextAlign.center, style: TextStyle(fontSize: 15)))
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Expanded(child: Text("Delivery Fee", textAlign: TextAlign.center, style: TextStyle(fontSize: 17))),
                                    Expanded(child: Text("\$20", textAlign: TextAlign.center, style: TextStyle(fontSize: 17)))
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Place order", style: TextStyle(color: Colors.white, fontSize: 18)),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
