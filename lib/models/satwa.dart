class Satwa {
  String name;
  String populasi;
  String makanan;
  String negara;
  String deskripsi;
  String imageAsset;

  Satwa({
    required this.name,
    required this.populasi,
    required this.makanan,
    required this.negara,
    required this.deskripsi,
    required this.imageAsset,
  });
}

var satwaList = [
  Satwa(
      name: 'Komodo',
      populasi: '± 3000 Ekor',
      makanan: 'Karnivora',
      negara: 'Indonesia',
      deskripsi:
          'Bukan rahasia lagi kalau komodo menjadi satwa endemik Indonesia. Bahkan komodo termasuk binatang purba yang masih lestari dan satu-satunya di dunia. Di Indonesia, habitat komodo berada di kawasan Taman Nasional Komodo, Manggarai Barat, Nusa Tenggara Timur. Tercatat, pada 2022 komodo yang tersebar di tiga pulau besar, yakni Pulau Komodo, Pulau Rinca, dan Pulau Padar.',
      imageAsset: 'images/komodo.jpg'),
  Satwa(
      name: 'Harimau Malaya',
      populasi: '± 150 Ekor',
      makanan: 'Karnivora',
      negara: 'Malaysia',
      deskripsi:
          'Panthera tigris jacksoni atau Harimau Malaya merupakan satwa endemik dari Malaysia. Habitat harimau malaya berada di sekitar Semenanjung Malaysia. Harimau malaya termasuk dalam hewan terancam punah. Harimau malaya jantan umumnya memiliki panjang tubuh mencapai 237 cm, betina sepanjang 200 cm.',
      imageAsset: 'images/harimau.jpg'),
  Satwa(
      name: 'Merak Hijau',
      populasi: '± 15000 Ekor',
      makanan: 'Omnivora',
      negara: 'Myanmar',
      deskripsi:
          'Sesuai namanya, burung merak ini memiliki bulu dominan berwarna hijau. Ciri khas dari burung ini adalah ekor yang panjang dan lebar bagai kipas. Menjadi salah satu satwa endemik di kawasan Asia Tenggara, merak hijau merupakan hewan nasional Myanmar. Bahkan burung dengan nama latin Burmese peafowl ini menjadi lambang monarki Burma pada awal abad ke-19. ',
      imageAsset: 'images/merak.jpg'),
  Satwa(
      name: 'Lembu Hutan',
      populasi: 'Tidak diketahui',
      makanan: 'Herbivora',
      negara: 'Kamboja',
      deskripsi:
          'Menjadi hewan nasional Kamboja, lembu hutan atau lebih dikenal dengan kouprey termasuk binatang langka di dunia. Ciri khas dari lembu hutan Kamboja adalah tanduknya yang panjang dan berulir. Menariknya lagi, lembu juga menjadi hewan kerajaan Kamboja, yang dipercaya dapat meramalkan nasib baik bagi negara tersebut.',
      imageAsset: 'images/lembu.jpg'),
  Satwa(
      name: 'Gajah Asia',
      populasi: '± 4000 Ekor',
      makanan: 'Herbivora',
      negara: 'Thailand',
      deskripsi:
          'Menjadi simbol kebesaran kerajaan Thailand, gajah asia termasuk salah satu satwa endemik di Asia Tenggara. Gajah Asia memiliki tinggi mencapai 3,5 meter, dan berat badannya sekitar 5.500 kilogram.',
      imageAsset: 'images/gajah_asia.jpg'),
  Satwa(
      name: 'Gajah India',
      populasi: 'Tidak diketahui',
      makanan: 'Herbivora',
      negara: 'Laos',
      deskripsi:
          'Walau namanya gajah india, tapi hewan endemik Asia Tenggara ini merupakan hewan nasional Laos. Fakta menariknya, Laos juga dijuluki Negeri Sejuta Gajah oleh Raja Fa Ngum! Bahkan, gajah india juga menjadi alat transportasi utama keluarga Kerajaan Laos zaman dahulu. Ciri khas dari gajah india adalah tingginya yang mencapai 2-3,5 meter, dengan berat berkisar antara 2-5 ton.',
      imageAsset: 'images/gajah_india.jpg'),
  Satwa(
      name: 'Saola',
      populasi: 'Tidak diketahui',
      makanan: 'Herbivora',
      negara: 'Vietnam',
      deskripsi:
          'Hewan endemik dari Asia Tenggara berikutnya berasal dari negara Vietnam, yakni saola (Pseudoryx nghetinhensis). Hewan ini kerap dijuluki sebagai Unicorn Asia, karena punya tanduk yang mirip unicorn. Ciri khas dari saola adalah kulit tebal berwarna kecokelatan dengan bercak putih pada wajah dan leher, dan tanduknya bisa tumbuh hingga 50 cm. ',
      imageAsset: 'images/saola.jpg'),
  Satwa(
      name: 'Elang',
      populasi: '± 400 Ekor',
      makanan: 'Karnivora',
      negara: 'Filipina',
      deskripsi:
          'Selanjutnya ada satwa endemik dari Filipina, yakni elang filipina (Pithecophaga jefferyi) yang menghuni hutan di Filipina. Elang ini juga termasuk salah satu spesies elang yang terancam punah, dari keluarga Accipitridae. Hewan nasional Filipina ini tercatat sebagai salah satu elang terbesar di dunia. Rentang sayapnya bisa mencapai 2 meter, dengan panjang tubuh 90-100 cm, dan berat sekitar 6 kg.',
      imageAsset: 'images/elang.jpg'),
  Satwa(
      name: 'Bekantan',
      populasi: '± 4000 Ekor',
      makanan: 'Herbivora',
      negara: 'Brunei Darussalam',
      deskripsi:
          'Salah satu satwa endemik yang berada di Pulau Borneo (Kalimantan). Bekantan merupakan sejenis kera yang mempunyai ciri khas hidung yang panjang dan besar dengan rambut berwarna cokelat kemerahan. Karena warna bulunya tersebut, bekantan juga kerap disebut sebagai monyet belanda, dengan nama ilmiahnya Nasalis larvatus.',
      imageAsset: 'images/bekantan.jpg'),
];
