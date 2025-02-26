import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_prof4/auth/domain/supabase_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';



//экраг авторизации

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {



  bool isVisible = false;

  // инициализация контроллера
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  final supabaseClient = SupabaseService();


  //функция входа
  void signIn()async{
    try{
      await supabaseClient.singIn(email:  _emailController.text.trim(),password:  _passwordController.text.trim());
    }on Object catch(e){
      if(mounted){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$e'))
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
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
              Text('Привет',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400),),
              Text('!',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 32),)
            ],
          ),
          Text('Заполните Свои данные или \nпродолжите через социальные медиа',style: TextStyle(fontSize: 15,color: Color.fromRGBO(112, 123, 129, 1)),textAlign: TextAlign.center,),
          SizedBox(height: size.height* 0.05,),
          // форма ввода
          SizedBox(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text('Email',textAlign: TextAlign.start,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400),),
              SizedBox(height: size.height*0.02,),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(hoverColor: Colors.grey,focusColor: Colors.grey,fillColor: Colors.grey,
                
                hintText: 'xyz@gmail.com',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  
                ),
              )
            ],),
          ),SizedBox(height: size.height*0.04,),

          // форма пароля
          SizedBox(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text('Пароль',textAlign: TextAlign.start,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400),),
              SizedBox(height: size.height*0.02,),
              TextField(
                controller: _passwordController,
                
                obscureText: isVisible,
                decoration: InputDecoration(disabledBorder: InputBorder.none,hoverColor: Colors.grey,focusColor: Colors.grey,fillColor: Colors.grey,
                suffixIcon: IconButton(icon: isVisible ? SvgPicture.asset('assets/Vector.svg',height: 13,): SvgPicture.asset('assets/Union.svg',height: 13,),onPressed: (){
                  setState(() {
                    isVisible = !isVisible;
                  });

                },),
                hintText: '••••••••',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  
                ),
              )
            ],),
          ),
          SizedBox(height: size.height*0.02,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Воcстановить",style: TextStyle(color: Colors.grey),textAlign: TextAlign.start,),
          ],
        ),
        SizedBox(
          height: size.height * 0.1,
        ),

        //кнопка
          SizedBox(
            width: double.infinity,
            height: size.height * 0.085  ,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: signIn, child: Text('Войти',style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 12),
                backgroundColor: Color.fromRGBO(72, 178, 231, 1)
              ),),
            ),
          ),
          SizedBox(height: size.height * 0.1,),

          //текст
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Вы впервые',style: TextStyle(color: Colors.grey),),
              Text('?',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.grey),),
              Text('Создать пользователя',style: TextStyle(color: Colors.black),)
            ],
          )
          ],
        ),
      ),
    );
  }
}