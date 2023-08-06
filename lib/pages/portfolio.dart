import 'package:flutter/material.dart';
import '/pages/home.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Center(
            child:  Text('Social and Portfoio',
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
                margin: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("assets/images/github.png",
                    height: 100,
                    ),
                   const Text("github.com/lucasherlon",
                      style: TextStyle(
                        color: Color(0xFFf9f9f9),
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
              ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/images/youtube.jpg",
                    height: 100,
                  ),
                  const Text("         @lucasherlon4396",
                    style: TextStyle(
                        color: Color(0xFFf9f9f9),
                        fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/images/linkedin.png",
                    height: 100,
                  ),
                  const Text("lucas-herlon-6596aa273",
                    style: TextStyle(
                        color: Color(0xFFf9f9f9),
                        fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/images/medium.png",
                    height: 100,
                  ),
                  const Text("  @lucasherlondsmc",
                    style: TextStyle(
                        color: Color(0xFFf9f9f9),
                        fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 44.0),
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
            ),
          ],
        )
      ],
      ),
    );
  }
}
