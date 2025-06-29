import 'package:{{package_name.snakeCase()}}/core/constants/app_padding.dart';
import 'package:{{package_name.snakeCase()}}/core/helpers/extensions/gap_extensions.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/typography/agri_text_theme.dart';
import 'package:{{package_name.snakeCase()}}/gen/assets.gen.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/app_colors.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen._({
    required this.emptyScreenEnum,
    this.width,
    this.physics,
  });

  factory EmptyScreen.offer() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.offer);
  }

  factory EmptyScreen.farm() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.farm);
  }
  factory EmptyScreen.order() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.order);
  }
  factory EmptyScreen.purchases() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.purchases);
  }

  factory EmptyScreen.buyers({double? width}) {
    return EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.buyers, width: width);
  }
  factory EmptyScreen.receipts({double? width}) {
    return EmptyScreen._(
      emptyScreenEnum: EmptyScreenEnum.receipts,
      width: width,
    );
  }

  factory EmptyScreen.supply() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.supply);
  }
  factory EmptyScreen.joinMartket() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.joinMartket);
  }
  factory EmptyScreen.reviews({ScrollPhysics? tempPhysics}) {
    return EmptyScreen._(
      emptyScreenEnum: EmptyScreenEnum.reviews,
      physics: tempPhysics,
    );
  }
  factory EmptyScreen.ads() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.ads);
  }
  factory EmptyScreen.markets() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.markets);
  }
  factory EmptyScreen.priceList() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.priceList);
  }

  factory EmptyScreen.invoices() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.invoices);
  }
  factory EmptyScreen.directSale() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.directSale);
  }

  factory EmptyScreen.invitations() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.invitations);
  }
  factory EmptyScreen.posts() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.posts);
  }
  factory EmptyScreen.stories() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.stories);
  }
  factory EmptyScreen.news() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.news);
  }
  factory EmptyScreen.retunrs() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.retunrs);
  }
  factory EmptyScreen.transactions() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.transactions);
  }
  factory EmptyScreen.employees() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.employees);
  }
  factory EmptyScreen.roles() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.roles);
  }
  factory EmptyScreen.grades() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.grades);
  }
  factory EmptyScreen.returnRequests() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.returnRequests);
  }
  factory EmptyScreen.cities() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.cities);
  }
  factory EmptyScreen.unitTypes() {
    return const EmptyScreen._(emptyScreenEnum: EmptyScreenEnum.unitTypes);
  }
  final EmptyScreenEnum emptyScreenEnum;
  final double? width;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: physics ?? const AlwaysScrollableScrollPhysics(),
      child: Container(
        alignment: Alignment.center,
        child: Container(
          width: width ?? 270.w,
          alignment: Alignment.center,
          padding: AppPadding.allScreenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(emptyScreenEnum.image),
              30.h.gap,
              Text(
                translateByKey(context, emptyScreenEnum.title),
                maxLines: 2,
                style: AgriTextTheme.of(
                  context,
                ).heading2.bold(color: AppColors.naturalGray2),
                textAlign: TextAlign.center,
              ),
              Text(
                emptyScreenEnum.subTitle.isNotEmpty
                    ? translateByKey(context, emptyScreenEnum.subTitle)
                    : '',
                maxLines: 2,
                style: AgriTextTheme.of(
                  context,
                ).heading3.med(color: AppColors.naturalGray2),
                textAlign: TextAlign.center,
              ),
              10.h.gap,
            ],
          ),
        ),
      ),
    );
  }
}

enum EmptyScreenEnum {
  farm(
    title: "farm_receipts_empty_title",
    subTitle: "farm_receipts_empty_desc",
  ),
  order(title: "order_empty_title", subTitle: "order_empty_desc"),
  purchases(title: "order_empty_title", subTitle: ''),

