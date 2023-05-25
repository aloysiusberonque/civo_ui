class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.money = 0,
    this.rating = 0.0,
  });

  String title;
  int lessonCount;
  int money;
  double rating;
  String imagePath;

  static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      title: 'User interface Design',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'User interface Design',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/design_course/interFace1.png',
      title: 'User interface Design',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/design_course/interFace2.png',
      title: 'User interface Design',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
  ];

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Lim, Garfield',
      lessonCount: 12,
      money: 25,
      rating: 98,
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Alcuitas, Aaron',
      lessonCount: 28,
      money: 208,
      rating: 86,
    ),
    Category(
      imagePath: 'assets/design_course/interFace3.png',
      title: 'Alunan, Ron',
      lessonCount: 12,
      money: 25,
      rating: 77,
    ),
    Category(
      imagePath: 'assets/design_course/interFace4.png',
      title: 'Adaya, Jerico',
      lessonCount: 28,
      money: 208,
      rating: 49,
    ),
  ];
}
