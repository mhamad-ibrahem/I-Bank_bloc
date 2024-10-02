import 'sub_links/admin_meeting_links.dart';
import 'sub_links/auth_links.dart';
import 'sub_links/halls_links.dart';
import 'sub_links/home_links.dart';
import 'sub_links/loan_links.dart';
import 'sub_links/pages_link.dart';
import 'sub_links/solidarity_fund_link.dart';
import 'sub_links/web_links.dart';

class ApiLinks
    with
        AuthLinks,
        StaticPages,
        HomeLinks,
        PagesLink,
        HallsLinks,
        SolidaryFundLink,
        LoanLinks,
        AdminMeetingLinks {}
