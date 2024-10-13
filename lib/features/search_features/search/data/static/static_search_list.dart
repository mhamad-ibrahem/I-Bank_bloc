import 'package:ui_block/core/common/assets/app_assets.dart';
import 'package:ui_block/core/routes/route_export.dart';
import '../model/static_search_model.dart';

List<StaticSearchModel> staticSearchList = [
  StaticSearchModel(
      title: 'Branch',
      subTitle: 'Search for branch',
      image: AppAssets().searchBranchImage,
      route: AppRoutes().branchRoute),
  StaticSearchModel(
      title: 'Interest rate',
      subTitle: 'Search for interest rate',
      route: AppRoutes().interestRateRoute,
      image: AppAssets().interestRateImage),
  StaticSearchModel(
      title: 'Exchange rate',
      subTitle: 'Search for exchange rate',
      route: AppRoutes().exchangeRateRoute,
      image: AppAssets().exchangeRateImage),
  StaticSearchModel(
      title: 'Exchange',
      subTitle: 'Exchange amount of money',
      route: AppRoutes().branchRoute,
      image: AppAssets().exchangeImage),
];
