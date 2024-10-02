
import '../../../config/app_config.dart';

mixin LoanLinks {
  String get getLoan => '${AppConfig.baseUrlWithVersion}/LoanRequests/GetAllPagedByMember';
  String get addLoanLink => '${AppConfig.baseUrlWithVersion}/LoanRequests';
  String get getLoanDetails => '${AppConfig.baseUrlWithVersion}/Installments/GetAllPagedByLoan';

}
