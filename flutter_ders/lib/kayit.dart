import 'package:flutter/material.dart';

class KayitPage extends StatefulWidget {
  const KayitPage({super.key});

  @override
  State<KayitPage> createState() => _KayitPageState();
}

class _KayitPageState extends State<KayitPage> {
  late String ad, sifre, email;

  adAl(adTutucu) {
    this.ad = adTutucu;
  }

  emailAl(emailTutucu) {
    this.email = emailTutucu;
  }

  sifreAl(sifreTutucu) {
    this.sifre = sifreTutucu;
  }

  // Görsel durum için değişkenler
  final bool _obscurePassword = true;
  final bool _obscureConfirmPassword = true;
  int _selectedOption = 0; // 0: Kurum Kaydı seçili varsayılan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Başlık Bölümü
              const Text(
                'Hesap Bilgilerinizi Giriniz',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),

              // İsim Alanı
              TextField(
                onChanged: (String adTutucu) {
                  adAl(adTutucu);
                },
                decoration: InputDecoration(
                  labelText: _selectedOption == 0 ? 'Kurum Adı' : 'Ad Soyad',
                  labelStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Email Alanı
              TextField(
                onChanged: (String emailTutucu) {
                  emailAl(emailTutucu);
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 32),

              // Şifre Alanı
              TextField(
                onChanged: (String sifreTutucu) {
                  sifreAl(sifreTutucu);
                },
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  labelStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      // İşlev eklenebilir
                    },
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Şifre Tekrar Alanı
              TextField(
                decoration: InputDecoration(
                  labelText: 'Şifre Tekrar',
                  labelStyle: const TextStyle(color: Colors.grey),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureConfirmPassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      // İşlev eklenebilir
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),

              const Spacer(),

              // --- SEÇİM BUTONLARI (ElevatedButton'a çevrildi) ---
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Birinci Buton (Kurum)
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedOption = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        // Arka plan rengi mantığı
                        backgroundColor: _selectedOption == 0
                            ? const Color.fromARGB(255, 96, 96, 96)
                            : Colors.white,
                        // Yazı rengi mantığı
                        foregroundColor:
                            _selectedOption == 0 ? Colors.white : Colors.black,
                        // Kenarlık (Border)
                        side: const BorderSide(color: Colors.black, width: 1.5),
                        // Şekil (Radius)
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        // İç boşluk (Container padding yerine)
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        // Gölgeyi kaldırdık (Orijinal tasarımda düzdü)
                        elevation: 0,
                      ),
                      child: const Text(
                        'Kurum Kaydı',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  
                  // İkinci Buton (Veli)
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedOption = 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _selectedOption == 1
                            ? const Color.fromARGB(255, 96, 96, 96)
                            : Colors.white,
                        foregroundColor:
                            _selectedOption == 1 ? Colors.white : Colors.black,
                        side: const BorderSide(color: Colors.black, width: 1.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        elevation: 0,
                      ),
                      child: const Text(
                        'Veli Kaydı',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // --- KAYIT OL BUTONU (ElevatedButton'a çevrildi) ---
              SizedBox(
                width: double.infinity, // Genişliği tam kaplaması için
                child: ElevatedButton(
                  onPressed: () {
                    // Kayıt Butonu İşlevi
                    veriEkle();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Buton rengi
                    foregroundColor: Colors.white, // Yazı ve efekt rengi
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    // Orijinaldeki gölgeye benzer bir efekt için:
                    elevation: 8,
                    shadowColor: Colors.black.withValues(alpha: 0.3),
                  ),
                  child: const Text(
                    'Kayıt Ol',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void veriEkle() {
    Map<String, dynamic> kurumlar = {
      "kurumAd": ad,
      "kurumEmail": email,
      "kurumŞifre": sifre,
    };
    print("Veri eklendi: $kurumlar");
  }
}