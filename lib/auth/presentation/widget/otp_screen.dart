import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




// prof4 14:26 27.02
// экран otp авторизации
class OtpScren extends StatelessWidget {
  const OtpScren({super.key});

  @override
  Widget build(BuildContext context) {
final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(centerTitle: true,
      title: Text('OTP проверка'),),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text(''),

          // форма ввода



          SizedBox(height: size.height*0.02,),

        SizedBox(
          height: size.height * 0.04,
        ),




          ],
        ),
      ),
    );
  }
}