# 🧠 CoreOS

🔧 Özelleştirilmiş Windows Deneyimi

---

## 📖 Kurulum Kılavuzu

### ⚙️ Gereksinimler

Aşağıdaki araçların sisteminizde kurulu olması gerekir:

* [7-Zip](https://www.7-zip.org/)
* [NTLite](https://www.ntlite.com/)
* [Git](https://git-scm.com/)

---

### 📥 1. Gerekli Dosyaları İndir

* Terminal / CMD açın ve repoyu klonlayın:

  ```bash
  git clone https://github.com/UygunUmitcan/CoreOS.git
  ```

* Windows ISO dosyasını buradan indirin:
  [Windows 10 IoT Enterprise LTSC 2021 ISO](https://drive.massgrave.dev/en-us_windows_10_iot_enterprise_ltsc_2021_x64_dvd_257ad90f.iso)

---

### 🗂️ 2. ISO Dosyasını Hazırla

* ISO dosyasını **7-Zip** kullanarak bir klasöre çıkartın.
* Bu klasörü **NTLite** ile açın ve **Stage1 XML** dosyasını *preset* olarak ekleyip yükleyin.

---

### 🧪 3. Dosyaları Gerekli Konumlara Kopyalayın

* **scripts/** klasöründeki `drive` klasörünü, mount edilmiş ISO klasörünün kök dizinine atın.

* `scripts/windows` içeriğini, ISO klasöründeki `Windows` dizinine aktarın.

* `scripts/startup` içeriğini şu dizine kopyalayın:

  ```
  ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp
  ```

* `msx/`, `post/` ve `browser/` klasörlerini şu dizine kopyalayın:

  ```
  Users\Default\Desktop
  ```

  * Ardindan export edebilirsiniz.
---

### 🧹 4. Temizlik İşlemleri

* ISO klasöründe oluşan `NTLite.log` ve `Auto Saved*` ile başlayan tüm `.xml` dosyalarını silin.
* `sources/` klasörü içinde boş olan klasörleri kaldırın.

---

### 📦 5. Stage2 ve ISO Oluşturma

* **Stage2**'yi uygulayın ve export almaya başlayın.
* İşlem sonunda tekrar `NTLite.log` ve `Auto Saved*` dosyalarını silin.

---

### 💽 6. ISO Oluştur

1. ISO klasörünün son halini masaüstüne atın ve klasörün adını şuna çevirin:

   ```
   Win10_21H2_Kernel_x64v1
   ```

2. `cdimage.exe` dosyasını da masaüstüne taşıyın.

3. Masaüstünde `cmd` (Komut İstemi) açın ve aşağıdaki komutu çalıştırın (komut `iso.txt` dosyasında mevcut):

   ```cmd
   cdimage.exe -bootdata:2#p0,e,b"C:\Users\Administrator\Desktop\Win10_21H2_Kernel_x64v1\boot\etfsboot.com"#pEF,e,b"C:\Users\Administrator\Desktop\Win10_21H2_Kernel_x64v1\efi\microsoft\boot\efisys.bin" -o -m -u2 -udfver102 -t12/31/2000,15:01:00 -l"Kernel for Windows 10 21H2" C:\Users\Administrator\Desktop\Win10_21H2_Kernel_x64v1 Win10_21H2_Kernel_x64v1.iso
   ```

---

## ✅ Hepsi Bu Kadar!

Kurulum başarıyla tamamlandı. Herhangi bir hata veya öneriniz varsa, lütfen [Issues](https://github.com/UygunUmitcan/CoreOS/issues) kısmında belirtin.

---

## 🙏 Katkı Sağla

Projenin gelişimine katkı sağlamak için pull request gönderebilir ya da yıldız vererek destek olabilirsiniz!

---
