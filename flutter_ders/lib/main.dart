import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; //firebase kütüphaneleri
import 'package:flutter_ders/pages/login_register_page.dart';
import 'firebase_options.dart'; //firebase kütüphaneleri

void main() async {
  WidgetsFlutterBinding.ensureInitialized();//firebase eklentisi
  //firebase içeri aktarma kodu
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //Firebase
  //.....
  runApp(const WidgetDetail());
}

class WidgetDetail extends StatelessWidget {
  const WidgetDetail({super.key});

  @override
  Widget build(BuildContext context) { //İçerik Kısmı 
    return MaterialApp(
      home: const LoginRegisterPage(),//home başlangıç yeridir ben deneme amaçlı login sayfasını görmek için ekledim 
      // Scaffold(//Aşağıdakiler Giriş Sayfasına Aittir
      //   appBar: AppBar(
      //     title: const Text("Uygulamanın Adı"),
      //     centerTitle: true,
      //     backgroundColor: Colors.deepOrange,
          
      //   ),
      //   body: LayoutBuilder(
      //     builder: (context, constraints) {
      //       final screenWidth = constraints.maxWidth;
      //       final screenHeight = constraints.maxHeight;
            
      //       return Stack(
      //         children: [ //BUTONLARIN TANIMLANDIĞI YER
      //           // Main content with centered Login button
      //           Center(
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 // Login Button - responsive sizing
      //                 SizedBox(
      //                   width: screenWidth * 0.6, // 60% of screen width
      //                   height: screenHeight * 0.07, // 7% of screen height
      //                   child: ElevatedButton(
      //                     onPressed: () {//Giriş Yap butonuna tıklandığında çalışacak fonksiyon
      //                       // Add login functionality here
      //                       //debugPrint('Login pressed');
      //                     },
      //                     style: ElevatedButton.styleFrom(
      //                       backgroundColor: Colors.deepOrange,
      //                       foregroundColor: Colors.white,
      //                       shape: RoundedRectangleBorder(
      //                         borderRadius: BorderRadius.circular(screenWidth * 0.06), // Responsive border radius
      //                       ),
      //                       elevation: 5,
      //                     ),
      //                     child: Text(
      //                       'Giriş Yap',
      //                       style: TextStyle(
      //                         fontSize: screenWidth * 0.045, // Responsive font size
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
                
      //           // KAYIT OL BUTONU
      //           Positioned(
      //             bottom: 0,
      //             left: 0,
      //             right: 0,
      //             child: SizedBox(
      //               height: screenHeight * 0.12, // 12% of screen height
      //               child: ElevatedButton(
      //                 onPressed: () {//Kayıt Ol butonuna tıklandığında çalışacak fonksiyon
                        
      //                 },
      //                 style: ElevatedButton.styleFrom(
      //                   backgroundColor: Colors.grey.withValues(alpha: 0.05),
      //                   foregroundColor: Colors.black87,
      //                   shape: RoundedRectangleBorder(
      //                     borderRadius: BorderRadius.only(
      //                       topLeft: Radius.circular(screenWidth * 0.06), // Responsive border radius
      //                       topRight: Radius.circular(screenWidth * 0.06), // Responsive border radius
      //                     ),
      //                   ),
      //                   elevation: 3,
      //                 ),
      //                 child: Text(
      //                   'Kayıt Ol',
      //                   style: TextStyle(
      //                     fontSize: screenWidth * 0.045, // Responsive font size
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
