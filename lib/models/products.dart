import 'package:login_registeration_design/utils/string_constants.dart';

class ProductDetails {
  String? title;
  String? description;
  String? price;
  String? orignalPrice;
  String? off;
  ProductDetails(
      {this.title, this.description, this.price, this.orignalPrice, this.off});
}

List<ProductDetails> listData = [
  ProductDetails(
      title: StringConstants.womenPrinted,
      description: StringConstants.description,
      price: "1500",
      orignalPrice: "2499",
      off: "40%Off"),
  ProductDetails(
      title: StringConstants.hrx,
      description: StringConstants.description,
      price: "2499",
      orignalPrice: "4999",
      off: "50%Off"),
];
