# Karate API Test Framework
 
Karate API Test Framework projesine hoş geldiniz! Bu proje, Karate DSL kullanılarak API testleri için sağlam ve kullanıcı dostu bir çerçeve sunmak için tasarlanmıştır. İster deneyimli bir test uzmanı olun ister yeni başlıyor olun, bu depo API'leri etkili ve verimli bir şekilde test etmek için ihtiyacınız olan her şeyi sağlar.

## 📋 İçindekiler
- [Genel Bakış](#genel-bakış)
- [Özellikler](#özellikler)
- [Kurulum](#kurulum)
- [Kullanım](#kullanım)
- [Klasör Yapısı](#klasör-yapısı)
- [Test Yazma](#test-yazma)
- [Testleri Çalıştırma](#testleri-çalıştırma)
- [Raporlama](#raporlama)
- [Katkıda Bulunma](#katkıda-bulunma)

## 🔍 Genel Bakış
Karate, API testlerini yazmayı, yürütmeyi ve yönetmeyi basitleştiren güçlü bir API test çerçevesidir. Bu proje, Karate'nin yeteneklerini şu amaçlarla kullanır:
- RESTful API'leri doğrulama
- API iş akışlarını otomatikleştirme
- CI/CD boru hatlarına entegrasyon

## ⭐ Özellikler
- **Kullanımı Kolay:** Okunabilir, Gherkin benzeri bir söz dizimiyle test yazın.
- **Güçlü Doğrulamalar:** Yerleşik JSON ve XML karşılaştırma desteği.
- **Tekrar Kullanılabilirlik:** Testleri yeniden kullanılabilir ve sürdürülebilir hale getirin.
- **Sorunsuz Entegrasyon:** Jenkins, GitHub Actions ve diğer CI/CD araçlarıyla uyumlu.
- **Kapsamlı Raporlama:** Detaylı HTML raporları oluşturun.

## 🛠️ Kurulum

### Gereksinimler
- **Java Development Kit (JDK):** Sürüm 11 veya daha yeni.
- **Maven:** Maven yüklü ve PATH'e ekli olduğundan emin olun.

### Depoyu Klonlayın
```bash
git clone https://github.com/seflekL/karate_api.git
cd karate_api
```

### Bağımlılıkları Yükleyin
Tüm gerekli bağımlılıkları yüklemek için aşağıdaki Maven komutunu çalıştırın:
```bash
mvn clean install
```

## 🚀 Kullanım

### Testleri Çalıştırma
Tüm testleri Maven kullanarak çalıştırın:
```bash
mvn test
```

### Belirli Bir Testi Çalıştırma
Belirli bir testi çalıştırmak için şu komutu kullanın:
```bash
mvn test -Dkarate.options="classpath:features/<feature_name>.feature"
```

### Raporlama
Detaylı test raporları oluşturun:
```bash
mvn clean test-compile
```

Raporlar `target/surefire-reports` dizininde bulunacaktır.

## 📁 Klasör Yapısı
```
karate_api/
├── src/
│   ├── test/
│   │   ├── java/
│   │   ├── resources/
│   │   │   └── features/
│   │   │       └── example.feature
│   │   └── karate-config.js
├── pom.xml
```
- **features/**: API testleri için tüm feature dosyalarını içerir.
- **karate-config.js**: Karate testleri için genel yapılandırma dosyası.
- **pom.xml**: Maven yapılandırma dosyası.

## ✍️ Test Yazma

Testler, Gherkin söz dizimi kullanılarak `.feature` dosyalarında yazılır. İşte bir örnek:
```gherkin
Feature: Örnek bir API uç noktasını test edin

  Scenario: Yanıt durumunu ve içeriği doğrulayın
    Given url 'https://example.com/api'
    When method GET
    Then status 200
    And match response == { "message": "success" }
```

## 🤝 Katkıda Bulunma

Katkılarınızı memnuniyetle karşılıyoruz! Lütfen şu adımları izleyin:
1. Depoyu fork edin.
2. Özellik veya hata düzeltmeniz için yeni bir dal oluşturun.
3. Bir pull request gönderin.

Herhangi bir sorunuz veya geri bildiriminiz için, bu depoda bir issue açabilirsiniz.

---

🎉 **Karate ile Keyifli Testler!** 🎉

