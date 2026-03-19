</p><h1 align="center" = >Tourism Analytics Dashboard: Identifikasi Destinasi Unggulan di Pulau Jawa </h1>

## Table of Contents

1. [Deskripsi Project](#deskripsi-project)
2. [Tujuan Project](#tujuan-project)
3. [Tools](#tools)
4. [Masalah Bisnis](#masalah-bisnis)
5. [Informasi Dataset](#informasi-dataset)
6. [Data Cleaning & Integration](#data-cleaning-&-integration)
7. [Exploratory Data Analysis (EDA)](#exploratory-data-analysis)
8. [Dashboard](#dashboard)
9. [Key Insights](#key-insights)
10. [Kesimpulan](#kesimpulan)
11. [Author](#author)
    
## **Deskripsi Project**

Sektor pariwisata merupakan salah satu pendorong utama ekonomi Indonesia. Namun, pengambilan keputusan seringkali masih berbasis data yang tersebar dan kurang terstruktur.

Proyek ini bertujuan untuk mengolah data pariwisata menjadi dashboard interaktif berbasis Power BI guna mengidentifikasi tren wisata, performa destinasi, serta peluang strategis di berbagai kota di Pulau Jawa.

**Data Analysis Workflow**

<mark> Data Collection → Data Cleaning → Data Modeling (Relational Database) → Data Analysis → Data Visualization

## **Tujuan Project**

Tujuan utama dari project ini adalah:
- Menganalisis distribusi tempat wisata di beberapa kota di Pulau Jawa
- Mengidentifikasi kategori wisata yang paling dominan
- Menemukan destinasi wisata dengan rating tertinggi
- Membuat dashboard interaktif untuk mempermudah eksplorasi data pariwisata

## **Tools**

1. Kaggle Dataset → Sumber data publik untuk analisis
2. Python → Data cleaning & preprocessing
3. MySQL → Data integration & pembuatan analytical dataset menggunakan SQL (JOIN, filtering, aggregation)
4. Microsoft Power BI → Data visualization dan pembuatan dashboard interaktif


## **Masalah Bisnis**

Sektor pariwisata membutuhkan pemahaman yang baik mengenai distribusi destinasi wisata dan preferensi wisatawan di berbagai wilayah. Tanpa analisis data yang tepat, akan sulit untuk:
- Mengidentifikasi kota dengan jumlah destinasi wisata terbanyak
- Mengetahui kategori wisata yang paling populer
- Mengidentifikasi destinasi wisata dengan rating tertinggi
- Memahami pola distribusi wisata antar kota

Analisis data diperlukan untuk memberikan insight yang dapat membantu pengambilan keputusan berbasis data dalam pengembangan sektor pariwisata.

## **Informasi Dataset**

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

## **Data Cleaning & Integration**

Melakukan proses pembersihan dan transformasi data menggunakan Python, termasuk menangani missing values, serta standarisasi format data.

Selanjutnya, data diintegrasikan menggunakan MySQL dengan teknik SQL JOIN, filtering, dan aggregation untuk membangun analytical dataset yang siap digunakan dalam proses analisis dan visualisasi.

```
CREATE DATABASE tourism_db;
USE tourism_db;
SELECT * FROM package_tourism;
SELECT * FROM tourism_rating;
SELECT * FROM tourism_with_id;
SELECT * FROM user;

-- city, category, rating, place_name, longitude, latitude, jumlah kunjungan
SELECT
    ti.Place_Id,
    ti.City,
    ti.Place_Name,
    ti.Category,
    ti.Rating,
    ti.Lat,
    COUNT(tr.Place_Ratings) AS "Jumlah Kunjungan"
FROM tourism_with_id_cleaned ti
JOIN tourism_rating tr
ON ti.Place_Id = tr.Place_Id
GROUP BY 
    ti.Place_Id,
	 ti.City,
    ti.Place_Name,
	 ti.Category,
    ti.Rating,
    ti.Lat;
```

## **Exploratory Data Analysis**

Pada tahap ini dilakukan eksplorasi data untuk memahami pola dasar dalam dataset, diantaranya:

1. Distribusi jumlah destinasi wisata berdasarkan kota
2. Distribusi kategori wisata
3. Analisis rating destinasi wisata
4. Identifikasi destinasi wisata paling populer
   
Hasil dari eksplorasi ini digunakan sebagai dasar dalam pembuatan dashboard visualisasi.

## **Dashboard**

Dashboard ini memungkinkan pengguna untuk mengeksplorasi tren pariwisata berdasarkan kota, kategori wisata, serta popularitas destinasi.

<p align="center">
  <img src="https://github.com/humairaaryantik/Exploring-Tourism-Trends-on-Java-Island-Using-Power-BI/blob/a8e18d0cae708f530bf1fc9f0541b74287774afc/Tourism%20Dashboard.jpg" width="800"/>
  <br>
  <em> Tourism Dashboard on Java Island</em>
</p>

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

## **Kesimpulan**

1. Konsentrasi destinasi wisata di kota seperti Yogyakarta dan Bandung menunjukkan potensi sebagai hub pariwisata yang layak diprioritaskan dalam pengembangan.
2. Dominasi kategori hiburan dan budaya mengindikasikan preferensi wisatawan yang dapat dimanfaatkan untuk strategi promosi yang lebih terarah.
3. Destinasi dengan performa kunjungan tinggi dapat digunakan sebagai benchmark strategis untuk meningkatkan daya saing destinasi lainnya.

### AUTHOR
---
Humaira Aryantik | humairaaryantik@gmail.com / https://linkedin.com/in/humaira-aryantik
