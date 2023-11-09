# BAHTIAR RIFA'I (2141720068) / 3F

---

## Hasil Praktikum 1

<img src="docs/praktikum-1.gif" style="width: 400px" alt='Screenshot hasil_praktikum 1'>

---

## Penjelasan Langkah 4: Buat file data_layer.dart

Kode export 'plan.dart'; dan export 'task.dart'; dalam kode tersebut digunakan untuk membuat library. Dengan kata lain, kode tersebut memungkinkan untuk mengorganisir kode menjadi berbagai file dan kemudian menggabungkannya kembali. Dengan cara ini, semua kelas, fungsi, dan variabel dari plan.dart dan task.dart akan tersedia di dalam kelas yang memanggil 'data_layer.dart'. Ini membuat kode lebih rapi dan mudah dikelola.

---

## Penjelasan Langkah 6: buat plan_screen.dart

Variabel plan dalam kode tersebut digunakan untuk menyimpan data dari Plan. Plan mungkin adalah sebuah kelas yang berisi informasi tentang rencana atau tugas yang perlu dilakukan. Variabel ini digunakan dalam metode _buildList() dan _buildAddTaskButton() untuk membangun daftar tugas dan menambahkan tugas baru ke dalam daftar.

Mengenai mengapa plan dibuat sebagai konstanta (const Plan()), ini adalah cara untuk menginisialisasi variabel dengan nilai default. Dalam hal ini, Plan mungkin memiliki konstruktor default yang tidak memerlukan argumen apa pun. Menggunakan const berarti bahwa objek Plan ini tidak akan berubah setelah dibuat. Namun, plan nantinya akan diperbarui dengan Plan baru setiap kali ada perubahan (misalnya, saat menambahkan task baru), jadi meskipun awalnya dibuat sebagai const, nilai plan sendiri akan berubah seiring berjalannya waktu.

---

## Langkah 9: buat widget _buildTaskTile

Kode tersebut mendefinisikan sebuah widget yang menampilkan tugas dalam bentuk ListTile. ListTile adalah sebuah widget yang biasanya berisi hingga 3 baris teks, dan opsional leading dan trailing icons.

- leading: Checkbox(...) menampilkan sebuah kotak centang di awal ListTile. Kotak centang ini menunjukkan apakah tugas sudah selesai atau belum (task.complete). Jika pengguna mengklik kotak centang, maka status tugas akan diperbarui (setState(...)) dan UI akan diperbarui untuk mencerminkan perubahan tersebut.
- title: TextFormField(...) menampilkan sebuah field teks yang berisi deskripsi tugas (task.description). Jika pengguna mengubah teks dalam field ini, maka deskripsi tugas akan diperbarui (setState(...)) dan UI akan diperbarui untuk mencerminkan perubahan tersebut

Secara keseluruhan, kode tersebut membuat tampilan Todo List yang bisa memperbarui status dan deskripsi tugas. Setiap perubahan akan segera terlihat di UI, membuat aplikasi lebih responsif dan mudah digunakan.

---

## Penjelasan Langkah 11: Tambah Scroll Listener dan Langkah 13: tambah method dispose()

Langkah 11 - initState(): Metode initState() dipanggil tepat setelah widget dimasukkan ke dalam pohon widget (widget tree) dan sebelum build() dipanggil pertama kali. Ini adalah tempat yang tepat untuk melakukan inisialisasi yang berkaitan dengan BuildContext. Dalam kode tersebut, initState() digunakan untuk membuat ScrollController dan menambahkan listener kepadanya. Listener ini akan memindahkan fokus ke FocusNode baru setiap kali pengguna melakukan scroll.

Langkah 13 - dispose(): Metode dispose() dipanggil ketika widget ini dihapus dari pohon widget dan akan melepaskan semua sumber daya yang dimiliki oleh widget. Dalam kode Anda, dispose() digunakan untuk membuang ScrollController yang telah dibuat sebelumnya.

---

## Hasil Praktikum 2

<img src="docs/praktikum-2.gif" style="width: 400px" alt='Screenshot hasil_praktikum 2'>

---

## Penjelasan Langkah 1: Buat file plan_provider.dart

InheritedWidget adalah sebuah widget khusus di Flutter yang dapat meneruskan data ke widget turunannya. Atau arti lain, InheritedWidget dapat menyimpan data di satu tempat dan kemudian mengaksesnya dari banyak widget lain tanpa harus melewati banyak parameter.

Dalam kode tersebut, PlanProvider adalah sebuah InheritedWidget. Ini berarti bahwa PlanProvider dapat meneruskan ValueNotifier<Plan> ke widget turunannya.

InheritedNotifier adalah sebuah InheritedWidget khusus yang dirancang untuk bekerja dengan objek yang mengimplementasikan Listenable, seperti ValueNotifier. InheritedNotifier secara otomatis akan memanggil updateShouldNotify setiap kali notifier berubah, dan akan memicu pembangunan ulang widget yang tergantung pada InheritedNotifier.

---

## Penjelasan Langkah 3: Tambah method pada model plan.dart

Metode pada langkah 3 tersebut digunakan untuk menghitung jumlah tugas yang telah selesai dan membuat pesan tentang tingkat kelengkapan tugas.

int get completedCount => tasks.where((task) => task.complete).length; adalah getter yang menghitung berapa banyak tugas dalam daftar tasks yang telah selesai. Ini dilakukan dengan memfilter tasks untuk hanya mencakup tugas yang complete (selesai), dan kemudian mengambil jumlahnya dengan length.

String get completenessMessage => '$completedCount out of ${tasks.length} tasks'; adalah getter yang membuat pesan string yang menunjukkan berapa banyak tugas yang telah selesai dari total tugas. Ini menggunakan completedCount yang telah dihitung sebelumnya dan jumlah total tugas (tasks.length).

Mengapa dilakukan demikian? Kode ini membantu dalam memberikan umpan balik visual kepada pengguna tentang progres mereka dalam menyelesaikan tugas. Dengan mengetahui berapa banyak tugas yang telah mereka selesaikan, pengguna dapat melacak kemajuan mereka dan merasa lebih termotivasi untuk menyelesaikan tugas yang tersisa.

