class PengumumanData {
  String header;
  String isi;
  String singkat;
  String judulDetail;
  String imageAsset;

  PengumumanData({
    required this.header,
    required this.isi,
    required this.singkat,
    required this.judulDetail,
    required this.imageAsset,
  });
}


var pengumumanList = [
  PengumumanData(
    header: 'Pengumuman KP',
    isi: 'KP Semester Gasal 2021/2022 dimulai tanggal 26 September 2021'
        ' Syarat dan Ketentuan adalah : Lunas pembayaran, lulus matakulian, daftar KP',
    singkat: 'KP Semester Gasal 2021/2022 dimulai tanggal',
    judulDetail: 'Pengumuman KP 2021/2022 dan syaratnya',
    imageAsset: 'images/kp.png'
  ),
  PengumumanData(
    header: 'Pengumuman TA',
    isi: 'TA Semester Gasal 2021/2022 dimulai tanggal 1 September 2021'
        ' Syarat dan ketentuan adalah : sudah bimbingan, administrasi, siap TA',
    singkat: 'TA Semester Gasal 2021/2022 dimulai tanggal',
    judulDetail: 'Pengumuman TA 2021/2022 dan syaratnya',
    imageAsset: 'images/skripsi.png'
  ),
  PengumumanData(
    header: 'Pengumuman KBM',
    isi: 'KBM Semester Gasal 2021/2022 dimulai tanggal 5 September 2021'
        ' Syarat dan ketentuan adalah : siap KBM, lulus seleksi, minat',
    singkat: 'KBM Semester Gasal 2021/2022 dimulai tanggal',
    judulDetail: 'Pengumuman KBM 2021/2022 dan syaratnya',
    imageAsset: 'images/ekstra.jpg'
  ),
  PengumumanData(
    header: 'Pengumuman LK',
    isi: 'LK Semester Gasal 2021/2022 dimulai tanggal 16 September 2021'
        ' Syarat dan ketentuan adalah : mahasiswa usulan, lulus seleksi',
    singkat: 'LK Semester Gasal 2021/2022 dimulai tanggal',
    judulDetail: 'Pengumuman LK 2021/2022 dan syaratnya',
    imageAsset: 'images/rapat.jpg'
  ),
];

