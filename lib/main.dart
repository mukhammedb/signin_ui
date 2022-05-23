import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
    );
  }
}

class SignInScreen extends StatefulWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfff5f3f4),
      body: SizedBox(
      height: size.height,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            const Text('Ассалам алайкум ',style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: size.height*0.02,),
            const Text(' Кош келиңиз ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30,)
            ,),
             SizedBox(
              height: size.height *0.07,
            ),
            Container(
              height: 55,
              padding: const EdgeInsets.only(left:15,right: 15 ),
              decoration: const BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12),),),
              child:  Center(
                child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Колдонуучунун аты'
              ),),
            ),),
             SizedBox(
              height: size.height *0.02,),
              Container(
              height: 55,
              padding: const EdgeInsets.only(left:15,right: 15 ),
              decoration: const BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12),),),
              child:  Center(
                child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Купуя сөз'
              ),),
            ),),
            SizedBox(
              height: size.height *0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                
                    },
                    child: const Text('Сыр сөздү калыбына келтирүү',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,),),
                  ),
                ],
              ),
              SizedBox(
              height: size.height *0.06,),
             SizedBox(height: 55,
             child: TextButton(onPressed: () {},
             style: ButtonStyle(backgroundColor: MaterialStateProperty.all(const Color(0xffBDB2ff))),
             child: const Center(child: 
              Text('Кирүү',style: TextStyle(color: Colors.white),
             ),
             ),
             ),
             ),
             SizedBox(
              height: size.height *0.05,),
              const Text('QR',style: TextStyle(color: Colors.grey),),
              SizedBox(
                height: size.height *0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                GestureDetector(onTap: () {},
                child: Container(
                  height: 60,
                  width: 90,
                  decoration: BoxDecoration(borderRadius:
                   const BorderRadius.all(Radius.circular(14),),
                   border: Border.all(color: Colors.white,width: 4,),
                   ),
                   child: const Center(child: Image(image: AssetImage('assets/google.png'),
                   width: 30,
                   ),),
                ),),
                GestureDetector(onTap: () {},
                child: Container(
                  height: 60,
                  width: 90,
                  decoration: BoxDecoration(borderRadius:
                   const BorderRadius.all(Radius.circular(14),),
                   border: Border.all(color: Colors.white,width: 4,),
                   ),
                   child: const Center(child: Image(image: AssetImage('assets/apple.png'),
                   width: 30,
                   ),),
                ),),
                GestureDetector(onTap: () {},
                child: Container(
                  height: 60,
                  width: 90,
                  decoration: BoxDecoration(borderRadius:
                   const BorderRadius.all(Radius.circular(14),),
                   border: Border.all(color: Colors.white,width: 4,),
                   ),
                   child: const Center(child: Image(image: AssetImage('assets/facebook.png'),
                   width: 30,
                   ),),
                ),)
              ],), 
              SizedBox(height: size.height *0.06,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                RichText(text: const TextSpan(children:[
                  TextSpan(text: 'Мүчө эмес?',
                  style: TextStyle(color: Colors.grey,),),
                  TextSpan(text: 'Азыр катталуу',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff95d5Be5),),),
                ] ))
              ],)
          ],),

        ),
         ),
    );
  }
}