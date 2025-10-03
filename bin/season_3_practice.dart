// contoh fungsi async yang mengembalikan data
Future<String> fetchSomething() async {
  await Future.delayed(Duration(seconds: 2)); // simulasi delay
  // return 'Data berhasil diambil!';
  throw Exception("Gagal mengambil data!"); // contoh error
}

void main() async {
  try {
    final data = await fetchSomething();
    print(data);
  } catch (e, st) {
    // e: exception, st: stacktrace
    print('Error: $e');
    print('Stacktrace: $st');
  } finally {
    // selalu dipanggil (bersih-bersih, tutup koneksi, dsb.)
    print('Selesai proses');
  }
}
