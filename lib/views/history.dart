import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gear/widgets/CustomItemDrawer.dart';

class HistoryOrder extends StatelessWidget {

  const HistoryOrder({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> orders = [
      {"order_id": "#100007", "status": "pending"},
      {"order_id": "#100006", "status": "pending"},
      {"order_id": "#100005", "status": "pending"},
      {"order_id": "#100004", "status": "pending"},
      {"order_id": "#100003", "status": "pending"},
    ];
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
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order ID: ${orders[index]['order_id']}",
                    style: TextStyle(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "Pending",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Track Order", style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
