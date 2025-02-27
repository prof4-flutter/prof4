import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_prof4/auth/domain/supabase_service.dart';
import 'package:project_prof4/shop/presentation/widget/card_item_detailed.dart';
import 'package:project_prof4/shop/presentation/widget/search_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


//экран магазина
class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  @override
  void initState() {
    SupabaseService().signOut();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(


      backgroundColor: Color.fromRGBO(247, 247, 247, 1),
      appBar: AppBar(
        actions: [
          SvgPicture.asset('assets/bag-2.svg',fit: BoxFit.fitHeight,)
        ],
        backgroundColor: Color.fromRGBO(247, 247, 247, 1),
        leading: SvgPicture.asset('assets/Hamburger.svg',fit: BoxFit.none,),
        title: Text('Главная',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400),) ,
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        
        SizedBox(height: size.height * 0.01,),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(255, 255, 255, 1)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                prefix: IconButton(onPressed: ()=>Navigator.push(context, 
                                MaterialPageRoute(builder:(context)=> SearchScreenZ())),icon:Icon(Icons.search),color: Colors.black,),
                                hintText:'поиск',
                                
                                border: InputBorder.none
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Icon(Icons.tune)
                
              ],
            
            ),
          ),
        ),
        SizedBox(height: size.height * 0.03,),
        Text('Категории',style: TextStyle(fontSize: 16,),),
        SizedBox(height: size.height * 0.03,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryCant(text: 'Все'),
            CategoryCant(text: 'OutDoor'),
            CategoryCant(text: 'Tennis')
          ],
        ),
        SizedBox(height: size.height * 0.03,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Популярое',style: TextStyle(fontSize: 16,),),
            Text('Все',style: TextStyle(color: Colors.blue),)
          ],
        ),SizedBox(height: size.height * 0.03,),  
                  
                            Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CardItem(size: size),
            CardItem(size: size)
          ],
        ),
        SizedBox(height: size.height * 0.03,),  
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Акции',style: TextStyle(fontSize: 16,),),
            Text('Все',style: TextStyle(color: Colors.blue),)
          ],
        ),
        SizedBox(height: size.height * 0.01,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/banner.png'),
          ],
        )
      
      ],),
    );
  }
}

//меню айтемов
class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=> CardItemDetailed())), 
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.favorite_border_rounded),
              Image.asset('assets/nike.png'),
              Text('Best Seller',style: TextStyle(color: Colors.blue),),
              Text('₽752.00')
            ],
          ),
        ),
        height: size.height * 0.24,
        width: size.width * 0.43,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(12),
          
        ),
      
      ),
    );
  }
}

// модели категорий
class CategoryCant extends StatelessWidget {
  const CategoryCant({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(255, 255, 255, 1)
      ),
      child: Center(
        child: Text(text,style: TextStyle(fontSize: 12),),
      ),
    );
  }
}