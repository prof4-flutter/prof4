// prof4 11:07 28.02
// экран заказов детальный

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_prof4/onboarding/presentation/boarding_screens.dart/orders_screen.dart';
import 'package:project_prof4/shop/presentation/widget/shopping_card2.dart';

class OrderScreenDetailed extends StatelessWidget {
  const OrderScreenDetailed({super.key,});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('325556516'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.end,children: [
          Text('7 мин назад',style: TextStyle(color: Colors.grey),),
          SizedBox(height: size.height * 0.05,),
          OrderScreenItem(size: size),
          OrderScreenItem(size: size),
          Container(
              height: size.height * 0.45,
              width: size.width,
              decoration: BoxDecoration(color:Colors.white ),
              child: Padding(padding: EdgeInsets.all(8),child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,children: [
                  Text('Контактная информация'),
                  SizedBox(height: size.height * 0.02,),
                 Column(children:  [
                                ShopMiniCarddd(main: 'emmanuel@gmail.com',post: 'Email',icon: Icon(Icons.email_outlined),),
              ShopMiniCarddd(main: '+234-811-732-5298',post: 'Телефон',icon: Icon(Icons.phone_outlined),),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Адрес\n1082 Аэропорт, Нигерии',textAlign: TextAlign.start,),
          
          
        ],
      ),
      SizedBox(child: Image.asset('assets/Map.png')),
      Text('Способ оплаты')
                  ],)
      
              ],),),
            ),
        ],),
      ),
    );
  }
}