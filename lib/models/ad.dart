import 'package:flatform/screens/componentss/adContainer.dart';
import 'package:hive/hive.dart';

part 'ad.g.dart';

@HiveType(typeId: 1)
class Ad {
  @HiveField(0)
  String name;
  @HiveField(1)
  int price;
  @HiveField(3)
  bool isFavorite;
  @HiveField(4)
  String image;

  Ad({this.image, this.price, this.name, this.isFavorite = false});
}
