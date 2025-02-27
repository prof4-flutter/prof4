import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_prof4/navigation_bar.dart';
import 'package:project_prof4/onboarding/presentation/widget/splash_screen.dart';
import 'package:project_prof4/shop/presentation/widget/shop_screen.dart';



// prof4 14:21 27.02
// экран подтверждения отправки
class ShoppingCard2 extends StatefulWidget {
  const ShoppingCard2({super.key});

  @override
  State<ShoppingCard2> createState() => _ShoppingCard2State();
}

class _ShoppingCard2State extends State<ShoppingCard2> {
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
      
              
      
            ],
          ),          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
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
      )
                  ],)
      
              ],),),
            ),
          ),
          SizedBox(height: size.height * 0.04,),
          Expanded(child: Container(color: Colors.white,child: 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,children: [
              SizedBox(height: size.height * 0.02,),
              
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('Сумма'),Text('₽753.95')],),
              SizedBox(height: size.height * 0.02,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('Доставка'),Text('₽60.20')],),
              SizedBox(height: size.height * 0.04,),
                          Divider(
                thickness: 12,
              ),
              SizedBox(height: size.height * 0.04,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text('Итого'),Text('₽814.15',style: TextStyle(color: Colors.blue),)],),
              SizedBox(height: size.height * 0.06,),
              Row(),
              SizedBox(width: size.width * 0.8,child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(72, 178, 231, 1)),onPressed: (){
                showDialog(context: context, builder:(context) {return
                  AlertDialog(backgroundColor: Colors.white,
                    
                    content: Container(height: size.height * 0.6,
                    width: size.width * 0.8,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                        Container(margin: EdgeInsets.all(12),height: size.height * 0.2,width: size.width * 0.3,decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          
                          color: Color.fromRGBO(72, 178, 231, 1)
                        ),child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/image50.png',height: size.height * 0.1,width: size.width * 0.3,),
                          
                          
                        )),
                        SizedBox(height: size.height * 0.03,),
                        Text('Вы успешно\noформили\nзаказ',style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                        SizedBox(height: size.height * 0.1,),
                        SizedBox(
                          width: size.width * 0.65,
                          height: size.height * 0.05,
                          child: ElevatedButton(style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(72, 178, 231, 1)
                          ), onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context) {
                              return NavigationBarS();
                            },));
                          }, child: Text('Вернуться к покупкам',style: TextStyle(color: Colors.white),)),
                        )
                      
                      ],),
                    ),
      
                  );
                },);
              }, child: 
              Text('Подтвердить',style: TextStyle(color: Colors.white),),),)
            
            ],),
          ),)),
          
        
        
        ],),
      ),
              );
  }

  
}


class ShopMiniCarddd extends StatelessWidget {
  const ShopMiniCarddd({super.key, required this.main, required this.icon, required this.post});


  final String main;
  final Icon icon;
  final String post;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      width: size.width * 0.8,
      height: size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: size.width * 0.004,),
          icon,
        Column(mainAxisAlignment: MainAxisAlignment.center,children: [
          Text('$main\n$post',textAlign: TextAlign.start,style: TextStyle(color: Colors.grey),),
        ],),
        IconButton(onPressed: (){
        }, icon: SvgPicture.asset('assets/edit.svg')),
        ],
      ),
    );
  }
}