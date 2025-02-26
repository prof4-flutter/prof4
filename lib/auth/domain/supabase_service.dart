import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


// сервисы для авторизации
class SupabaseService{
  
  final supabase = Supabase.instance.client.auth;
  Future<AuthResponse>singIn({required String email,required String password})async{
    return await supabase.signInWithPassword(password: password,email: email);

  }


  }
