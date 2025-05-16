# UTS_JSP_nuraziizahfebrianti_22110648_L2022
## Deskripsi Project

Project ini merupakan aplikasi web sederhana untuk pemesanan tiket bioskop online menggunakan *Java JSP (tanpa database)*.  
Aplikasi ini mencakup:

- Menampilkan daftar film Korea dan jam tayangnya.
- Formulir pemesanan tiket berdasarkan pilihan film dan jam tayang.
- Menampilkan struk pemesanan berisi detail transaksi pengguna.

Fitur disimpan menggunakan *session dan request JSP, serta menggunakan **Bootstrap 5* untuk tampilan UI responsif.

---

## Screenshot Output

### 1. Halaman Daftar Film (index.jsp)

![Screenshot (106)](https://github.com/user-attachments/assets/dbaea44c-298e-44b1-aee8-89535df5ed54)

### 2. Formulir Pemesanan Tiket (formPesan.jsp)

![Screenshot (111)](https://github.com/user-attachments/assets/e2965867-605d-4ad2-b2ad-faa3376573d1)


### 3. Hasil Struk Pemesanan Tiket (struk.jsp)

![Screenshot (110)](https://github.com/user-attachments/assets/5e442535-a50e-45c4-8622-ed2a8bee8bed)

> Simpan gambar-gambar di folder /screenshots di dalam repository GitHub Anda.

---

## Instruksi Menjalankan Aplikasi

1. *Persiapan*
   - Pastikan Anda memiliki Apache Tomcat dan IDE seperti Eclipse atau IntelliJ IDEA.
   - Pastikan Java sudah terinstall (Java 8 atau lebih tinggi).

2. *Langkah-langkah*
   - Clone repository ini:
     bash
     git clone https://github.com/username/UTS_JSP_225411234_NamaLengkap.git
     
   - Buka project di IDE Anda dan deploy ke server Tomcat.
   - Jalankan aplikasi melalui:
     
     http://localhost:8080/NamaProject/index.jsp
     

---

## Struktur File Utama

/webapp │ ├── index.jsp          → Menampilkan daftar film ├── formPesan.jsp      → Form input pemesanan tiket ├── struk.jsp          → Menampilkan hasil pemesanan ├── /screenshots       → Berisi screenshot hasil aplikasi └── /WEB-INF └── web.xml        → Konfigurasi servlet (jika diperlukan)

---

## Catatan

- Proyek ini tidak menggunakan database (data disimpan sementara di session dan request).
- Proyek *wajib bisa dijalankan*. Pastikan Anda mengujinya sebelum submit.

---

## License

Project UTS JSP ini disusun sebagai tugas UTS oleh [Nama Lengkap], [NIM], [Universitas Anda].


---

Yang Perlu Kamu Lakukan:

1. Ganti:

225411234 → NIM kamu.

NamaLengkap → Namamu.

username di link GitHub kamu.



2. Buat folder screenshots/ dan tambahkan 3 gambar:

index.png

formPesan.png

struk.png
