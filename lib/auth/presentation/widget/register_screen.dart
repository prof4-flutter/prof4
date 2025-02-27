import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_prof4/auth/domain/supabase_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';



// prof4 14:18 27.02
// экран регистрации

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {



  bool isVisible = false;

  // prof4 14:17 27.02
// контроллеры
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  final supabaseClient = SupabaseService();


  // prof4 14:17 27.02
// функция регистрации
  void register()async{
    try{
      await supabaseClient.register(email:  _emailController.text.trim(),password:  _passwordController.text.trim());
      Navigator.pop(context);
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
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Регистрация',style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400),),
            ],
          ),
          Text('Заполните Свои данные Или \nпродолжите через социальные медиа',style: TextStyle(fontSize: 15,color: Color.fromRGBO(112, 123, 129, 1)),textAlign: TextAlign.center,),
          SizedBox(height: size.height* 0.02,),
          // форма ввода
                    SizedBox(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text('Ваше имя',textAlign: TextAlign.start,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400),),
              SizedBox(height: size.height*0.01,),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(hoverColor: Colors.grey,focusColor: Colors.grey,fillColor: Colors.grey,
                
                hintText: 'xxxxxxxx',
                hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  
                ),
              )
            ],),
          ),SizedBox(height: size.height*0.02,),
          SizedBox(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text('Email',textAlign: TextAlign.start,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400),),
              SizedBox(height: size.height*0.01,),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(hoverColor: Colors.grey,focusColor: Colors.grey,fillColor: Colors.grey,
                
                hintText: 'xyz@gmail.com',
                hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  
                ),
              )
            ],),
          ),SizedBox(height: size.height*0.03,),
          // prof4 14:17 27.02
          // форма пароля
          SizedBox(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
              Text('Пароль',textAlign: TextAlign.start,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400),),
              SizedBox(height: size.height*0.01,),
              TextField(
                controller: _passwordController,
                
                obscureText: isVisible,
                decoration: InputDecoration(hintStyle: TextStyle(color: Colors.grey),disabledBorder: InputBorder.none,hoverColor: Colors.grey,focusColor: Colors.grey,fillColor: Colors.grey,
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Даю согласие на обработку\nперсональных данных",style: TextStyle(color: Colors.grey,),textAlign: TextAlign.start,),
          ],
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        // prof4 14:17 27.02
        //кнопка
          SizedBox(
            width: double.infinity,
            height: size.height * 0.085  ,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: register, child: Text('Войти',style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
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
              Text('Есть аккаунт',style: TextStyle(color: Colors.grey),),
              Text('?',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.grey),),
              GestureDetector(onTap: ()=> Navigator.pop(context),child: Text('Войти',style: TextStyle(color: Colors.black),))
            ],
          )
          ],
        ),
      ),
    );
  }
}