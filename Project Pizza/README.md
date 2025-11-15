# 🍕 Data-Driven Pizza Sales Performance Analysis
## 📌(Executive Summary)

Proyek ini mendemonstrasikan kapabilitas **Data Analysis** dengan fokus pada **Operations**, bertujuan mengubah data transaksi mentah selama satu tahun menjadi **wawasan yang dapat ditindaklanjuti** (*actionable insights*). Proses analisis dilakukan secara efisien menggunakan **Microsoft Excel/Google Sheets**, menghasilkan *Dashboard* yang menjadi panduan utama bagi manajemen untuk **Optimalisasi Pendapatan** (*Revenue*), **Forecasting**, dan peningkatan **Efisiensi Inventaris**.

## 🎯 Tujuan Bisnis (Business Objectives)

Analisis ini didesain untuk menjawab empat pertanyaan bisnis yang paling krusial:

1.  **KPI Performance:** Berapa **Total Revenue**, **Total Order**, dan **Average Order Value (AOV)**?
2.  **Market Trends:** Bagaimana tren pendapatan bulanan (*Seasonality*) sepanjang tahun?
3.  **Product Prioritization:** Apa saja **10 Pizza Terlaris** (*Top Sellers*) berdasarkan kuantitas?
4.  **Pricing Strategy:** Bagaimana kontribusi **Pendapatan** (*Revenue*) berdasarkan **Kategori** dan **Ukuran** pizza?

## 🛠️ Tools dan Data

* **Primary Tool:** Microsoft Excel / Google Sheets
* **Data Source:** Data Transaksi Penjualan Harian (`Data Pizza.xlsx - Raw Data Pizza Sales.csv`)

---

## ⚙️ Workflow Analisis (Excel/Sheets Focused)

### Fase 1: Data Cleansing & Feature Engineering

Menciptakan variabel (`Features`) baru dari data mentah—langkah penting sebelum Pivot Table.

| Kolom Baru | Perhitungan | Fungsi Excel Kunci | Tujuan Bisnis |
| :--- | :--- | :--- | :--- |
| **Total Revenue** | Harga x Kuantitas | **`= unit_price * quantity`** | Metrik keuangan dasar. |
| **Nama Bulan** | Ekstraksi Bulan dari tanggal. | **`=TEXT(order_date, "mmmm")`** | Analisis *Seasonality* & *Forecasting*. |
| **Nama Hari** | Ekstraksi Hari dari tanggal. | **`=TEXT(order_date, "dddd")`** | Analisis *Workload* & Jadwal Staf. |
| **Total Order Unik** | Agregasi ID pesanan unik. | **`=COUNTA(UNIQUE(order_id_column))`** | Mengukur *Transaction Volume*. |

### Fase 2: Pivot Table (The Engine Room)

Menggunakan **Pivot Table** sebagai mesin analisis untuk merangkum data dan menjawab *Business Questions*.

1.  **KPI Summary:** Digunakan untuk menghitung *Total Revenue*, *Total Order*, dan **AOV** ($\frac{\text{Total Revenue}}{\text{Total Order}}$).
2.  **Revenue & Quantity:** Dibuat *Pivot* terpisah untuk `Nama Bulan` (untuk *Line Chart*) dan `pizza_name` (menggunakan **Value Filter: Top 10**).
3.  **Segmentasi Kompleks:** Rows: `pizza_category`, Columns: `pizza_size`, Values: `SUM of Total Revenue` (Analisis kontribusi **Size**).

### Fase 3: Dashboard dan Interaktivitas

Visualisasi yang *clear* dan *concise* untuk komunikasi wawasan yang efektif.

| Visualisasi | Tipe Chart | Wawasan yang Diperkuat |
| :--- | :--- | :--- |
| **Tren Revenue Bulanan** | Line Chart | Menunjukkan *Seasonality* jelas (**Puncak Juli**, **Lembah September**) untuk *planning*. |
| **Quantity per Category** | Donut Chart | Prioritas *Inventory*: **Classic (30%)** dan **Supreme (24%)** mendominasi volume. |
| **Revenue by Size** | Stacked Bar Chart | Strategi *Upselling*: Ukuran **Large (L)** adalah *Revenue Driver* utama. |
| **Interaktivitas** | Slicer | Menghubungkan *Slicer* (`pizza_category`) ke semua *chart* untuk *ad-hoc analysis*. |

---

## 💡 Key Insights & Rekomendasi Strategis

Analisis data menghasilkan temuan yang langsung dapat diimplementasikan untuk meningkatkan efisiensi dan profit:

| Insight | Rekomendasi Strategis (Operations & Revenue) |
| :--- | :--- |
| **Seasonal Fluctuation** | **Forecasting & Marketing:** Alokasikan *Marketing Budget* untuk promosi di bulan **September** dan **November** (*Low Season*) untuk menstabilkan **Arus Pendapatan** (*Revenue Stream*). |
| **Dominasi Produk** | **Operations Efficiency:** Lakukan studi waktu dan gerak (*Time & Motion Study*) pada resep **The Classic Deluxe Pizza** (Top 1) untuk mengurangi *preparation time* dan mengatasi potensi *bottleneck*. |
| **AOV Potensial** | **Pricing Strategy:** Fokus pada *Upselling* ke ukuran **Large (L)** dan buat *Bundling Packages* yang menguntungkan, karena ukuran L terbukti paling bernilai. |
| **Fokus Kategori** | **Inventory Management:** Tetapkan **Classic** dan **Supreme** sebagai kategori *Tier 1*. Tingkatkan *buffer stock* untuk mencegah *stock-out* pada *Peak Season*. |

---
