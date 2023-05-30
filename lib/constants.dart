import 'package:media_pencak_silat/model/item.dart';
import 'package:media_pencak_silat/model/menu.dart';
import 'package:media_pencak_silat/enums.dart';

class Constants {
  static List<Menu> menuList = [
    Menu(
        title: "Latihan Jatuhan",
        image: "assets/images/jatuhan_dua.png",
        category: ItemCategory.jatuhan),
    Menu(
        title: "Latihan Tangkapan",
        image: "assets/images/tangkapan_dalam.png",
        category: ItemCategory.tangkapan),
  ];

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
    Item(
      jatuhanSatu,
      ItemCategory.jatuhan,
      "assets/images/jatuhan_satu.png",
      "https://drive.google.com/file/d/1w1g95pEdUiB9x2jBF87gvfhqzJ0Yn1zJ/view?usp=share_link",
    ),
    Item(
      jatuhanDua,
      ItemCategory.jatuhan,
      "assets/images/jatuhan_dua.png",
      "https://drive.google.com/file/d/1pEbtwuL7cSWAkKNWqYv-9_3FYGuE4mXF/view?usp=share_link",
    ),
    Item(
      jatuhanTiga,
      ItemCategory.jatuhan,
      "assets/images/jatuhan_tiga.png",
      "https://drive.google.com/file/d/1CkLbRPM6JAKHYTZ8V7ZszMPwsPQUi8Fe/view?usp=share_link",
    ),
    Item(
      jatuhanEmpat,
      ItemCategory.jatuhan,
      "assets/images/jatuhan_empat.png",
      "https://drive.google.com/file/d/1EHHjysueakNTk8ivMwhCJkhRT5_UW3xF/view?usp=share_link",
    ),
    Item(
      jatuhanLima,
      ItemCategory.jatuhan,
      "assets/images/jatuhan_lima.png",
      "https://drive.google.com/file/d/1J2Mu23BBfFmhzvOvpQtq-Z-MpEUCdyPY/view?usp=share_link",
    ),
    Item(
      jatuhanPunggung,
      ItemCategory.jatuhan,
      "assets/images/jatuhan_punggung.png",
      "https://drive.google.com/file/d/1N_APOwBrL6ro756ee3vqzZ0CJNbpEp-p/view?usp=share_link",
    ),
    Item(
      jatuhanSaweran,
      ItemCategory.jatuhan,
      "assets/images/jatuhan_saweran.png",
      "https://drive.google.com/file/d/1A6AC6JyY3scUsKr_sTJbaKVqG3kNclsx/view?usp=share_link",
    ),
    Item(
      guntinganPinggang,
      ItemCategory.jatuhan,
      "assets/images/guntingan_pinggang.png",
      "https://drive.google.com/file/d/1HeD_D9-Op3DHsoTwJArC6Xto4h71Fki8/view?usp=share_link",
    ),
    Item(
      guntinganKaki,
      ItemCategory.jatuhan,
      "assets/images/guntingan_kaki.png",
      "https://drive.google.com/file/d/1Nag7u0eGgU0gZfGAHekGFsJZRm_L04VJ/view?usp=share_link",
    ),
    Item(
      jatuhanCircle,
      ItemCategory.jatuhan,
      "assets/images/jatuhan_circle.png",
      "https://drive.google.com/file/d/1Nag7u0eGgU0gZfGAHekGFsJZRm_L04VJ/view?usp=share_link",
    ),
  ];

  static const String tangkapanLuar = "Tangkapan Luar";
  static const String tangkapanDalam = "Tangkapan Dalam";

  static List<Item> tangkapanList = [
    Item(
      tangkapanLuar,
      ItemCategory.tangkapan,
      "assets/images/tangkapan_luar.png",
      "https://drive.google.com/file/d/13VlEl3fOb8rc1xswc85js7Bn3EeJaVR9/view?usp=share_link",
    ),
    Item(
      tangkapanDalam,
      ItemCategory.tangkapan,
      "assets/images/tangkapan_dalam.png",
      "https://drive.google.com/file/d/1eqjXHmOAeQBYU3L5IdCVPbNZdLDFu6fi/view?usp=share_link",
    ),
  ];
}
