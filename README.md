# FalciApp

 Kullanılan Teknolojiler
	•	Flutter (Dart)
	•	Material Design
	•	Stateful Widget yapısı
	•	Asset yönetimi (Görsel dosyalar)
	•	Rastgele veri seçimi (dart:math)


Fal küresi görselini assets/ klasörüne koyduğunuzdan ve pubspec.yaml dosyanızda tanımladığınızdan emin olun.


 Başlarken

Projeyi çalıştırmak için aşağıdaki adımları takip edebilirsiniz:

• git clone https://github.com/kullaniciadi/falciapp.git
• cd falciapp
• flutter pub get
• flutter run


Assets
	•	assets/falci.png → Uygulama içindeki görsel.
pubspec.yaml dosyasına şu şekilde tanımlanmalı:

flutter:
  assets:
    - assets/falci.png


Özellikler
	•	Aşk, para ve tavsiye kategorilerinde rastgele günlük yorumlar.
	•	Hafif animasyonlar ve kullanıcı dostu arayüz.
	•	Renk uyumu ve sade tasarım.
	•	Responsive yapı.

Ekran Akışı
	1.	Kullanıcı uygulamayı açar.
	2.	Fal küresi görseli ve 3 kategori görünür:
	•	 Aşk Durumu
	•	 Para Durumu
	•	Günlük Tavsiye
 Her kategoriye tıklanıldığında, ilgili alandan rastgele bir fal yanıtı gösterilir.
