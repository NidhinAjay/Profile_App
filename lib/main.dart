import 'package:flutter/material.dart';
import 'profile.dart';
void main() {
  runApp(MaterialApp(home:const profile(),debugShowCheckedModeBanner: false,));
}
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor:Colors.black,
              radius: 75,
              backgroundImage: AssetImage('image/IMG.jpeg',),
            ),
            SizedBox(height: 20,),
            Padding(
              padding:EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Email"),border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(30),
                ),
                    hintText: "abc@gmail.com"
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding:EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Password"),suffixIcon:Icon(Icons.remove_red_eye),border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(30),
                ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>bio(),),);
                }, child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 110,vertical: 15,
                  ),
                  child: Text("Login now",style:TextStyle(color:Colors.white,fontSize: 18)
                  ,),
                ),
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.cyan)
                ),
              ),
              ),
            SizedBox(height: 20,),
            TextButton(onPressed: (){},
              child: Text("Forgot password?",style:TextStyle(color:Colors.black),),),
          ],
        ),
      ),
    );
  }
}
