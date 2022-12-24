import 'package:flutter/material.dart';

class bio extends StatefulWidget {
  const bio({Key? key}) : super(key: key);

  @override
  State<bio> createState() => _bioState();
}

class _bioState extends State<bio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 200,
                width: 200,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  // borderRadius: BorderRadius.circular(100),
                  image:  DecorationImage(
                    image: AssetImage("image/IMG_20210609_234514-01.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              /* CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage('images/NIDHIN.jpg',),
                  // child: Image.asset('images/NIDHIN.jpg',fit: BoxFit.cover,),
                ),*/
              SizedBox(height: 25,),
              Text("HEY... NIDHIN !",style:TextStyle(fontFamily:'RobotoSlab',fontWeight: FontWeight.w900,fontSize: 25),),
              SizedBox(height: 25,),
              Text("Happy a great day ahead. A new day, a new life, a new journey unfolds. Have a beautiful day my friend. Wishing a wonderful day to a wonderful person.",style:TextStyle(fontWeight: FontWeight.w500,fontSize: 24),),
            ],
          ),
        ),
      ),
    );
  }
}
