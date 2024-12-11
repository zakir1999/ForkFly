import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food/pages/home.dart';
import 'package:food/pages/order.dart';
import 'package:food/pages/profile.dart';
import 'package:food/pages/wallet.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
int currentTabIndex=0;
late List<Widget>pages;
late Widget currentPage;
late Home homepage;
late Wallet wallet;
late Profile profile;
late Order order;
@override
void initState(){
  homepage=Home();
  wallet=Wallet();
  profile=Profile();
  order=Order();
  pages=[homepage,order,wallet,profile];
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65.0,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index){
            setState(() {
              currentTabIndex=index;
            });
          },

          items: [
        Icon(Icons.home_outlined,color: Colors.white,),
        Icon(Icons.shopping_bag_outlined,color: Colors.white,),
        Icon(Icons.wallet_outlined,color: Colors.white,),
        Icon(Icons.person_outline,color: Colors.white,)
      ]),
      body: pages[currentTabIndex],
    );
  }
}
