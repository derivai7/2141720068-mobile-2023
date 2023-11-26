# BAHTIAR RIFA'I (2141720068) / 3F

---

## Soal 3

`yield*` dalam kode tersebut digunakan untuk menghasilkan semua nilai dari `Stream.periodic`, yang menghasilkan event setiap detik. Nilai yang dihasilkan adalah warna dari array `colors`.

Kode tersebut adalah sebuah generator dalam Dart yang menggunakan `Stream.periodic` untuk menghasilkan sebuah event setiap detik. Nilai yang dihasilkan oleh event tersebut adalah warna yang dipilih dari array colors berdasarkan indeks yang dihitung dari waktu (`t`). Keyword `yield*` digunakan untuk menghasilkan semua nilai dari `Stream.periodic`, yang berarti fungsi tersebut akan menghasilkan warna baru setiap detik.

---

## Soal 4

<img src="docs/soal-4.gif" style="width: 400px" alt='Screenshot hasil soal 4'>

---

## Soal 5

Dalam Dart, `listen` dan `await for` digunakan untuk menangani event dari sebuah stream. Berikut adalah perbedaan utama antara keduanya:

- **listen:** Fungsi ini mendaftarkan handler dan eksekusi kode berlanjut setelahnya. Ini berarti bahwa kode setelah pemanggilan `listen` akan dieksekusi segera, tanpa menunggu stream selesai. Dalam kode Anda, `listen` akan membuat `setState` dipanggil setiap kali event baru datang dari `colorStream.getColors()`, dan kode setelah pemanggilan `listen` akan dieksekusi segera.

- **await for:** Ini akan menahan eksekusi sampai event berikutnya datang atau sampai stream selesai. Dalam kode Anda, `await for` akan membuat `setState` dipanggil setiap kali event baru datang dari `colorStream.getColors()`, dan kode setelah loop `await for` tidak akan dieksekusi sampai semua event dalam stream telah diproses.

---

## Soal 6

Langkah 8 dan 10 dalam kode tersebut merupakan bagian dari implementasi stream dalam Dart untuk menghasilkan dan menangani event. Berikut penjelasannya:

- **Langkah 8:** Ini merupakan bagian dari metode `initState` yang dipanggil ketika objek widget pertama kali dimasukkan ke dalam pohon widget. Di sini, sebuah instance dari `NumberStream` dibuat, dan controller untuk stream tersebut disimpan dalam `numberStreamController`. Kemudian, `stream.listen` digunakan untuk mendaftarkan sebuah fungsi yang akan dipanggil setiap kali event baru datang dari stream. Fungsi ini memperbarui `lastNumber` dengan nilai event terbaru.

- **Langkah 10:** Ini adalah implementasi dari metode `addRandomNumber` yang menghasilkan sebuah angka acak antara 0 dan 9, dan menambahkannya ke dalam stream menggunakan `numberStream.addNumberToSink(myNum)`. Ini berarti bahwa setiap kali metode `addRandomNumber` dipanggil, sebuah event baru dengan angka acak akan ditambahkan ke dalam stream, dan fungsi yang didaftarkan dalam `stream.listen` akan dipanggil dengan angka acak tersebut sebagai argumen event.

<img src="docs/soal-6.gif" style="width: 400px" alt='Screenshot hasil soal 6'>

---

## Soal 7

Berikut penjelasan Langkah 13 hingga 15:

- Langkah 13: Ini adalah implementasi dari metode `addError` yang menambahkan sebuah error ke dalam stream menggunakan `controller.sink.addError('error')`. Ini berarti bahwa setiap kali metode `addError` dipanggil, sebuah event error akan ditambahkan ke dalam stream.

- Langkah 14: Dalam kode tersebut, menambahkan `onError` digunakan untuk menangani error yang datang dari stream. Fungsi ini memperbarui `lastNumber` menjadi -1 setiap kali error terjadi.

- Langkah 15: Ini adalah implementasi dari metode `addRandomNumber` yang sekarang memanggil `numberStream.addError()`. Ini berarti bahwa setiap kali metode `addRandomNumber` dipanggil, sebuah event error akan ditambahkan ke dalam stream dan fungsi yang didaftarkan dalam `onError` akan dipanggil.

---