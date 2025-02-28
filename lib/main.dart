import 'package:flutter/material.dart';
import 'package:project_prof4/auth/presentation/widget/auth_guard.dart';
import 'package:project_prof4/auth/presentation/widget/auth_screen.dart';
import 'package:project_prof4/drawerpage/presentation/profile_page.dart';
import 'package:project_prof4/navigation_bar.dart';
import 'package:project_prof4/shop/presentation/widget/shopping_card.dart';
import 'package:project_prof4/shop/presentation/widget/shopping_card2.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


// prof4 11:07 28.02
// точка входа
void main(List<String> args) async{

  
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: 'https://jksykjgthwpyletmgihw.supabase.co', 
  anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imprc3lramd0aHdweWxldG1naWh3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzk3Njc3NTUsImV4cCI6MjA1NTM0Mzc1NX0.N1DOFH9SCvnQSkwa8fs3kIgsuBBZ9EZ_U7KPV_9ucWw');
  runApp(MaterialApp(home: NavigationBarS(index: 3,),debugShowCheckedModeBanner: false,));
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(size: 240,
        ),
      ),
    );
  }
}