class Category {
  String title;

  Category(this.title);
}

class Community {
  String name;
  String icon;

  Community(this.name, this.icon);
}

class Article {
  Community community;
  String title;
  String pubDate;
  String icon;
  String readingTime;

  Article(this.community, this.title, this.pubDate, this.icon, this.readingTime);
}

final categories = [
  Category('Society'),
  Category('Ux'),
  Category('Product Management'),
  Category('Remote Work'),
  Category('Beauty'),
  Category('Leadership'),
  Category('Photography'),
  Category('Marketing'),
  Category('Cybersecurity'),
  Category('Coronavirus'),
  Category('Astrology'),
  Category('Design')
];

final communities = [
  Community('Dev Genius', "assets/icons/dev_genius.png"),
  Community('Flutter Community', "assets/icons/flutter.png"),
  Community('Girls Kode', "assets/icons/kode.jpeg"),
  Community('Man Preet', "assets/icons/manpreet.jpeg"),
  Community('Piero Borrelli', "assets/icons/piero.jpeg"),
  Community('Yash Patel', "assets/icons/yash_patel.png"),
  Community('Flutter Community', "assets/icons/flutter.png"),
  Community('Dev Genius', "assets/icons/dev_genius.png"),

];

final articles = [
  Article(communities[1], 'Thread and Isolate with Flutter', 'Oct 2',
      "assets/images/thread_and_isolate.jpeg", "5 min"),
  Article(communities[4], '8 Amazing Tools to Double Your Coding Productivity in 2021', "Sep 5",
      "assets/images/double_your_productivity.jpeg", "4 min"),
  Article(communities[4], '3 Easy Ways You Can Make Money While Learning to Code', 'Oct 1',
      "assets/images/while_learning_to_code.jpeg", "3 min"),
  Article(communities[5], "Write better Golang code by declaring empty slices the right way", "Oct 1",
      "assets/images/better_golang_code.png", "6 min"),
  Article(communities[4], '3 Easy Ways You Can Make Money While Learning to Code', 'Oct 1',
      "assets/images/while_learning_to_code.jpeg", "3 min"),
  Article(communities[5], "Write better Golang code by declaring empty slices the right way", "Oct 1",
      "assets/images/better_golang_code.png", "6 min")
];
    
    