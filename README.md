# Mini Project 1 PAB
Nama  : Nabila Imtiyaz Agustin

NIM   : 2409116011

Kelas : A

Sistem Informasi '2024

# <sub>Deskripsi Aplikasi</sub>

<img width="339" height="290" alt="image" src="https://github.com/user-attachments/assets/17200a3a-124a-4c10-827f-6a22298f6415" />

Intellecta Bimbel adalah aplikasi manajemen data siswa SMA kelas 10, 11, dan 12 yang berbasis Flutter untuk bimbingan belajar dan dirancang agar dapat membantu proses administrasi agar lebih terstruktur, efisien, dan mudah dikelola.

Aplikasi ini dapat digunakan untuk menginput data siswa berdasarkan mata pelajaran, melihat hasil inputan, mengedit dan menghapus data yang telah diinput.

Aplikasi ini terdiri dari beberapa halaman utama dengan fungsi yang berbeda. Berikut adalah penjelasannya.

**1. Home Page (Halaman Utama)**

<img width="1904" height="863" alt="image" src="https://github.com/user-attachments/assets/3d9334f5-6647-49fb-9df2-c8ccf70888d8" />

Gambar diatas adalah tampilan awal aplikasi saat pertama kali dibuka, yang menampilkan identitas aplikasi (logo dan nama Intellecta Bimbel). Menyediakan dua menu utama, yaitu input data siswa dan rekap data siswa. Halaman ini di desain dengan tampilan wrna yang dominan pink dan abu-abu.

**2. Input Data Page (Halaman Form Input Data Siswa)**

<img width="1908" height="868" alt="image" src="https://github.com/user-attachments/assets/52fc510e-783f-4cab-bf98-4680670b02e4" />

Tampilan pada gambar adalah tampilan sebelum menginputkan data, akan ada pilihan dari mata pelajaran bimbel yang dipilih oleh siswa.

<img width="1908" height="666" alt="image" src="https://github.com/user-attachments/assets/fa13a66d-8978-4026-9afe-1d39101f0151" />

<img width="1916" height="309" alt="image" src="https://github.com/user-attachments/assets/adb55058-12f0-49bb-bb3c-b0bc079561b1" />

Gambar diatas adalah tampilan halaman dari data data yang harus diinputkan.

