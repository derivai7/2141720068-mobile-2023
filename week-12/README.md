# BAHTIAR RIFA'I (2141720068) / 3F

---

## Soal 2

<img src="docs/soal-2.png" style="width: 400px" alt='Screenshot hasil soal 2'>

---

## Soal 3

Maksud dari substring dan catchError dalam adalah:

- **Substring**: Mengambil beberapa karakter dari suatu string, berdasarkan posisi dan panjang tertentu. `substring(0, 450)` dalam kode tersebut mengambil huruf dari indeks 0 hingga 450. Jadi, result akan berisi 450 karakter pertama dari body hasil.
- **catchError**: Fungsi ini dipanggil jika terjadi error saat menjalankan Future. `result = 'An error occurred'` dalam kode tersebut jika terjadi error, result diatur ke 'An error occurred'.

<br>
<img src="docs/soal-3.gif" style="width: 400px" alt='Screenshot hasil soal 3'>

---

## Soal 4

- **Langkah 1**: Kode tersebut berisi tiga fungsi Future<int>: returnOneAsync, returnTwoAsync, dan returnThreeAsync. Masing-masing fungsi ini akan menunda eksekusi selama tiga detik (await Future.delayed(const Duration(seconds: 3))), lalu mengembalikan nilai integer: 1, 2, dan 3 secara berurutan.

- **Langkah 2**: Kode tersebut mendefinisikan fungsi Future bernama count. Fungsi count mendeklarasikan variabel total dan menginisialisasikannya dengan nilai 0. Selanjutnya, fungsi returnOneAsync dipanggil dan program menunggu sampai fungsi ini selesai (ini membutuhkan waktu sekitar 3 detik). Nilai yang dikembalikan (yaitu 1) kemudian ditambahkan ke total. Proses yang sama diulangi untuk returnTwoAsync dan returnThreeAsync, dengan masing-masing menambah 2 dan 3 ke total. Terakhir, setState dipanggil untuk memperbarui nilai result dengan total penjumlahan (yang seharusnya menjadi 6).

<br>
<img src="docs/soal-4.gif" style="width: 400px" alt='Screenshot hasil soal 4'>

---

## Soal 5

Kode tersebut menggunakan Completer untuk membuat Future yang bisa diselesaikan nanti. Jika memanggil fungsi getNumber, maka akan mengembalikan Future yang diselesaikan oleh fungsi calculate dengan nilai 42 setelah 5 detik.

<br>
<img src="docs/soal-5.gif" style="width: 400px" alt='Screenshot hasil soal 5'>

---

## Soal 6

Kode tersebut menambahkan penanganan kesalahan pada Future. Jika Future berhasil, result diatur menjadi 42. Jika terjadi kesalahan, result menjadi ‘An error occurred’.

Untuk hasil capture sama seperti soal 5.

---

## Soal 7

<img src="docs/soal-7.gif" style="width: 400px" alt='Screenshot hasil soal 7'>

## Soal 8

Perbedaan langkah 1 dan langkah 4:

- **Langkah 1:** menggunakan FutureGroup untuk menambahkan Future secara dinamis dan menunggu semuanya selesai. 
- **Langkah 4**: menggunakan Future.wait untuk menunggu sekelompok Future yang diketahui sejak awal. 

Jadi, FutureGroup berguna jika Future ditambahkan seiring berjalannya waktu, sedangkan Future.wait efektif jika semua Future diketahui dari awal.