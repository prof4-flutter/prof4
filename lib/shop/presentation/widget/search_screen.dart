import 'package:flutter/material.dart';
import 'package:project_prof4/shop/presentation/widget/favorites_screen.dart';



// prof4 11:07 27.02
// экран поиск
class SearchScreenZ extends StatelessWidget {
  const SearchScreenZ({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(padding: EdgeInsets.symmetric(horizontal: 12),child: 
      Column(
        children: [
          SizedBox(height:  size.height * 0.1,),
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
                                      prefix: Icon(Icons.search,color: Colors.black,),
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

        ],
      ),),
      
    );
  }
}