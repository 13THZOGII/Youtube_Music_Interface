import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity, height: 120,
              decoration: BoxDecoration
                (gradient: LinearGradient(
                  colors: [const Color.fromRGBO(62, 36, 17, 1), const Color.fromRGBO(48, 14, 32, 1)])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15,right: 10,left: 10,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/image/logo2.png", width: 100,),
                        Row(
                          children: [
                            Icon(Icons.podcasts, color: Colors.white,),
                            SizedBox(width: 15,),
                            Icon(Icons.search, color: Colors.white,),
                            SizedBox(width: 15,),
                            CircleAvatar(backgroundImage: AssetImage("assets/image/8.png"), radius: 20,),
                          ],
                        )
                      ],),
                  ),
                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        onerikutu("Enerjik"),
                        onerikutu("Antrenman"),
                        onerikutu("Keyifli"),
                        onerikutu("Rahatlama"),
                        onerikutu("Parti"),
                        onerikutu("Odaklanma"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container(
              width: double.infinity,
              color: Color.fromRGBO(7, 5, 8, 1),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BİR ŞARKIDAN RADYO BAŞLATIN", style: TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hızlı Seçimler ", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(15)
                            ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 3, bottom: 3, right: 9, left: 9),
                                child: Text("Tümünü Oynat", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                              ))
                        ],
                      ),
                      Row(),
                      SizedBox(height: 5,),
                      album("assets/image/cover1.jpg", "Moments","PaulWetz & Dillistone" ),
                      album("assets/image/cover2.jpg", "Warrior","Oscar & The Wolf" ),
                      album("assets/image/cover3.jpg", "Cymatics","Nigel Stanford" ),
                      album("assets/image/cover4.jpg", "Adele","Lady In Black" ),
                      album("assets/image/cover5.jpg", "Coldplay","Paradise" ),
                      album("assets/image/cover6.jpg", "Mr.Kitty","After Dark" ),
                      album("assets/image/cover7.jpg", "Glass Animals","Heat Waves" ),
                      album("assets/image/cover8.jpg", "Eiffel 65","Blue (Da Ba Dee)" ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Önerilen Oynatma Listeleri ", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 3, bottom: 3, right: 9, left: 9),
                                child: Text("Diğer", style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                              ))
                        ],
                      ),
                      SizedBox(height: 15,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            album2("assets/image/cover9.jpg", "The Miracle", "Queen"),
                            SizedBox(width: 20,),
                            album2("assets/image/cover10.jpg", "Wrecking Ball", "Miley Cyrus"),
                            SizedBox(width: 20,),
                            album2("assets/image/cover11.jpg", "More Life", "Drake"),
                            SizedBox(width: 20,),
                            album2("assets/image/cover12.jpg", "S&M (Reload)", "Metallica"),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            )
            ),
            Container(width: double.infinity, color: Color.fromRGBO(33, 33, 33, 1), height: 60,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8, right: 30,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.home, color: Colors.white,),
                        Text("Ana Sayfa", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.slow_motion_video, color: Colors.white,),
                        Text("Sana Özel", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.explore, color: Colors.white,),
                        Text("Keşfet", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.play_lesson, color: Colors.white,),
                        Text("Kitaplık", style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row album2(String photo2, String title2, String Artist2) {
    return Row(
                      children: [
                        Column(
                          children: [
                            Image.asset(photo2, width: 185,),
                            SizedBox(height: 5,),
                            Text(Artist2, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                            Text(title2,style: TextStyle(color: Color.fromARGB(255, 181, 181, 181), fontWeight: FontWeight.bold),),
                          ],
                        )
                      ],
                    );
  }

  Widget album(String photo, String title, String Artist) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(photo, width: 70,),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
                                Text(Artist,style: TextStyle(color: Color.fromARGB(255, 181, 181, 181), fontWeight: FontWeight.bold),),
                              ],

                            ),
                          ],
                        ),
                        Icon(Icons.more_horiz, color: Colors.white,),
                      ],
                    ),
    );
  }

  Container onerikutu(String text) {
    return Container(
        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 12.0, right: 12.0),
        margin: const EdgeInsets.only(left: 4,right: 4),
        decoration: BoxDecoration(
          color: Color.fromARGB(20, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: Color.fromARGB(37, 255, 255, 255)
          ),
        ),
        child: Text(text, style: TextStyle(color: Colors.white),));
  }
}