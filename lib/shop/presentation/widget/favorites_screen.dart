import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_prof4/shop/presentation/widget/card_item_detailed.dart';



// prof4 10:51 27.02
// экран избранного 
class FavoriteSreen extends StatefulWidget {
  const FavoriteSreen({super.key});

  @override
  State<FavoriteSreen> createState() => _FavoriteSreenState();
}

class _FavoriteSreenState extends State<FavoriteSreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
        return Scaffold(
          backgroundColor: Color.fromRGBO(247, 247, 249, 1),
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(247, 247, 249, 1),
            centerTitle: true,
            title: Text('Избранное',style: TextStyle(fontSize: 16),),
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
                    child: Icon(Icons.favorite,color: Colors.red,size: 12,),
                  ),
                ),
              )
            ],
          ),
          body: SizedBox(
            child: GridView.count(crossAxisCount: 2,mainAxisSpacing: 12,crossAxisSpacing: 12, children: [
              CardItemF(size: size),
              CardItemF(size: size),
                            CardItemF(size: size),
              CardItemF(size: size),
                            CardItemF(size: size),
              CardItemF(size: size),
                            CardItemF(size: size),
              CardItemF(size: size),
                            CardItemF(size: size),
              CardItemF(size: size),
            ],),
          ),
    );
  }
}


//// prof4 11:07 27.02
// меню айтемов
class CardItemF extends StatelessWidget {
  const CardItemF({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder:(context) => CardItemDetailed(),)),
      child: Container(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.all(size.width * 0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: size.height * 0.03,width: size.width * 0.03,decoration: BoxDecoration(
                  shape: BoxShape.circle,color: Color.fromRGBO(247, 247, 249, 1),
                ),child: Icon(Icons.favorite,color: Colors.red,)),
                Image.asset('assets/nike.png'),
                Text('Best Seller',style: TextStyle(color: Colors.blue),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('₽752.00'),
                    Container(decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(20),
                      
      
                    )),child: Icon(Icons.add,color: Colors.white,))
                  ],
                )
              ],
            ),
          ),
        ),
        height: size.height * 0.20,
        width: size.width * 0.41,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          borderRadius: BorderRadius.circular(12),
          
        ),
      
      ),
    );
  }
}
