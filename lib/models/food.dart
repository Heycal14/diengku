part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate,
      this.types = const []});

  @override
  List<Object> get props => [
        id,
        picturePath,
        name,
        description,
        ingredients,
        price,
        rate,
      ];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath: "https://akcdn.detik.net.id/community/media/visual/2016/12/23/f37f4199-3d02-4169-a1dc-f91f01f5ea3a.jpg?w=700&q=90",
      name: "Kentang",
      description:
          "Menurut Kompas.com Kentang Dieng disebut sebagai salah satu kentang terbaik dunia. Saat ini, para petani terus mencari komoditas alternatif penyela kentang yang bernilai ekonomis tinggi dan cocok ditanam di lahan mereka. Selain soal ukuran dan rasa, kentang Dieng juga dikenal memiliki kualitas yang lebih baik dari kentang yang berasal dari daerah lain.",
      ingredients: "1 kg",
      price: 9000,
      rate: 4.6,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 2,
      picturePath: "https://awsimages.detik.net.id/community/media/visual/2017/03/11/44e72571-912a-427d-ba71-54773031b7fd.jpg?w=700&q=90",
      name: "Keripik Kentang",
      description:
          "keripik kentang adalah salah satu kuliner khas Dataran Tinggi Dieng, Jawa Tengah. Keripik kentang Dieng merupakan salah satu jenis makanan (ringan) yang dikenal sangat nikmat, enak dan gurih, karena terbuat dari bahan kentang segar pilihan (langsung dari kebun) yang bermutu tinggi.",
      ingredients: "250gr",
      price: 45000,
      rate: 4.5),
  Food(
      id: 3,
      picturePath: "https://s4.bukalapak.com/img/981236096/large/KERIPIK_KLOTAK_ORI.jpg",
      name: "Klotak",
      description: 
      "Klotak adalah makanan khas Batur (salah satu kecamatan di dataran tinggi dieng) yang terbuat dari singkong pilihan dicampir dengan rempah-rempah kemudian digoreng tipis tipis dengan perpaduan rasa gurih, asin dan pedas.",
      ingredients: "250gr",
      price: 19000,
      rate: 4.3,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath: "https://images.tokopedia.net/img/cache/500-square/product-1/2019/7/13/1823383/1823383_3873a7c5-f324-4dca-afc9-7bd6c04e87ea_592_592.jpg",
      name: "Dodol Carica",
      description:
          "Dodol carica ini enggak cuma ditambah buah carica, tapi juga air hasil perasan carica. Dodol yang juga disebut jenang carica ini tersedia dalam beberapa varian rasa, seperti original, campur terung belanda dan campur kentang. ",
      ingredients: "1 kotak",
      price: 25000,
      rate: 4.9,
      types: [FoodType.recommended]),
  Food(
      id: 6,
      picturePath: "https://bit.ly/3M4776Y",
      name: "Carica",
      description:
          "Buah berwarna merah dan kuning ini adalah sumber vitamin A dan C. Tidak hanya itu, mineral seperti kalsium, zat besi, kalium, magnesium, hingga fosfor juga terkandung dalam buah yang tumbuh subur di Dieng ini. Buah Terong Belanda memiliki manfaat untuk melancarkan pencernaan, meningkatkan penglihatan, mencegah kangker, mencegah darah tinggi dan masih banyak lagi",
      ingredients: "6pcs",
      price: 15000,
      rate: 4.8,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 7,
      picturePath: "https://cf.shopee.co.id/file/3c43110d6ccf66333acce8093ce92c2f",
      name: "Sirup Terong",
      description:
          "Ikan dengan ciri khas kepala yang menonjol ini sangat terkenal diberbagai kalangan. Di Indonesia, ikan lohan menjadi salah satu jenis ikan air tawar yang banyak diminati para kolektor ikan. Bentuknya yang unik dengan warna yang indah menjadikan ikan louhan sebagai simbol keberuntungan. Harga ikan ini juga cukup mahal loh Ruppers.",
      ingredients: "5cm",
      price: 10000,
      rate: 4.4,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 8,
      picturePath: "https://images.tokopedia.net/img/cache/500-square/product-1/2019/7/13/1823383/1823383_968936ea-1c89-4199-9cea-6d0a74c34455_592_592.jpg",
      name: "Dodol Terong",
      description: "Untuk Aquarium ada berbagai ukuran",
      ingredients: "custom",
      price: 0,
      rate: 4.7,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 9,
      picturePath: "https://cf.shopee.com.my/file/862bf1df1b179b2c6d79b08a581ac57b",
      name: "Belerang",
      description:
          "Belerang atau sulfur adalah senyawa yang terdapat di hampir seluruh makhluk hidup. Mineral ini dapat dimanfaatkan menjadi obat untuk mengatasi berbagai jenis kondisi kesehatan. Beberapa manfaat dari belerang untuk kesehatan adalah mengobati jerawat, mengatasi ketombe, mengobati infeksi kulit dan lainnya",
      ingredients: "25gr",
      price: 7000,
      rate: 4.4,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 10,
      picturePath: "https://cf.shopee.co.id/file/6cd39607b67de6a77323e348bb238a8c",
      name: "Kupluk",
      description:
          "Dieng terkenal akan dinginnya, untuk itu banyak penduduk asli sana ataupun wisatawan yang menggunakan kupluk, kupluk ini di desain untuk pembeli agar selalu mengingat Dieng, karena kupluk ini buatan asli penduduk dieng",
      ingredients: "1pcs",
      price: 20000,
      rate: 4.4,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 11,
      picturePath: "https://akcdn.detik.net.id/api/wm/2020/05/27/38323107-33e4-4860-8d08-dc439fbb1efc_169.jpeg",
      name: "Wortel",
      description:
          "Kawasan Dieng merupakan penghasil sayuran dataran tinggi untuk wilayah Jawa Tengah. Kentang adalah komoditas utama dan usaha taninya menjadi mata pencaharian utama bagi penduduk kawasan itu. Selain itu, wortel, kubis, dan bawang-bawangan juga dihasilkan dari kawasan ini. ",
      ingredients: "1kg",
      price: 12000,
      rate: 4.4,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
];