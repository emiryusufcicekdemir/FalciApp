import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Günün Falı ve Burç Yorumu',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 4,
        ),
        textTheme: Theme.of(
          context,
        ).textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
        cardTheme: CardThemeData(
          // CardThemeData kullanılmalı
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

enum Burc {
  koc,
  boga,
  ikizler,
  yengec,
  aslan,
  basak,
  terazi,
  akrep,
  yay,
  oglak,
  kova,
  balik,
}

enum FalKategorisi { ask, para, tavsiye, baslangic }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Map<Burc, String> burcAdlari = {
    Burc.koc: 'KOÇ',
    Burc.boga: 'BOĞA',
    Burc.ikizler: 'İKİZLER',
    Burc.yengec: 'YENGEÇ',
    Burc.aslan: 'ASLAN',
    Burc.basak: 'BAŞAK',
    Burc.terazi: 'TERAZİ',
    Burc.akrep: 'AKREP',
    Burc.yay: 'YAY',
    Burc.oglak: 'OĞLAK',
    Burc.kova: 'KOVA',
    Burc.balik: 'BALIK',
  };

  // burc ve kategori fal icerikleri map
  final Map<Burc, Map<FalKategorisi, String>> burcFalIcerikleri = {
    Burc.koc: {
      FalKategorisi.ask:
          'AŞK: Koç için bugün, ilişkinizde heyecan verici bir kıvılcım var. Ancak ani tepkilerden kaçının, sabır zafer getirecektir.',
      FalKategorisi.para:
          'PARA: Koç için bugün, beklenmedik bir yerden ek gelir kapıda. Hızlı kararlar yerine, uzun vadeli yatırım planlarına odaklanın.',
      FalKategorisi.tavsiye:
          'TAVSİYE: Koç için bugün, enerjinizi yapıcı işlere yönlendirin. Günün ilk yarısında atacağınız adımlar, haftanın geri kalanını şekillendirecek.',
    },
    Burc.boga: {
      FalKategorisi.ask:
          'AŞK: Boğa için bugün, partnerinizle aranızdaki bağ güçleniyor. Huzur ve güven arayışınız karşılık bulacak, romantik bir akşam sizi bekliyor.',
      FalKategorisi.para:
          'PARA: Boğa için bugün, maddi konularda stabilite hakim. Gereksiz harcamalardan uzak durarak birikim yapma hedefinize sadık kalın.',
      FalKategorisi.tavsiye:
          'TAVSİYE: Boğa için bugün, kendinize zaman ayırın. Doğayla iç içe kısa bir yürüyüş, zihinsel dinginliğinizi artıracak.',
    },
    Burc.ikizler: {
      FalKategorisi.ask:
          'AŞK: İkizler için bugün, iletişim ön planda. Partnerinizle açık ve dürüst bir konuşma, küçük yanlış anlaşılmaları giderecek.',
      FalKategorisi.para:
          'PARA: İkizler için bugün, yeni iş bağlantıları veya anlaşmalar gündemde. Detayları gözden kaçırmayın, küçük yazışmalar büyük önem taşıyabilir.',
      FalKategorisi.tavsiye:
          'TAVSİYE: İkizler için bugün, birden fazla konuya odaklanmak yerine en önemli görevlerinizi önceliklendirin. Dikkatinizi tek bir hedefe yoğunlaştırın.',
    },
    Burc.yengec: {
      FalKategorisi.ask:
          'AŞK: Yengeç için bugün, duygusal ihtiyaçlarınız artıyor. Sevdiklerinizle vakit geçirmek size iyi gelecek. Hassasiyetinizi güce dönüştürün.',
      FalKategorisi.para:
          'PARA: Yengeç için bugün, ev ve aile ile ilgili harcamalar olabilir. Bütçenizi bu alana göre ayarlayın. Aile büyüklerinden destek görebilirsiniz.',
      FalKategorisi.tavsiye:
          'TAVSİYE: Yengeç için bugün, sezgilerinize güvenin. İç sesiniz size doğru yolu gösterecek. Kendinizi koruma altına alın.',
    },
    Burc.aslan: {
      FalKategorisi.ask:
          'AŞK: Aslan için bugün, parlayacağınız bir gün. İlgi odağı olmak hoşunuza gidecek. Partnerinize karşı cömertliğinizi gösterin.',
      FalKategorisi.para:
          'PARA: Aslan için bugün, profesyonel hayatınızdaki başarılar maddi kazanca dönüşebilir. Kendinize güvenle hak ettiğinizi talep edin.',
      FalKategorisi.tavsiye:
          'TAVSİYE: Aslan için bugün, yaratıcılığınızı serbest bırakın. Hobilerinize zaman ayırmak, enerjinizi yeniden dolduracak.',
    },
    Burc.basak: {
      FalKategorisi.ask:
          'AŞK: Başak için bugün, ilişkinizdeki detaylar her zamankinden önemli. Eleştirel olmaktan kaçının, yapıcı yaklaşım daha iyi sonuçlar verir.',
      FalKategorisi.para:
          'PARA: Başak için bugün, bütçe ve borçlar konusunda titiz bir planlama yapma zamanı. Harcamalarınızı analiz ederek gereksiz masrafları kesin.',
      FalKategorisi.tavsiye:
          'TAVSİYE: Başak için bugün, karmaşık bir problemi parçalara ayırarak çözün. Mükemmeliyetçilik yerine, ilerlemeye odaklanın.',
    },
    Burc.terazi: {
      FalKategorisi.ask:
          'AŞK: Terazi için bugün, denge ve uyum arayışınız ilişkilerinize yansıyor. Partnerinizle ortak kararlar alarak bağınızı güçlendirin.',
      FalKategorisi.para:
          'PARA: Terazi için bugün, finansal ortaklıklar veya işbirlikleri olumlu sonuç verebilir. Adil bir çözüm yolu bulmak, kazancınızı artırır.',
      FalKategorisi.tavsiye:
          'TAVSİYE: Terazi için bugün, kararsız kaldığınız bir konuda adım atın. En kötü karar bile, kararsızlıktan iyidir.',
    },
    Burc.akrep: {
      FalKategorisi.ask:
          'AŞK: Akrep için bugün, yoğun duygular ön planda. Derin bağlantılar kurma isteğiniz yüksek. Kıskançlık yerine güveni tercih edin.',
      FalKategorisi.para:
          'PARA: Akrep için bugün, gizli kalmış bir kazanç veya miras konusu gündeme gelebilir. Maddi sırlarınızı dikkatli yönetin.',
      FalKategorisi.tavsiye:
          'TAVSİYE: Akrep için bugün, iç gözlem yapın. Kendinizle yüzleşmek, kişisel gelişiminiz için güçlü bir adımdır.',
    },
    Burc.yay: {
      FalKategorisi.ask:
          'AŞK: Yay için bugün, ilişkinizde macera ve keşif isteği var. Partnerinizle yeni bir şeyler deneyin veya seyahat planları yapın.',
      FalKategorisi.para:
          'PARA: Yay için bugün, eğitim veya uzun mesafeli işlerle ilgili harcamalar olabilir. Büyük resmi görerek küçük maliyetleri göz ardı edin.',
      FalKategorisi.tavsiye:
          'TAVSİYE: Yay için bugün, felsefi konulara merak salın. Yeni bir dil öğrenmek veya ufkunuzu genişletmek için harika bir gün.',
    },
    Burc.oglak: {
      FalKategorisi.ask:
          'AŞK: Oğlak için bugün, ilişkinize ciddiyet ve sorumluluk katıyorsunuz. Partnerinize olan bağlılığınızı somut adımlarla gösterin.',
      FalKategorisi.para:
          'PARA: Oğlak için bugün, kariyerinizden gelen sağlam bir gelir artışı söz konusu. Disiplinli çalışmanızın meyvelerini topluyorsunuz.',
      FalKategorisi.tavsiye:
          'TAVSİYE: Oğlak için bugün, uzun vadeli hedeflerinizi gözden geçirin. Bir plana sadık kalmak, sizi başarıya taşıyacak.',
    },
    Burc.kova: {
      FalKategorisi.ask:
          'AŞK: Kova için bugün, sosyal çevrenizdeki biriyle beklenmedik bir romantik kıvılcım yaşayabilirsiniz. Özgür ruhunuzu kısıtlamayın.',
      FalKategorisi.para:
          'PARA: Kova için bugün, teknoloji veya topluluk projeleri aracılığıyla kazanç sağlayabilirsiniz. Geleneksel olmayan yollar size para getirecek.',
      FalKategorisi.tavsiye:
          'TAVSİYE: Kova için bugün, bir arkadaşınızın sorununa yaratıcı bir çözüm bulun. Grup çalışmalarında aktif rol almanız gerekiyor.',
    },
    Burc.balik: {
      FalKategorisi.ask:
          'AŞK: Balık için bugün, romantizm dorukta. Hayal gücünüzü ilişkinize taşıyın. Ancak gerçeklikten kopmamaya dikkat edin.',
      FalKategorisi.para:
          'PARA: Balık için bugün, sanatsal veya ruhsal çalışmalarınızdan bir gelir elde edebilirsiniz. Maddi konularda çok detaycı olmayın.',
      FalKategorisi.tavsiye:
          'TAVSİYE: Balık için bugün, meditasyon veya dinlenmeye zaman ayırın. İç huzurunuzu sağlamak, günün stresini azaltacaktır.',
    },
  };

  // state degiskenleri
  Burc _currentBurc = Burc.koc;
  String _currentFal =
      'Lütfen burcunuzu seçin ve fal kategorilerinden birine tıklayın.';
  FalKategorisi _currentCategory = FalKategorisi.baslangic;

  // fali burc ve kategoriye göre cekme fonksiyonu
  void _falCek(FalKategorisi kategori) {
    final falYaniti =
        burcFalIcerikleri[_currentBurc]?[kategori] ??
        'Bu burç ve kategori için fal bulunamadı.';

    setState(() {
      _currentFal = falYaniti;
      _currentCategory = kategori;
    });
  }

  Widget _buildHorizontalBurcSelector() {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Burc.values.length,
        itemBuilder: (context, index) {
          final burc = Burc.values[index];
          final isSelected = _currentBurc == burc;

          return GestureDetector(
            onTap: () {
              setState(() {
                _currentBurc = burc;
                _currentFal =
                    'Burcunuz ${burcAdlari[burc]} olarak seçildi. Lütfen bir fal kategorisine tıklayın.';
                _currentCategory = FalKategorisi.baslangic;
              });
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: index == 0 ? 20 : 8,
                right: index == Burc.values.length - 1 ? 20 : 0,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
              decoration: BoxDecoration(
                color:
                    isSelected ? Colors.amber.shade400 : Colors.teal.shade400,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected ? Colors.white : Colors.teal.shade300,
                  width: 1.5,
                ),
              ),
              child: Text(
                burcAdlari[burc]!,
                style: TextStyle(
                  color: isSelected ? Colors.teal.shade900 : Colors.white,
                  fontWeight: isSelected ? FontWeight.w900 : FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCategoryCard({
    required FalKategorisi kategori,
    required String baslik,
    required IconData ikon,
    required Color renk,
  }) {
    final isSelected = _currentCategory == kategori;

    return GestureDetector(
      onTap: () => _falCek(kategori),
      child: Card(
        color: isSelected ? renk.withOpacity(0.8) : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Icon(ikon, color: isSelected ? Colors.white : renk),
                  const SizedBox(width: 15),
                  Text(
                    baslik,
                    style: TextStyle(
                      color: isSelected ? Colors.white : renk,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              if (isSelected)
                const Icon(Icons.auto_awesome, size: 20, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.teal.shade700,
      appBar: AppBar(title: const Text('BURCUNU SEÇ, FALINI GÖR 🔮')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _buildHorizontalBurcSelector(),
              Container(
                width: size.width * 0.4,
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                child: Image.asset('assets/falci.png'),
              ),

              _buildCategoryCard(
                kategori: FalKategorisi.ask,
                baslik: 'AŞK DURUMU',
                ikon: Icons.favorite,
                renk: Colors.redAccent,
              ),
              _buildCategoryCard(
                kategori: FalKategorisi.para,
                baslik: 'PARA DURUMU',
                ikon: Icons.monetization_on,
                renk: Colors.green.shade600,
              ),
              _buildCategoryCard(
                kategori: FalKategorisi.tavsiye,
                baslik: 'GÜNLÜK TAVSİYE',
                ikon: Icons.lightbulb,
                renk: Colors.blueAccent,
              ),

              const SizedBox(height: 30),

              // fal yanıtlari container
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 40.0,
                ),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.5),
                    width: 1.5,
                  ),
                ),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (
                    Widget child,
                    Animation<double> animation,
                  ) {
                    return ScaleTransition(scale: animation, child: child);
                  },
                  child: Text(
                    _currentFal,
                    key: ValueKey<String>(_currentFal),
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
