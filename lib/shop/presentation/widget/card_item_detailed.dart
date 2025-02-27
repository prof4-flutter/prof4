import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';



// prof4 10:52 27.02
// экран подробнестей о товаре
class CardItemDetailed extends StatelessWidget {
  const CardItemDetailed({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(appBar: 
      AppBar(
            backgroundColor: Color.fromRGBO(247, 247, 249, 1),
            centerTitle: true,
            title: Text('Sneaker Shop',style: TextStyle(fontSize: 16),),
            actions: [
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  height: 20,
                  width: 20,margin: EdgeInsets.all(12),
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/bag-2.svg',color: Colors.black,),
                  ),
                ),
              )
            ],
          ),
      backgroundColor: Color.fromRGBO(247, 247, 249, 1),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          SizedBox(height: size.height * 0.03,),
          
          Text('Nike Air Max 270\nEssential',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w400  ),textAlign: TextAlign.start,),
          SizedBox(height: size.height * 0.02,),
          Text('Men’s Shoes',style: TextStyle(color: Colors.grey,fontSize: 16),),
          SizedBox(height: size.height * 0.02,),
          Text('₽179.39',style: TextStyle(fontSize: 24),),
          SizedBox(height: size.height * 0.02,),
          Align(alignment: Alignment.center,child: Image.asset('assets/bignike.png',)),
          SizedBox(height: size.height * 0.04,),
          Row(children: [
            MiniCard(size: size,image: 'assets/nike.png',),
            MiniCard(size: size,image: 'assets/nike.png',),
            MiniCard(size: size,image: 'assets/nike.png',),
            MiniCard(size: size,image: 'assets/nike.png',),
            MiniCard(size: size,image: 'assets/nike.png',),
          ],),
SizedBox(height: size.height * 0.04,),
Text('Вставка Max Air 270 обеспечивает\n непревзойденный комфорт в течение всего\n дня. Изящный дизайн ........'),
Row(mainAxisAlignment: MainAxisAlignment.end,children: [
  Text('Подробнее',style: TextStyle(color: Colors.blue),),

],),
  SizedBox(height: size.height * 0.07,),
  Row(children: [
    Container(height: size.height * 0.07,width: size.width * 0.13,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),child: Icon(Icons.favorite_border_outlined)),
    Expanded(child: Padding(padding: EdgeInsets.all(7),child: SizedBox(height: size.height * 0.07,child: ElevatedButton(style: ElevatedButton.styleFrom(
      
      backgroundColor: Color.fromRGBO(72, 178, 231, 1)
    ),onPressed: (){}, child: Text('В корзину',style: TextStyle(color: Colors.white),))),))
  ],)
        ],),
      ),

    );
  }
}


// prof4 10:53 27.02
// карточка с экрана подробнестей

class MiniCard extends StatelessWidget {
  const MiniCard({super.key, required this.size, required this.image});
  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.12,
        height: 60,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
        child: Image.asset(image),
      ),
    );
  }
}