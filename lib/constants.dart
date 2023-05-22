import 'package:media_pencak_silat/model/item.dart';
import 'package:media_pencak_silat/enums.dart';

class Constants {
  static const String jatuhanSatu = "Teknik Jatuhan Satu";
  static const String jatuhanDua = "Teknik Jatuhan Dua";
  static const String jatuhanTiga = "Teknik Jatuhan Tiga";
  static const String jatuhanEmpat = "Teknik Jatuhan Empat";
  static const String jatuhanLima = "Teknik Jatuhan Lima";
  static const String jatuhanPunggung = "Teknik Jatuhan Punggung";
  static const String jatuhanSaweran = "Teknik Jatuhan Saweran";
  static const String guntinganPinggang = "Teknik Guntingan Pinggang";
  static const String guntinganKaki = "Teknik Guntingan Kaki";
  static const String jatuhanCircle = "Teknik Jatuhan Circle";

  static const String urlVideo =
      "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4";

  static List<Item> jatuhanList = [
    Item(jatuhanSatu, ItemCategory.jatuhan, "assets/images/jatuhan_satu.png",
        urlVideo),
    Item(jatuhanDua, ItemCategory.jatuhan, "assets/images/jatuhan_dua.png",
        urlVideo),
    Item(jatuhanTiga, ItemCategory.jatuhan, "assets/images/jatuhan_tiga.png",
        urlVideo),
    Item(jatuhanEmpat, ItemCategory.jatuhan, "assets/images/jatuhan_empat.png",
        urlVideo),
    Item(jatuhanLima, ItemCategory.jatuhan, "assets/images/jatuhan_lima.png",
        urlVideo),
    Item(jatuhanPunggung, ItemCategory.jatuhan,
        "assets/images/jatuhan_punggung.png", urlVideo),
    Item(jatuhanSaweran, ItemCategory.jatuhan,
        "assets/images/jatuhan_saweran.png", urlVideo),
    Item(guntinganPinggang, ItemCategory.jatuhan,
        "assets/images/guntingan_pinggang.png", urlVideo),
    Item(guntinganKaki, ItemCategory.jatuhan,
        "assets/images/guntingan_kaki.png", urlVideo),
    Item(jatuhanCircle, ItemCategory.jatuhan,
        "assets/images/jatuhan_circle.png", urlVideo),
  ];

  static const String tangkapanLuar = "Tangkapan Luar";
  static const String tangkapanDalam = "Tangkapan Dalam";

  static List<Item> tangkapanList = [
    Item(tangkapanLuar, ItemCategory.tangkapan,
        "assets/images/tangkapan_luar.png", urlVideo),
    Item(tangkapanDalam, ItemCategory.tangkapan,
        "assets/images/tangkapan_dalam.png", urlVideo),
  ];
}
