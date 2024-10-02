
import '../../../core/helpers/date_time/date_time_helper.dart';
import '../../../core/helpers/log_helper/log_helper.dart';
import '../image_upload_model.dart';

class MemberModel {
  MemberModel({
     this.telephone,
    this.id,
    required this.arabicName,
    this.englishName,
    required this.dateOfBirthday,
    required this.gender,
    required this.emirate,
    required this.nationId,
    required this.qualification,
    this.job,
    required this.jobAddress,
    required this.mobile,
    this.fax,
    required this.email,
    required this.password,
    this.website,
    this.sb,
    this.fromDate,
    this.toDate,
   
    required this.status,
    this.imagePassport,
    this.imagePassportUploadRequest,
    this.imagePersonal,
    this.imagePersonalUploadRequest,
    this.imageUAEIdentification,
    this.imageUAEIdentificationUploadRequest,
    this.imagePressCard,
    this.imagePressCardUploadRequest,
    this.imageQualification,
    this.imageQualificationUploadRequest,
    this.userId,
    this.jobTypeId,
    this.qualificationId,
    this.imageSyndicateCardForExpatriates,
    this.imageSyndicateCardForExpatriatesUploadRequest,
    this.membershipType,
    this.imageUAEIdentificationBackFace,
    this.imageUAEIdentificationUploadRequestBackFace,
    this.fileToWhomItMayConcern,
    this.fileToWhomItMayConcernUploadRequest,
    this.imagePassportForExpatriates,
    this.imagePassportForExpatriatesUploadRequest,
  });
  final int? id;
  final String arabicName;
  final String? englishName;
  final String dateOfBirthday;
  final String gender;
  final String? emirate;
  final int nationId;
  final String qualification;
  final String? job;
  final String jobAddress;
  final String mobile;
  final String? fax;
  final String email;
  final String? password;
  final String? website;
  final String? sb;
  final String? fromDate;
  final String? toDate;
  final String status;
  final String?telephone;

  final String? imagePersonal;
  final ImageUploadModel? imagePersonalUploadRequest;
  final String? imageUAEIdentification;
  final String? imageUAEIdentificationBackFace;
  final ImageUploadModel? imageUAEIdentificationUploadRequestBackFace;
  final ImageUploadModel? imageUAEIdentificationUploadRequest;
  final String? imagePressCard;
  final ImageUploadModel? imagePressCardUploadRequest;
  final String? imageQualification;
  final ImageUploadModel? imageQualificationUploadRequest;
  final String? userId;
  final int? jobTypeId;
  final int? qualificationId;
  final String? imageSyndicateCardForExpatriates;
  final ImageUploadModel? imageSyndicateCardForExpatriatesUploadRequest;
  final String? fileToWhomItMayConcern;
  final ImageUploadModel? fileToWhomItMayConcernUploadRequest;
  final String? membershipType;
  final String? imagePassport;
  final ImageUploadModel? imagePassportUploadRequest;
  final ImageUploadModel? imagePassportForExpatriatesUploadRequest;
  final String? imagePassportForExpatriates;

  Map<String, dynamic> toJson(String userResponseId) {
    final data = <String, dynamic>{};
    data['jobTypeId'] = jobTypeId;
    data['qualificationId'] = qualificationId;
    data['id'] = id;
    data['arabicName'] = arabicName;
    data['englishName'] = englishName;
    data['dateOfBirthday'] = dateOfBirthday;
    data['gender'] = gender;
    data['emirate'] = emirate;
    data['nationId'] = nationId;
    // data['qualification'] = qualification;
    data['qualification'] = null;
    data['job'] = job;
    data['jobAddress'] = jobAddress;
    data['mobile'] = mobile;
    data['fax'] = fax;
    data['email'] = email;
    data['password'] = password;
    data['website'] = website;
    data['sb'] = sb;
    data['fromDate'] = DateTimeHelper.formatApiDateTime(DateTime.now().add(const Duration(days: -1)));
    data['toDate'] = DateTimeHelper.formatApiDateTime(DateTime.now().add(const Duration(days: 365)));
    data['status'] = status;
    data['membershipType'] = membershipType;
    data ['telephone']=telephone;
    if (imagePersonal != null) data['imagePersonal'] = imagePersonal;
    if (imagePersonalUploadRequest != null) {
      data['imagePersonalUploadRequest'] = imagePersonalUploadRequest?.toJson();
    }
    if (imagePressCard != null) data['imagePressCard'] = imagePressCard;
    if (imagePressCardUploadRequest != null) {
      data['imagePressCardUploadRequest'] =
          imagePressCardUploadRequest?.toJson();
    }
    if (imageQualification != null) {
      data['imageQualification'] = imageQualification;
    }
    if (imageQualificationUploadRequest != null) {
      //optional
      data['imageQualificationUploadRequest'] =
          imageQualificationUploadRequest!.toJson();
    }
    if (imageSyndicateCardForExpatriates != null) {
      data['imageSyndicateCardForExpatriates'] =
          imageSyndicateCardForExpatriates;
    }
    if (fileToWhomItMayConcern != null) {
      data['fileToWhomItMayConcern'] = fileToWhomItMayConcern;
    }
    if (fileToWhomItMayConcernUploadRequest != null) {
      data['fileToWhomItMayConcernUploadRequest'] =
          fileToWhomItMayConcernUploadRequest?.toJson();
    }
    if (imageSyndicateCardForExpatriatesUploadRequest != null) {
      data['imageSyndicateCardForExpatriatesUploadRequest'] =
          imageSyndicateCardForExpatriatesUploadRequest!.toJson();
    }
    if (imageUAEIdentification != null) {
      data['imageUAEIdentificationFrontFace'] = imageUAEIdentification;
    }
    if (imageUAEIdentificationUploadRequest != null) {
      data['imageUAEIdentificationFrontFaceUploadRequest'] =
          imageUAEIdentificationUploadRequest?.toJson();
    }
    if (imageUAEIdentificationBackFace != null) {
      data['imageUAEIdentificationBackFace'] = imageUAEIdentificationBackFace;
    }
    if (imageUAEIdentificationUploadRequestBackFace != null) {
      data['imageUAEIdentificationBackFaceUploadRequest'] =
          imageUAEIdentificationUploadRequestBackFace?.toJson();
    }
    if (imagePassport != null) data['imagePassportForCitizen'] = imagePassport;

    if (imagePassportUploadRequest != null) {
      data['imagePassportForCitizenUploadRequest'] =
          imagePassportUploadRequest?.toJson();
    }
    if (imagePassportForExpatriates != null) {
      data['imagePassportForExpatriates'] = imagePassportForExpatriates;
    }
    if (imagePassportForExpatriatesUploadRequest != null) {
      data['imagePassportForExpatriatesUploadRequest'] =
          imagePassportForExpatriatesUploadRequest?.toJson();
    }
    //optional
    data['userId'] = userResponseId;
    LogHelper.logCyan("member register is $data");
    return data;
  }
}
