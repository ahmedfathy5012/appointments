abstract class EducationConstants {
  static const int basicType = 1;
  static const int universityType = 2;
  static const int generalType = 3;
  static const int nurseryType = 4;
}

class EducationType {
  final int id;
  final String title;

  const EducationType({
    required this.id,
    required this.title,
  });

  static final List<EducationType> examples = [
    EducationType(
      id: EducationConstants.basicType,
      title: 'basic',
    ),
    EducationType(
      id: EducationConstants.universityType,
      title: 'university_type',
    ),
    EducationType(
      id: EducationConstants.generalType,
      title: 'general',
    ),
    EducationType(
      id: EducationConstants.nurseryType,
      title: 'nursery',
    ),
  ];
}
