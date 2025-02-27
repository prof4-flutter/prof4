import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_prof4/auth/domain/supabase_service.dart';
import 'package:project_prof4/auth/presentation/widget/otp_screen.dart';
import 'package:project_prof4/auth/presentation/widget/register_screen.dart';
import 'package:project_prof4/auth/presentation/widget/send_password_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';



// prof4 14:17 27.02
// экран повторной отправки пароля

class SendPasswordScreen extends StatefulWidget {
  const SendPasswordScreen({super.key});

  @override
  State<SendPasswordScreen> createState() => _SendPasswordScreenState();
}

class _SendPasswordScreenState extends State<SendPasswordScreen> {





  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Забыл пароль',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400),),
            ],
          ),
          Text('Заполните Свои Данные Или\n Продолжите Через Социальные Медиа',style: TextStyle(fontSize: 15,color: Color.fromRGBO(112, 123, 129, 1)),textAlign: TextAlign.center,),
          SizedBox(height: size.height* 0.05,),
          // форма ввода
          SizedBox(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              SizedBox(height: size.height*0.02,),
              TextField(
                decoration: InputDecoration(hoverColor: Colors.grey,focusColor: Colors.grey,fillColor: Colors.grey,
                
                hintText: 'xyz@gmail.com',
                hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  
                ),
              )
            ],),
          ),SizedBox(height: size.height*0.04,),

          

        //кнопка
          SizedBox(
            width: double.infinity,
            height: size.height * 0.085  ,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                showDialog(context: context, builder:(context) {
                  Future.delayed(Duration(seconds: 1),()=>Navigator.push(context, MaterialPageRoute(builder:(context) {
                    return OtpScren();
                  },)));
                  return AlertDialog(backgroundColor: Colors.white,
                    
                    content: Container(height: size.height * 0.25,
                    width: size.width * 0.8,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                        Container(margin: EdgeInsets.all(12),height: 40,width: 40,decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          
                          color: Colors.blue
                        ),child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/email1.svg'),
                          
                          
                        )),
                        Text('Проверьте Ваш Email'),
                        SizedBox(height: size.height * 0.01,),
                        Text('Мы Отправили Код Восстановления\n Пароля На Вашу Электронную Почту.',style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,)
                      
                      ],),
                    ),

                  );
                },);
              }, child: Text('Войти',style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 12),
                backgroundColor: Color.fromRGBO(72, 178, 231, 1)
              ),),
            ),
          ),
          SizedBox(height: size.height * 0.15,),

          //текст

          ],
        ),
      ),
    );
  }
}