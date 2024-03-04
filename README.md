# Reactive Programming simple with Only Protocol


https://github.com/nunutech40/Swift-SimpleReactiveProgrammingWithProtocol/assets/49187517/42c957e9-e63d-4eb8-bc20-f99b314a0f35


Saat ada data baru, para object subrciber yang ditambahkan ke objek Observable akan menerima perubahan jika tombol Send Data di click.
Tombol send data merubah value pada object ovservable dari data yang di inputkan ke input text.


<img width="735" alt="Screenshot 2024-03-04 at 09 29 15" src="https://github.com/nunutech40/Swift-SimpleReactiveProgrammingWithProtocol/assets/49187517/8f2a9a4b-5b76-4efd-a566-b19410f970e3">
Buat class Observable dan Protocol Observer

## Class Observable 
Digunakan untuk menambahkan data class2 subcriber yang di daftarkan ke dalam array observer. Pada didset di variable value, kita triger fungsi update dari protocol observer.
Jadi saat value berubah, did set akan berjalan, dan semua kelas observer yang didaftarkan akan mendapatkan notice data baru.
<img width="594" alt="Screenshot 2024-03-04 at 09 44 16" src="https://github.com/nunutech40/Swift-SimpleReactiveProgrammingWithProtocol/assets/49187517/59077b3e-f3b7-485a-8f9e-79c9afd4e991">

## Protocol Observer
protocol observer dibuatkan fungsi update dengan input dynamis T, jadi kita bisa menggunakan type data apa saja untuk dijadikan value.
Protocol observer juga menjadi interface untuk kelas Subcriber. Kelas subcriber akan melakukan kontrak dengan kelas Observer, yang otomatis membuat class Subrciber memiliki fungsi update.
Protocol juga sebagai jembatan untuk mengirim data yang dilakukan di objek Observable pada did set ketika ada perubahan pada value, maka kelas Subrciber yang memiliki fungsi update
akan mendapatkan update data value terbaru.

## Class Subcriber bisa dibuat banyak atau lebih dari satu, dan harus meng extens interface / protocol Observer, atau melakukan kontrak dg Obsever supaya terhubung dengan kelas Observable.
Jadi ketika objek Observable melakukan update data pada variable value, class subcriber yang sudah di daftarkan dengan addObserver di objeck observable akan mendapatkan data perubahan valuenya.
<img width="683" alt="Screenshot 2024-03-04 at 09 43 45" src="https://github.com/nunutech40/Swift-SimpleReactiveProgrammingWithProtocol/assets/49187517/3d40e71a-d260-4d39-a7d7-516865481f10">

## Insialisasi kelas Observable supaya menjadi objek yang bisa melakukan fungsinya, menambahkan observer dan melakukan perubahan pada variable value.
<img width="629" alt="Screenshot 2024-03-04 at 09 53 07" src="https://github.com/nunutech40/Swift-SimpleReactiveProgrammingWithProtocol/assets/49187517/d2ff5324-2105-45a7-819f-c91d5692479f">

## Send Data Stream
<img width="595" alt="Screenshot 2024-03-04 at 09 53 52" src="https://github.com/nunutech40/Swift-SimpleReactiveProgrammingWithProtocol/assets/49187517/9be24870-7c24-4610-bfe4-f7661a28a4f5">

Setelah kelas observable di inisialisasi, kita gunakan dan rubah valuenya di action button send data dengan value terbaru yang didapat dari inputText.
