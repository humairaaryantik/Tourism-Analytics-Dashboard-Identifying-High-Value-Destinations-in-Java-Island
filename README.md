</p><h1 align="center" = >Analisis Tren Destinasi Wisata di Pulau Jawa Menggunakan Microsoft Power BI </h1>

<p align="center">
  <img src="https://github.com/humairaaryantik/Exploring-Tourism-Trends-on-Java-Island-Using-Power-BI/blob/a8e18d0cae708f530bf1fc9f0541b74287774afc/Tourism%20Dashboard.jpg" width="800"/>
  <br>
  <em> Tourism Dashboard on Java Island</em>
</p>

Project ini bertujuan untuk menganalisis tren destinasi wisata di beberapa kota di Pulau Jawa dengan memanfaatkan visualisasi data interaktif menggunakan Microsoft Power BI. Analisis ini dilakukan untuk memahami distribusi destinasi wisata, kategori wisata yang paling populer, serta destinasi dengan tingkat rating tertinggi.

Dashboard yang dihasilkan memungkinkan pengguna untuk mengeksplorasi data pariwisata secara interaktif berdasarkan kota dan kategori wisata sehingga dapat memberikan gambaran yang lebih jelas mengenai pola distribusi wisata di Pulau Jawa.

<div align="center">

### Data Analysis Workflow

<mark> Data Collection → Data Cleaning → Data Modeling (Relational Database) → Data Analysis → Data Visualization

</div>


## **Tools & Technologies**

Tools yang digunakan dalam project ini:
1. Dataset publik dari Kaggle
2. Microsoft Power BI – Data Visualization & Dashboard


## **Business Problem**

Sektor pariwisata membutuhkan pemahaman yang baik mengenai distribusi destinasi wisata dan preferensi wisatawan di berbagai wilayah. Tanpa analisis data yang tepat, akan sulit untuk:
- Mengidentifikasi kota dengan jumlah destinasi wisata terbanyak
- Mengetahui kategori wisata yang paling populer
- Mengidentifikasi destinasi wisata dengan rating tertinggi
- Memahami pola distribusi wisata antar kota

Analisis data diperlukan untuk memberikan insight yang dapat membantu pengambilan keputusan berbasis data dalam pengembangan sektor pariwisata.

## **Project Objectives**

Tujuan utama dari project ini adalah:
- Menganalisis distribusi tempat wisata di beberapa kota di Pulau Jawa
- Mengidentifikasi kategori wisata yang paling dominan
- Menemukan destinasi wisata dengan rating tertinggi
- Membuat dashboard interaktif untuk mempermudah eksplorasi data pariwisata

## **Dataset Information**

Dataset yang digunakan dalam project ini merupakan dataset publik yang diperoleh dari platform data science **Kaggle**, yang dapat diakses melalui tautan berikut:

🔗 https://www.kaggle.com/

Dataset ini terdiri dari 4 tabel utama yang digunakan untuk menganalisis tren destinasi wisata dan membangun dashboard visualisasi
| No | Nama Tabel      | Struktur Tabel / Column                                                                             |
| -- | --------------- | --------------------------------------------------------------------------------------------------- |
| 1  | tourism_with_id | Place_Id, Place_Name, City, Category, Description, Rating, Price, Time_Minutes, Latitude, Longitude |
| 2  | tourism_rating  | User_Id, Place_Id, Place_Ratings                                                                    |
| 3  | user            | User_Id, Location, Age                                                                                    |
| 4  | package_tourism | Package_Id, Place_Tourism1, Place_Tourism2, Place_Tourism3, Place_Tourism4, Place_Tourism5, City    |

Dataset ini kemudian digunakan untuk melakukan proses data cleaning, data modeling, serta visualisasi data untuk mengidentifikasi tren destinasi wisata di beberapa kota di Pulau Jawa.

## **Exploratory Data Analysis (EDA)**

Pada tahap ini dilakukan eksplorasi data untuk memahami pola dasar dalam dataset, diantaranya:

1. Distribusi jumlah destinasi wisata berdasarkan kota
2. Distribusi kategori wisata
3. Analisis rating destinasi wisata
4. Identifikasi destinasi wisata paling populer
   
Hasil dari eksplorasi ini digunakan sebagai dasar dalam pembuatan dashboard visualisasi.

## **Dashboard**

Dashboard ini memungkinkan pengguna untuk mengeksplorasi tren pariwisata berdasarkan kota, kategori wisata, serta popularitas destinasi.

Dashboard menampilkan beberapa komponen utama, antara lain:
- Jumlah keseluruhan tempat wisata
- Estimasi jumlah kunjungan wisata
- Distribusi destinasi wisata berdasarkan kota
- Distribusi kategori wisata
- Rata-rata rating tempat wisata per kota
- 5 destinasi wisata paling populer

Dashboard interaktif dapat diakses melalui tautan berikut:

🔗 https://l1nq.com/TourismDashboard

## **Key Insights**

1️⃣ Yogyakarta dan Bandung menjadi pusat destinasi wisata dalam dataset

Yogyakarta (126 destinasi) dan Bandung (124 destinasi) memiliki jumlah tempat wisata tertinggi dibandingkan kota lainnya. Hal ini menunjukkan bahwa kedua kota tersebut memiliki konsentrasi destinasi wisata yang paling beragam, sehingga berpotensi menjadi tujuan utama wisatawan di Pulau Jawa.

2️⃣ Taman Hiburan mendominasi jenis destinasi wisata

Kategori Taman Hiburan mencatat jumlah terbanyak yaitu 135 destinasi, diikuti oleh Wisata Budaya (117) dan Cagar Alam (106). Dominasi ini mengindikasikan bahwa wisata rekreasi dan hiburan menjadi jenis destinasi yang paling banyak tersedia dan kemungkinan paling diminati oleh wisatawan.

3️⃣ Kualitas destinasi wisata relatif konsisten antar kota

Rata-rata rating tempat wisata di lima kota berada pada kisaran 3.01 – 3.10, menunjukkan bahwa tingkat kepuasan pengunjung relatif stabil dan tidak terdapat perbedaan kualitas yang signifikan antar kota. Yogyakarta memiliki rating tertinggi (3.10), sementara Jakarta memiliki rating terendah (3.01).

4️⃣ Beberapa destinasi memiliki tingkat popularitas yang jauh lebih tinggi

Berdasarkan jumlah kunjungan, Wisata Kuliner Pecenongan menjadi destinasi paling populer, diikuti oleh Wisata Lereng Kelir, dan Kraton Jogja. Hal ini menunjukkan bahwa wisata kuliner, budaya, dan alam menjadi daya tarik utama bagi wisatawan.

**Business Insight Example**

1. Kota dengan jumlah destinasi tinggi seperti Yogyakarta dan Bandung berpotensi menjadi fokus utama pengembangan pariwisata.
2. Kategori Taman Hiburan dan Budaya bisa menjadi fokus strategi promosi wisata.
3. Destinasi dengan jumlah kunjungan tinggi dapat dijadikan benchmark untuk pengembangan destinasi lain.

### AUTHOR
---
Humaira Aryantik | humairaaryantik@gmail.com / https://linkedin.com/in/humaira-aryantik
