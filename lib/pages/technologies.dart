import 'package:flutter/material.dart';
import '/pages/home.dart';

class Technologies extends StatelessWidget {
  const Technologies({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Center(
            child:  Text('My Technologies',
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
              Image.asset("assets/images/flutter.png"),
              Image.asset("assets/images/js.png"),
              Image.asset("assets/images/java.png"),
              Image.asset("assets/images/html.png"),
              Image.asset("assets/images/css.png"),
              Image.asset("assets/images/vue.png"),
              Container(
                margin: const EdgeInsets.only(top: 40.0),
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Home()));
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back),
                        Text("Home",
                          style: TextStyle(
                            fontSize: 16
                          ))
                      ],
                    )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
