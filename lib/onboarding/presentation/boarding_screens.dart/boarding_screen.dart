import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_prof4/home_screen.dart';
import 'package:project_prof4/onboarding/shop_screen.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {

  final PageController _pageController = PageController();

  bool isLast = false;
  bool isFirst = true;  
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children:[ PageView(
          onPageChanged: (index){
            if(index==0){
              setState(() {
                isLast = false;
              });
            }
            if(index==1){
              setState(() {
                isLast= false;
              });
            }
            if(index==2){
              setState(() {
                isLast = true;
              });
            }

          },
          controller: _pageController,
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen()
          ],
      
          
          
        ),Align(alignment: Alignment(0, 0.76),child: SizedBox(
          width: size.width * 0.87,
          height: size.height * 0.05,
          child: ElevatedButton(onPressed: (){
            isLast ?  Navigator.push(context, MaterialPageRoute(builder:(context) {
              return ShopScreen();
            },)): _pageController.nextPage(duration: Duration(microseconds: 20), curve: Curves.linear);
          }, child: Text('${
            isLast ? 'Далее' : 'Начать'
          }',style: TextStyle(color: Colors.black),),style: ElevatedButton.styleFrom(
        
          ),)))]
      ),
    );
  }
}


class FirstScreen extends StatelessWidget {

  FirstScreen({super.key,});


  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(72, 178, 231, 1),
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            SizedBox(height: size.height* 0.1,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Добро\n пожаловать ',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
        
              ],
            ),
            SizedBox(height: size.height* 0.1,),
                    Image.asset('assets/image1.png'),
                    SizedBox(height: size.height* 0.1,),


          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(72, 178, 231, 1),
      body: Center(
        child: Column(children: [
          SizedBox(height: size.height * 0.2,),
          Image.asset('assets/image2.png'),
          Text('Начнем\n путешествие',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 32),),
          SizedBox(height: size.height * 0.03,),
          Text('Умная, великолепная и модная\n коллекция Изучите сейчас',textAlign: TextAlign.center,style: TextStyle(color: Color.fromRGBO(216, 216,216, 1)),)

        ],),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(72, 178, 231, 1),
      body: Center(
        child: Column(children: [
          SizedBox(height: size.height * 0.2,),
          Image.asset('assets/image3.png'),
          Text('У вас есть сила,\n чтобы',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 32),),
          SizedBox(height: size.height * 0.03,),
          Text('В вашей комнате много красивых и\n привлекательных растений',textAlign: TextAlign.center,style: TextStyle(color: Color.fromRGBO(216, 216,216, 1)),)

        ],),
      ),
    
    );
  }
}