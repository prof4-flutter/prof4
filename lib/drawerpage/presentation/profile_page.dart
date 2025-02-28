import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;


// prof4 9:17 28.02
// экран профиля 

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size  =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Профиль'),
        centerTitle: true,
        actions: [
          Icon(Icons.edit),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.001),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,children: [
              SizedBox(height: size.height * 0.05,),
              Image.asset('assets/people.png'),
              SizedBox(height: size.height * 0.05,),
              Text('Emmanuel Oyiboke'),
              SizedBox(height: size.height * 0.05,),
              Container(
                height: size.width * 0.2,
                width: size.width * 0.95,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color.fromRGBO(247, 247, 249, 1),),
                child: Row(
                  children: [
                    Transform.flip(
                      flipX: true,
                      flipY: true,
                      child: Transform.rotate(
                        
                        angle: math.pi 
                        /2
                        ,
                        child: Text(
                          'Открыть'
                          
                        ),
                      ),
                    ),
                    Image.asset('assets/strih.png',width: size.width * 0.7,),
                  ],
                ),
              ),
                            TextFieldiki(text: 'Имя', textFieldtext: 'Emmanuel', size: size),
              TextFieldiki(text: 'Фамилия', textFieldtext: 'Oyiboke', size: size),
              TextFieldiki(text: 'Адрес', textFieldtext: 'Nigeria', size: size),
              TextFieldiki(text: 'Телефон', textFieldtext: '811-732-5298', size: size),


            
            ],),
          ],
        ),
      ),
    );
  }
}

class TextFieldiki extends StatelessWidget {
  const TextFieldiki({super.key, required this.text, required this.textFieldtext, required this.size});

  final String text;
  final String textFieldtext;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8),child: 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: 8,),
        Container(
          width: size.width * 0.90,
          height: size.height * 0.055,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color.fromRGBO(247, 247, 249, 1),),
                child: Padding(
                  padding: EdgeInsets.only(left: size.width * 0.05,top: size.height * 0.01),
                  child: Text(textFieldtext,),
                ),
          
        )
      ],
    ),);
  }
}