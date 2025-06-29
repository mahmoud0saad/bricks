import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';

class SubTitleCards {
  SubTitleCards({required this.title, required this.icon});
  final String title;
  final String icon;
}

class QuantitySubTitle extends SubTitleCards {
  QuantitySubTitle({required super.title}) : super(icon: Assets.icons.weight);
}

class PriceSubTitle extends SubTitleCards {
  PriceSubTitle({required super.title}) : super(icon: Assets.icons.packageIcon);
}

class MerchantSubTitle extends SubTitleCards {
  MerchantSubTitle({required super.title}) : super(icon: Assets.icons.userIcon);
}

class CreateAddSubTitle extends SubTitleCards {
  CreateAddSubTitle({required super.title})
      : super(icon: Assets.icons.timeIcon);
}

class DateSubTitle extends SubTitleCards {
  DateSubTitle({required super.title}) : super(icon: Assets.icons.timeIcon);
}

class BillSubTitle extends SubTitleCards {
  BillSubTitle({required super.title}) : super(icon: Assets.icons.grayBillIcon);
}
