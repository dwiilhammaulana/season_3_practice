Future<String> getData() async {
  // simulasi delay 2 detik
  await Future.delayed(Duration(seconds: 2));
  return 'Data berhasil diambil!';
}

void main() async {
  print('Mulai fetch...');
  String hasil = await getData();
  print(hasil); // Data berhasil diambil!
  print('Selesai');
}
