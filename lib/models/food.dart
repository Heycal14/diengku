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
          "Cupang, ikan laga, atau ikan adu siam adalah ikan air tawar yang habitat asalnya adalah beberapa negara di Asia Tenggara, antara lain Indonesia, Thailand, Malaysia, Brunei Darussalam, Singapura, Vietnam, dan Indonesia.",
      ingredients: "5cm",
      price: 15000,
      rate: 4.6,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 2,
      picturePath: "https://awsimages.detik.net.id/community/media/visual/2017/03/11/44e72571-912a-427d-ba71-54773031b7fd.jpg?w=700&q=90",
      name: "Keripik Kentang",
      description:
          "Ikan mas atau Ikan karper adalah ikan air tawar yang memiliki nilai ekonomis penting dan sudah tersebar luas di Indonesia. Di Indonesia, ikan mas mulai dipelihara sekitar tahun 1920-an. Ikan mas yang terdapat di Indonesia merupakan ikan mas yang dibawa dari Cina, Eropa, Taiwan dan Jepang.",
      ingredients: "20cm",
      price: 100000,
      rate: 4.5),
  Food(
      id: 3,
      picturePath: "https://s4.bukalapak.com/img/981236096/large/KERIPIK_KLOTAK_ORI.jpg",
      name: "Klotak",
      description:
          "Ikan mas hias adalah ikan air tawar dari familia Cyprinidae dan ordo Cypriniformes. Ikan ini adalah salah satu ikan yang pertama kali berhasil didomestikasi, dipelihara, dan dibudidayakan manusia.",
      ingredients: "10cm",
      price: 120000,
      rate: 4.3,
      types: [FoodType.new_food]),
  Food(
      id: 4,
      picturePath: "https://images.tokopedia.net/img/cache/500-square/product-1/2019/7/13/1823383/1823383_3873a7c5-f324-4dca-afc9-7bd6c04e87ea_592_592.jpg",
      name: "Dodol Carica",
      description:
          "Gupi, ikan seribu, ikan cere, atau suwadakar (Poecilia reticulata), adalah salah satu spesies ikan hias air tawar yang paling populer di dunia. Karena mudahnya menyesuaikan diri dan beranak-pinak, di banyak tempat di Indonesia ikan ini telah menjadi ikan liar yang memenuhi parit-parit dan selokan.",
      ingredients: "5cm",
      price: 200000,
      rate: 4.9,
      types: [FoodType.recommended]),
  Food(
      id: 5,
      picturePath: "https://jualcarica.com/wp-content/uploads/2014/12/asal-usul-buah-carica.jpg",
      name: "Carica",
      description:
          "Ikan Molly merupakan ikan hias air tawar yang cukup menarik dengan warnanya yang mengkilap dan bentuk tubuh yang mungil yang memancarkan daya tarik tersendiri dan menjadikan ikan ini sangat cocok untuk sebuah hobi memelihara ikan di akuarium.",
      ingredients: "5cm",
      price: 10000,
      rate: 4.0,
      types: [FoodType.new_food]),
  Food(
      id: 6,
      picturePath: "https://ksmtour.com/media/images/articles17/buah-carica-khas-dieng.jpg",
      name: "Carica",
      description:
          "Ikan botia termasuk ikan nokturnal karna aktif dimalam hari dan ikan ini adalah ikan yang paling banyak diburu para pecinta ikan hias untuk menghiasi akuarium mereka. Terdapat beberapa jenis ikan hias botia yang menjadi primadona, di antaranya ikan botia macan, ikan botia badut, ikan botia morleti, dan ikan botia India.",
      ingredients: "15cm",
      price: 125000,
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
          "Identik dengan badan lebar berwarna atraktif, ikan hias air tawar yang lucu ini bisa jadi pilihan untuk menghidupkan susasana rumahmu. Kunci utama dalam memelihara ikan hias air tawar ini adalah kamu wajib perhatikan suhu akuarium di sekitar 28-31 celcius supaya kondisinya agak hangat dan kadar oksigennya stabil. Ikan hias air tawar ini merupakan spesies dari Amazon, jadi buatlah suasana akuarium dengan tambahan tanaman batang dan hiasan akuarium lainnya agar makin ideal.",
      ingredients: "5cm",
      price: 10000,
      rate: 4.4,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 10,
      picturePath: "https://cf.shopee.co.id/file/6cd39607b67de6a77323e348bb238a8c",
      name: "Kupluk",
      description:
          "Ikan neon tetra sangat menarik perhatian karena ikan hias air tawar ini punya pijar seperti neon saat disinari lampu. Gayanya yang tenang juga sering jadi terapi tersendiri di rumah. Tidak sulit, kok pelihara ikan hias air tawar ini karena pakannya cukup fleksibel. Ukurannya juga hanya sekitar 4 cm saja, lho!",
      ingredients: "4cm",
      price: 10000,
      rate: 4.4,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
  Food(
      id: 11,
      picturePath: "https://akcdn.detik.net.id/api/wm/2020/05/27/38323107-33e4-4860-8d08-dc439fbb1efc_169.jpeg",
      name: "Wortel",
      description:
          "Menjadi rajanya ikan mas koki hias, ikan ranchu punya tampilan eksotis dengan lekuk tubuh bungkuk yang bikin gemas. Ekor ikan hias air tawar ini juga bisa tumbuh panjang penuh keanggunan. Cara memelihara ikan hias air tawar ini tidak banyak berbeda dengan ikan mas koki biasa, yaitu cukup perhatikan kualitas air, filter, dan pakan. ",
      ingredients: "4cm",
      price: 10000,
      rate: 4.4,
      types: [FoodType.new_food, FoodType.recommended, FoodType.popular]),
];