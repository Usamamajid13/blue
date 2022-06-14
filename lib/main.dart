import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            )),
          ),
          Positioned(
            bottom: 20,
            left: 20,right: 20,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 300,
              child: BlurryContainer(
                color: Colors.white.withOpacity(0.15),
                blur: 8,
                elevation: 6,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text("Touch ID",style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                    ),),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Put your finger on the scanner",style: TextStyle(
                      color: Colors.white.withOpacity(0.4),
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.lightBlueAccent,
                            offset: Offset(0,-3),
                            blurRadius: 2
                          ),
                          BoxShadow(
                            color: Color(0xff27283A),
                            offset: Offset(0,1),
                            blurRadius: 2
                          ),
                        ],
                        color: Color(0xff27283A),
                      ),
                      child: Image.asset("assets/finger-print.png",color: Colors.white,scale: 10,),
                    )


                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
