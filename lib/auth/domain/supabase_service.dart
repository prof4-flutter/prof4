import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


// сервисы для авторизации
class SupabaseService{
  
  final supabase = Supabase.instance.client.auth;
  Future<AuthResponse>singIn({required String email,required String password})async{
    return await supabase.signInWithPassword(password: password,email: email);

  }
  Future<void> signOut()async{
    return await supabase.signOut();
    
  }

  Future<AuthResponse> register({required String password,required String email})async{
    return await supabase.signUp(password: password,email: email);
  }


  }
