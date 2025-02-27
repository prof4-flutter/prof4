import 'package:flutter/material.dart';


// prof4 10:49 27.02
// экран корзины
class ShoppingCard extends StatefulWidget {
  const ShoppingCard({super.key});

  @override
  State<ShoppingCard> createState() => _ShoppingCardState();
}

class _ShoppingCardState extends State<ShoppingCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
    appBar: AppBar(centerTitle: true,
    backgroundColor: Color.fromRGBO(247, 247, 249, 1),
    title: Text('Корзина'),),
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,children: [
          SizedBox(height: size.height * 0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('3 товара'),
            ],
          ),
          SizedBox(height: size.height * 0.01,),
          ShoppingCardItem(size: size,),
          ShoppingCardItem(size: size),
          ShoppingCardItem(size: size,),
          SizedBox(height: size.height * 0.1,),
          Expanded(child: Container(color: Colors.white,child: 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,children: [
              SizedBox(height: size.height * 0.02,),
              
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('Сумма'),Text('₽753.95')],),
              SizedBox(height: size.height * 0.02,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('Доставка'),Text('₽60.20')],),
              SizedBox(height: size.height * 0.05,),
                          Divider(
                thickness: 12,
              ),
              SizedBox(height: size.height * 0.1,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('Итого'),Text('₽814.15',style: TextStyle(color: Colors.blue),)],),
              SizedBox(height: size.height * 0.06,),
              Row(),
              SizedBox(width: size.width * 0.8,child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(72, 178, 231, 1)),onPressed: (){}, child: 
              Text('Оформить заказ',style: TextStyle(color: Colors.white),),),)
            
            ],),
          ),)),
          
        
        
        ],),
      ),
              );
  }
}


// prof4 10:49 27.02
// дополнительный виджет для корзины

class ShoppingCardItem extends StatelessWidget {
  const ShoppingCardItem({super.key, required this.size}) ;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
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
          SizedBox(width: size.width * 0.1,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Text('Nike Club Max'),
              Text('₽94.05')
            ],),
          )
        ],
      ),
    );
  }
}