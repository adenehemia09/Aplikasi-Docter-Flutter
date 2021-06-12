class DocterAnak{
  final String gambaarDoc;
  final String namaDocter;
  final String categoriDocter;
  final String pendidikanDocter;
  List<String> jadwalDocter1;
  List<String> jadwalDocter2;
  List<String> jadwalDocter3;
  final String tempatPraktik;
  final String nomorStr;
  String biayaKonsultasi;
  DocterAnak({this.namaDocter, this.categoriDocter,
    this.pendidikanDocter, this.jadwalDocter1,
    this.jadwalDocter2, this.jadwalDocter3,
    this.tempatPraktik, this.nomorStr, this.gambaarDoc, this.biayaKonsultasi});
}
List<DocterAnak>  docterAnak = [
  DocterAnak(
    gambaarDoc: 'images/dr Patricia Wonodiharyanto Sp A.jpeg',
    namaDocter: 'dr.Patricia Wonodihardjo,\nSp.A',
    categoriDocter: 'Dokter Spesialis Anak',
    pendidikanDocter: 'Universitas Sam Ratulangi',
    jadwalDocter1: [
      'Sabtu',
      '07.00-09.00',
      '09.00-11.00',
      ''
    ],
    jadwalDocter2: [
      'Minggu',
      '07.00-09.00',
      '09.00-11.00',
      ''
    ],
    jadwalDocter3: [
      'Senin',
      '07.00-09.00',
      '09.00-11.00',
      ''
    ],
    tempatPraktik: 'DIDOKTERIN, Jambi',
    nomorStr: '9921201320116948',
      biayaKonsultasi: 'Rp25.000'
  ),
  DocterAnak(
    gambaarDoc: 'images/dr Martinus M leman Dtmh Sp A.jpeg',
    namaDocter: 'dr.Martinus M. Leman,\nDTMH, Sp.A',
    categoriDocter: 'Dokter Spesialis Anak',
    pendidikanDocter: 'Universitas Atma Jaya, Jakarta',
    jadwalDocter1: [
      'Selasa',
      '11.00-13.00',
      '',
      ''
    ],
    jadwalDocter2: [
      "Jum'at",
      '11.00-13.00',
      '',
      ''
    ],
    jadwalDocter3: [
      "Selasa",
      '11.00-13.00',
      '',
      ''
    ],
    tempatPraktik: 'RS Sentral Medika Cibinong, Bogor',
    nomorStr: '3111201316039570',
    biayaKonsultasi: 'Rp25.000'
  ),
  DocterAnak(
    gambaarDoc: 'images/dr Vania Catleya Estina Sp A .jpeg',
    namaDocter: 'dr.Vania Catleya Estina,\nSp.A',
    categoriDocter: 'Dokter Spesialis Anak',
    pendidikanDocter: 'Falkutas Kedokteran, Universitas\nKristen Maranata',
    jadwalDocter1: [
      'Sabtu',
      '07.00-09.00',
      '09.00-11.00',
      ''
    ],
    jadwalDocter2: [
      "Jum'at",
      '07.00-09.00',
      '09.00-11.00',
      ''
    ],
    jadwalDocter3: [
      "Selasa",
      '07.00-09.00',
      '09.00-11.00',
      ''
    ],
    tempatPraktik: 'RSK Lindimara, Kabupaten Sumba Timur',
    nomorStr: '5121201320131101',
      biayaKonsultasi: 'Rp25.000'
  ),
  DocterAnak(
    namaDocter: 'dr.Vania Catleya Estina,\nSp.A',
    categoriDocter: 'Dokter Spesialis Anak',
    pendidikanDocter: 'Falkutas Kedokteran, Universitas\nKristen Maranata',
    jadwalDocter1: [
      'Sabtu',
      '07.00-09.00',
      '09.00-11.00',
      ''
    ],
    jadwalDocter2: [
      "Jum'at",
      '07.00-09.00',
      '09.00-11.00',
      ''
    ],
    jadwalDocter3: [
      "Selasa",
      '07.00-09.00',
      '09.00-11.00',
      ''
    ],
    tempatPraktik: 'RSK Lindimara, Kabupaten Sumba Timur',
    nomorStr: '5121201320131101',
  ),
  DocterAnak(
      gambaarDoc: 'images/dr Patricia Wonodiharyanto Sp A.jpeg',
    namaDocter: 'dr.Laurentia Ima Monica,\nSp.A',
    categoriDocter: 'Dokter Spesialis Anak',
    pendidikanDocter: 'Universitas Bariwijaya',
    jadwalDocter1: [
      'Sabtu',
      '13.00-15.00',
      '09.00-11.00',
      ''
    ],
    jadwalDocter2: [
      "Jum'at",
      '13.00-15.00',
      '09.00-11.00',
      ''
    ],
    jadwalDocter3: [
      "Selasa",
      '13.00-15.00',
      '09.00-11.00',
      ''
    ],
    tempatPraktik: 'RS.Univ.Bariwijaya, Malang',
    nomorStr: '3521201318080592',
      biayaKonsultasi: 'Rp25.000'
  ),
];