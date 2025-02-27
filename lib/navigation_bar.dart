import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_prof4/auth/presentation/widget/auth_screen.dart';
import 'package:project_prof4/shop/presentation/widget/favorites_screen.dart';
import 'package:project_prof4/shop/presentation/widget/shop_screen.dart';
import 'package:project_prof4/shop/presentation/widget/shopping_card.dart';



// prof4 10:51 27.02
// панель навигации
class NavigationBarS extends StatefulWidget {
  const NavigationBarS({super.key});

  @override
  State<NavigationBarS> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarS> {

  final List pages = [
    ShopScreen(),
    FavoriteSreen(),
    Z3(),
    AuthScreen()


  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(backgroundColor: Colors.blue,onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context) => ShoppingCard(),));
    },child: SvgPicture.asset('assets/bag-2.svg',color: Colors.white,height: 20,),),
    floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      
            bottomNavigationBar: BottomNavigationBar(onTap: (value) {
              setState(() {
                index=value;
              });
            },items: [
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/home.svg',color: index==0 ? Colors.blue:Colors.grey,),label: ''),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/Path.svg',color: index==1 ? Colors.blue:Colors.grey),label: ''),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/notification.svg',color: index==2 ? Colors.blue:Colors.grey),label: ''),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/frame.svg',color: index==3 ? Colors.blue:Colors.grey),label: ''),
        
      ],
      )
      ,body: pages.elementAt(index),
    );
  }
}

class Z3 extends StatelessWidget {
  const Z3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

}

class z4 extends StatelessWidget {
  const z4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class z5 extends StatelessWidget {
  const z5({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}