  supply(title: "supply_empty_title", subTitle: "supply_empty_desc"),
  offer(subTitle: "", title: "offer_empty_desc"),
  joinMartket(subTitle: "", title: "join_empty_title"),
  reviews(subTitle: '', title: "reviews_empty_desc"),
  ads(subTitle: "ads_empty_title", title: "ads_empty_desc"),
  markets(subTitle: '', title: "markets_empty_desc"),
  priceList(subTitle: '', title: "price_list_empty_desc"),
  invoices(subTitle: '', title: "invoices_empty_title"),
  directSale(subTitle: '', title: "sales_empty_title"),
  posts(subTitle: '', title: "posts_empty_title"),
  receipts(subTitle: '', title: "receipts_empty_title"),
  news(subTitle: '', title: "news_empty_title"),
  stories(subTitle: '', title: "stories_empty_title"),
  retunrs(title: "returns_empty_title", subTitle: ''),
  buyers(subTitle: '', title: "buyers_empty_title"),
  transactions(subTitle: '', title: "transactions_empty_title"),
  invitations(subTitle: '', title: "invitations_empty_title"),
  employees(subTitle: '', title: "employee_empty_title"),

  roles(subTitle: '', title: "roles_empty_title"),
  returnRequests(subTitle: '', title: "returnRequests_empty_title"),
  grades(subTitle: '', title: "grades_empty_title"),

  cities(subTitle: '', title: "cities_empty_title"),

  unitTypes(subTitle: '', title: "unitTypes_empty_title");

  final String title;
  final String subTitle;

  const EmptyScreenEnum({
    required this.title,
    required this.subTitle,
  });

  String get image => Assets.images.empty.emptyImage;
}

// Helper function to get translation by key
String translateByKey(BuildContext context, String key) {
  switch (key) {
    case 'farm_receipts_empty_title':
      return S.of(context).farm_receipts_empty_title;
    case 'farm_receipts_empty_desc':
      return S.of(context).farm_receipts_empty_desc;
    case 'order_empty_title':
      return S.of(context).order_empty_title;
    case 'order_empty_desc':
      return S.of(context).order_empty_desc;
    case 'supply_empty_title':
      return S.of(context).supply_empty_title;
    case 'supply_empty_desc':
      return S.of(context).supply_empty_desc;
    case 'offer_empty_desc':
      return S.of(context).offer_empty_desc;
    case 'join_empty_title':
      return S.of(context).join_empty_title;
    case 'reviews_empty_desc':
      return S.of(context).reviews_empty_desc;
    case 'ads_empty_title':
      return S.of(context).ads_empty_title;
    case 'ads_empty_desc':
      return S.of(context).ads_empty_desc;
    case 'markets_empty_desc':
      return S.of(context).markets_empty_desc;
    case 'price_list_empty_desc':
      return S.of(context).price_list_empty_desc;
    case 'invoices_empty_title':
      return S.of(context).invoices_empty_title;
    case 'sales_empty_title':
      return S.of(context).sales_empty_title;
    case 'posts_empty_title':
      return S.of(context).posts_empty_title;
    case 'receipts_empty_title':
      return S.of(context).receipts_empty_title;
    case 'news_empty_title':
      return S.of(context).news_empty_title;
    case 'stories_empty_title':
      return S.of(context).stories_empty_title;
    case 'returns_empty_title':
      return S.of(context).returns_empty_title;
    case 'buyers_empty_title':
      return S.of(context).buyers_empty_title;
    case 'transactions_empty_title':
      return S.of(context).transactions_empty_title;
    case 'invitations_empty_title':
      return S.of(context).invitations_empty_title;
    case 'employee_empty_title':
      return S.of(context).employee_empty_title;
    case 'roles_empty_title':
      return S.of(context).roles_empty_title;
    case 'returnRequests_empty_title':
      return S.of(context).returnRequests_empty_title;
    case 'grades_empty_title':
      return S.of(context).grades_empty_title;
    case 'cities_empty_title':
      return S.of(context).cities_empty_title;
    case 'unitTypes_empty_title':
      return S.of(context).unitTypes_empty_title;
    default:
      return key;
  }
}