**3. Rekap Data Page (Halaman Rekap Data**

<img width="1910" height="866" alt="image" src="https://github.com/user-attachments/assets/f35fc9a8-5798-4325-b682-7e2528d2f02d" />

Halaman ini menampilkan seluruh data siswa yang telah dimasukkan sebelumnya. Didalam halaman ini juga dapat mengupdate/mengedit data dan menghapus data.

# <sub>Fitur Aplikasi</sub>

Berikut adalah penjelasan fitur-fitur yang ada dalam aplikasi Intellecta Bimbel:

**1. Fitur Pemilihan Mata Pelajaran**

<img width="1904" height="863" alt="image" src="https://github.com/user-attachments/assets/3d9334f5-6647-49fb-9df2-c8ccf70888d8" />

<img width="981" height="419" alt="image" src="https://github.com/user-attachments/assets/4120690d-486e-40e0-99ef-18042b718476" />

Fitur pada gambar diatas adalah fitur pemilihan mata pelajaran yang terdapat di home page. Tampilannya menggunakan Bottom Sheet (muncul dari bawah layar).
Kegunaannya adalah untuk menentukan mata pelajaran sebelum menginput data siswa. Hal ini membantu mengelompokkan siswa berdasarkan bidang belajar yang mereka ambil. 

Dengan cara kerjanya yaitu pengguna menekan tombol "Input Data Siswa", lalu akan muncul pilihan Matematika, Bahasa Inggris, dan Informatika. Setelah dipilih, sistem akan membuka halaman Input Data Page dengan mata pelajaran tersebut otomatis tersimpan.

**2. Fitur Input Data Siswa**

<img width="1900" height="864" alt="image" src="https://github.com/user-attachments/assets/3fa9be2e-ba69-4ef7-ac65-0a888d600303" />

Gambar diatas adalah tampilan yang terdapat pada Input data Page. Tampilan ini menggunakan Form input dengan TextField dan Dropdown. Kegunaannya adalah untuk menambahkan data siswa baru ke dalam sistem.

Data yang diinput antara lain:
- Nama
- Tempat, Tanggal Lahir
- Alamat
- No HP
- Asal Sekolah
- No HP Orang Tua
- Kelas (Dropdown
- Jam Bimbel (Dropdown)

Setelah klik "Simpan", data akan masuk ke halaman Rekap Data Page.

**3. fitur Validasi Form**

<img width="313" height="122" alt="image" src="https://github.com/user-attachments/assets/226d4db0-b822-41c9-9ae4-0bfc26f7353b" />

Gambar fitur diatas terdapat pada halaman Input Data Page, yang dimana ini merupakan tampilan pesan error dibawah field. Kegunaannya tidak lain adalah untuk mencegah data kosong atau tidak lengkap tersimpan.

Dengan cara kerjanya yaitu ketika pengguna tidak mengisi salah satu Field, maka akan muncul pesan sebagai contoh "Nama tidak boleh kosong". Manfaat menggunakan fitur ini adalah untuk menjaga kualitas data serta menghindari data tidak lengkap. Sehingga siswa harus memberikan data lengkap sebelum mendaftar di Intellecta Bimbel.

**4. Fitur Simpan Data**

<img width="1874" height="79" alt="image" src="https://github.com/user-attachments/assets/16cc4f15-a56c-4587-a51d-80b54cea14a1" />

Gambar diatas terdapat pada Input Data Page, yang mana ini adalah tampilan tombol "Simpan". Kegunaannya ialah untuk menyimpan data siswa ke sistem.

<img width="1907" height="108" alt="image" src="https://github.com/user-attachments/assets/2c75be87-a734-4096-8ecf-6f424a065235" />

Setelah klik "Simpan", maka akan muncul notifikasi SnackBar "Data Berhasil disimpan". Lalu setelah itu akan otomatis kembali ke halaman sebelumnya atau Home Page.

**5. Fitur Rekap Data Siswa**

<img width="1905" height="864" alt="image" src="https://github.com/user-attachments/assets/7b2a0601-0e25-4133-89e9-1e1412aeea14" />

Gambar diatas terdapat pada halaman Rekap Data Page dengan menampilkan list dari nama siswa dan mata pelajaran yang telah diinput sebelumnya. Fitur ini dibuat agar mempermudah pengguna untuk melihat dan mencari data siswa yang belajar di Intellecta Bimbel.

**6. Fitur Lihat Detail (View)**

<img width="75" height="58" alt="image" src="https://github.com/user-attachments/assets/19223ded-c3e6-4752-aab4-13c21d3c7ce6" />

Gambar diatas adalah Icon berbentuk mata yang terdapat pada halaman Rekap Data. Kegunaan dari fitur dengan icon mata ini adalah untuk menampilkan detail lengkap siswa dalam bentuk kartu (Student Card).

<img width="1909" height="865" alt="image" src="https://github.com/user-attachments/assets/cbb1837f-0a00-4fb4-b924-f7a895b8296a" />

Setelah diklik, pengguna diarahkan ke halaman Student Card seperti pada gambar diatas dengan menampilkan:
- Nama
- Sekolah
- Kelas
- Jam Bimbel
- No HP

Student card ini juga digunakan untuk melihat informasi siswa secara ringkas dan rapi.

**7. Fitur Edit Data** 

<img width="81" height="79" alt="image" src="https://github.com/user-attachments/assets/f7daf767-aae2-4301-9c36-7b7bcb099c4d" />

Gambar diatas adalah Icon benbentuk pensil yang terdapat pada halaman Rekap Data. Dengan kegunaannya ialah untuk mengubah data siswa yang sudah tersimpan.

Cara kerjanya, yaitu dengan menekan tombol icon, lalu sistem membuka Input Data Page dengan data lama sudah terisi otomatis, Dan terakhir Setelah memperbarui data dan menyimpannya maka data lama tersebut akan terperbarui.

**8. fitur Hapus Data**

<img width="71" height="71" alt="image" src="https://github.com/user-attachments/assets/28e7b6aa-8298-49b3-8bb1-a0223ae8fbaf" />

Gambar ini menunjukkan Icon berbentuk tempat sampah yang terdxapat pada halaman Rekap Data. Kegunaan fitur ini adalah untuk menghapus data siswa dari sistem.

Cara kerjanya ialah saat icon delete ini ditekan, maka data langsung dihapus dari List student dan tampilan akan otomatis diperbarui.

# <sub>Widget yang Digunakan</sub>

Aplikasi Intellecta Bimbel ini dibuat dengan menggunakan berbagai widget bawaan Flutter yang berfungsi untuk membentuk struktur tampilan, mengelola input, navigasi, dan interaksi pengguna.

Berikut adalah penjelasan widget yang digunakan dalam aplikasi.

**1. Widget Struktur Dasar**

- MaterialApp

Digunakan sebagai root utama aplikasi. Fungsinya adalah untuk mngatur tema aplikasi, mengatur halaman awal (home), dan menghilangkan debug banner. Widget ini digunakan pada main.dart.

- Scaffold

Dapat digunakan sebagai kerangka dasar setiap halaman. Fungsi dari Scaffold sendiri antara lain adalah untuk menyediakan struktur seperti AppBar, body, background, serta mengatur tata letak utama halaman. Scaffold digunakan pada Home Page, Input Data Page, Rekap Data Page, dan Student Card

- AppBar

AppBar dapat digunakan sebagai bagian atas halaman. Fungsinya adalah untuk menampilkan judul halaman, serta memberikan identitas tiap page. AppBar digunakan pada Input Data Page dan Rekap Data Page.

**2. Widget Layout (Tata Letak)**

- Column

FUngsi Column adalah untuk menyusun widget secara vertikal. Contohnya digunakan untuk menyusun form input dan tombol di Input Data Page.

- Row

Row digunakan untuk menyusun widget secara horizontal. Contohnya terdapat pada Student Card unutk menampilkan label dan isi data secara sejajar.

- Container

Container adalah widget yang digunakan untuk memberi padding, memberi warna, memberi dekorasi, serta mengatur ukuran. Penggunaannya hampir disemua halaman untuk desain tmpilan.

- Center

Center dapat memposisikan widget di tengah layar dan center ini digunakan pada Home Page dan Student Card.

- Stack

Stack adalah widget yang digunakan untuk menumpuk widget di atas widget lain. Pada aplikasi ini digunakan pada Student Card untuk menampilkan kartu dan menempatkan tombol "Back" di atas kartu.

- Positioned

Widget ini digunakan bersama dengan Stack untuk menentukan posisi widget secara spesifik dan digunakan untuk tombol kembali di Student Card.

**3. Widget Form dan Input**





