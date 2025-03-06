class Images {
  Images._();
  static final Images instance = Images._();

  static const String placeholder = "";
  final String onBoard1 = "onboard1.png".imageParse;
  final String onBoard2 = "onboard2.png".imageParse;
  final String onBoard3 = "onboard3.png".imageParse;

  final String anError = "an_error.png".imageParse;
  final String block = "block.png".imageParse;
  final String mobile = "mobile.png".imageParse;
  final String noConnection = "no_connection.png".imageParse;
  final String noCourses = "no_courses.png".imageParse;
  final String noExamResults = "no_exam_results.png".imageParse;
  final String noPosts = "no_posts.png".imageParse;
  final String noPrivacy = "no_privacy.png".imageParse;
  final String noRequests = "no_requests.png".imageParse;
  final String noChats = "not_found_chats.png".imageParse;
}

extension _Images on String {
   String get imageParse{
     return 'assets/images/$this';
   }
}