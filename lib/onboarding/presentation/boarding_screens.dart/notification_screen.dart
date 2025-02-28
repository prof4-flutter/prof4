import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_prof4/main.dart';



// prof4 11:07 28.02
// экран уведомлений
class NotifiacationScreen extends StatefulWidget {
  const NotifiacationScreen({super.key});

  @override
  State<NotifiacationScreen> createState() => _NotifiacationScreenState();
}

class _NotifiacationScreenState extends State<NotifiacationScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
                  appBar: AppBar(centerTitle: true,
                    title: Text('Уведомления'),
                    
                  ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
          Con(size: size),
          Con(size: size),
          Con(size: size),
          Con(size: size),
          Con(size: size),
          Con(size: size),
          Con(size: size),
          Con(size: size),

        ],)
      ),
    );
  }
}

class Con extends StatelessWidget {
  const Con({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Color.fromRGBO(247, 247, 249, 1),borderRadius: BorderRadius.circular(16)),
                            height:  size.height * 0.23,
                            width: size.width * 0.95,
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: size.height * 0.01,),
                                  Text('Заголовок',style: TextStyle(fontSize: 16),),
                                  Expanded(child: Text('Lorem ipsum dolor sit amet consectetur. Venenatis pulvinar lobortis risus consectetur morbi egestas id in bibendum. Volutpat nulla urna sit sed diam nulla.')),
                                  SizedBox(height: size.height * 0.01,),
                                  Text('27.01.2024, 15:42',style: TextStyle(color: Colors.grey,fontSize: 12),)       
                                ],
                              ),
                            ),
                          ),
              );
  }
}