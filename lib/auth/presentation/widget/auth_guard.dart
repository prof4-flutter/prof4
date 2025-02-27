import 'package:flutter/material.dart';
import 'package:project_prof4/auth/presentation/widget/auth_screen.dart';
import 'package:project_prof4/shop/presentation/widget/home_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';




// экран проверки на авторизацию
class AuthGuard extends StatelessWidget {
   AuthGuard({super.key});

  final supabase = Supabase.instance.client.auth;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: supabase.onAuthStateChange,
      builder:(context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return const CircularProgressIndicator();
        }
        final session = snapshot.hasData ? snapshot.data!.session : null;
        if(session!=null){
          return HomeScreen();
        }
        return AuthScreen();
      },
    );
  }
}