import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_prof4/auth/domain/supabase_service.dart';
import 'package:project_prof4/auth/presentation/widget/auth_guard.dart';
import 'package:project_prof4/auth/presentation/widget/auth_screen.dart';
import 'package:project_prof4/drawerpage/presentation/profile_page.dart';
import 'package:project_prof4/onboarding/presentation/boarding_screens.dart/notification_screen.dart';
import 'package:project_prof4/onboarding/presentation/boarding_screens.dart/orders_screen.dart';
import 'package:project_prof4/shop/presentation/widget/favorites_screen.dart';
import 'package:project_prof4/shop/presentation/widget/shop_screen.dart';
import 'package:project_prof4/shop/presentation/widget/shopping_card.dart';
import 'package:supabase_flutter/supabase_flutter.dart';



// prof4 10:51 27.02
// панель навигации
class NavigationBarS extends StatefulWidget {
   NavigationBarS({super.key,required this.index}){
    index = 0;
   }

  int index = 0;

  

  @override
  State<NavigationBarS> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarS> {

  final List pages = [
    ShopScreen(),
    FavoriteSreen(),
    NotifiacationScreen(),
    ProfilePage()


  ];

  void logOut() async{
    return await SupabaseService().signOut();
    
  }





  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      drawer: Drawer(
      
        
        backgroundColor: Color.fromRGBO(72,178, 231, 1),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.1,),
            Image.asset('assets/people.png'),
            Text('Эмануэль Кверти',style: TextStyle(color: Colors.white,fontSize: 20),),
            SizedBox(height:  size.height * 0.05,),
            GestureDetector(onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(context) {
              return ProfilePage();
            },)),child: Row(children: [Icon(Icons.people_rounded,color: Colors.white,),SizedBox(width:  size.height * 0.05),Text('Профиль',style: TextStyle(color: Colors.white,fontSize: 16),)],)),
            SizedBox(height:  size.height * 0.05
          ,),
            GestureDetector(onTap: ()=> Navigator.push(context,MaterialPageRoute(builder:(context) {
              return ShoppingCard();
            },)),child: Row(children: [Icon(Icons.shopping_bag_outlined,color: Colors.white,),SizedBox(width:  size.height * 0.05),Text('Корзина',style: TextStyle(color: Colors.white,fontSize: 16))],)),
            SizedBox(height:  size.height * 0.05,),
            GestureDetector(onTap: ()=> Navigator.push(context, MaterialPageRoute(builder:(context) {
              return OrdersScreen();
            },)),child: Row(children: [Icon(Icons.people_alt,color: Colors.white,),SizedBox(width:  size.height * 0.05),Text('Заказы',style: TextStyle(color: Colors.white,fontSize: 16))],)),
            SizedBox(height:  size.height * 0.05,),
            GestureDetector(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(context) {
                return NotifiacationScreen();
              },)),
              child: Row(children: [Icon(Icons.notifications,color: Colors.white,),SizedBox(width:  size.height * 0.05),
              Text('Уведомления',style: TextStyle(color: Colors.white,fontSize: 16))],),
            ),
            SizedBox(height:  size.height * 0.05),
            
            Row(children: [Icon(Icons.settings_outlined,color: Colors.white,),SizedBox(width:  size.height * 0.05),Text('Настройки ',style: TextStyle(color: Colors.white,fontSize: 16))],),
          SizedBox(height:  size.height * 0.05),
          Divider(),
          SizedBox(height:  size.height * 0.05),
          GestureDetector(onTap: (){
            Navigator.push(context,MaterialPageRoute(builder:(context) {
              return AuthGuard();
            },));
            logOut();
          },child: Row(children: [Icon(Icons.login,color: Colors.white,),SizedBox(width:  size.height * 0.05),Text('Выйти',style: TextStyle(color: Colors.white,fontSize: 16))],)),
          ],),
        ),
      ),floatingActionButton: FloatingActionButton(backgroundColor: Colors.blue,onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context) => ShoppingCard(),));
    },child: SvgPicture.asset('assets/bag-2.svg',color: Colors.white,height: 20,),),
    floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      
            bottomNavigationBar: BottomNavigationBar(onTap: (value) {
              setState(() {
                widget.index=value;
              });
            },items: [
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/home.svg',color: widget.index==0 ? Colors.blue:Colors.grey,),label: ''),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/Path.svg',color: widget.index==1 ? Colors.blue:Colors.grey),label: ''),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/notification.svg',color: widget.index==2 ? Colors.blue:Colors.grey),label: ''),
        BottomNavigationBarItem(icon: SvgPicture.asset('assets/frame.svg',color: widget.index==3 ? Colors.blue:Colors.grey),label: ''),
        
      ],
      )
      ,body: pages.elementAt(widget.index),
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