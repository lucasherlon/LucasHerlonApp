import 'package:flutter/material.dart';
import 'package:lucasherlonapp/pages/portfolio.dart';
import 'package:lucasherlonapp/pages/technologies.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child:  Text('Lucas Herlon App',
              style: TextStyle(
                fontFamily: 'REM',
                fontWeight: FontWeight.w700,
                color: Color(0xFFf9f9f9),
              ),
            ),
          ),
          backgroundColor: const Color(0xFF0f111a),
        ),
      body: Stack(
       children: [
          Image.asset('assets/images/fundo.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 5,
                        color:Colors.lightBlue
                      )
                    ),
                    margin: const EdgeInsets.only(left: 30.0, top: 30, bottom: 15),
                    padding: const EdgeInsets.all(24.0),
                    child: Image.asset("assets/images/foto3.png",
                    height: 150,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 36.0, top: 20.0, bottom: 20.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 20
                      )
                    ),
                    padding: const EdgeInsets.all(24.0),
                    child: const Text('      Hello there, my name is\n             Lucas Herlon.\nI am a Computer Science student\nwho enjoys building interfaces,\nespecially for web applications.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFf9f9f9),
                      ),
                    ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                       onPressed: (){
                         Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Portfolio()));
                       },
                       child: const Text("Social and Portfolio", style: TextStyle(
                           fontSize: 16
                       ),)),
                ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ElevatedButton(
                       onPressed: (){
                         Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const Technologies()));
                       },
                       child: const Text("See Technologies I Study", style: TextStyle(
                         fontSize: 16
                       ),)),
               ),
           ],
         )
       ],
      ),
    );
  }
}
