import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../shop/presentation/widget/shopping_card2.dart';



// prof4 11:07 28.02
// экран заказов
class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('Заказы'),),
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          SizedBox(height: size.height * 0.05,),
          Text('Недавний',style: TextStyle(fontSize: 18),),
          OrderScreenItem(size: size),
          OrderScreenItem(size: size),
                    Text('Вчера',style: TextStyle(fontSize: 18),),
          OrderScreenItem(size: size),
          OrderScreenItem(size: size),
          OrderScreenItem(size: size)

        ],),
        
      ),
      
    );
  }
}

class OrderScreenItem extends StatelessWidget {
  const OrderScreenItem({super.key, required this.size}) ;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(context) {
        return OrderScreenDetailed();
      },)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Container(
          height: size.height * 0.15,
          width: size.width* 0.96,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/nike.png'),
              ),
              SizedBox(width: size.width * 0.04,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  Text('№ 325556516',style: TextStyle(color: Colors.blue),),
                  Text('Nike Club Max'),
                  Text('₽94.05')
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// prof4 11:07 28.02
// экран заказов детальный

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