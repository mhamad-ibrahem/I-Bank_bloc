import 'package:ui_block/core/common/assets/app_assets.dart';

import '../model/home_service_model.dart';

List<HomeServiceModel> homeServices = [
  HomeServiceModel(name: 'Account \nand Card', image: AppAssets().walletIcon),
  HomeServiceModel(name: '\nTransfer', image: AppAssets().transferIcon),
  HomeServiceModel(name: '\nWithdraw', image: AppAssets().withdrawIcon),
  HomeServiceModel(
      name: 'Mobile \nprepaid', image: AppAssets().mobileBankingIcon),
  HomeServiceModel(name: 'Pay the \nbill', image: AppAssets().payTheBillIcon),
  HomeServiceModel(name: 'Save \nonline', image: AppAssets().saveOnlineIcon),
  HomeServiceModel(name: 'Credit \ncard', image: AppAssets().creditCardIcon),
  HomeServiceModel(
      name: 'Transaction \nreport', image: AppAssets().transactionReportIcon),
  HomeServiceModel(name: '\nBeneficiary', image: AppAssets().contactIcon),
];
