class Book {
  final String id;
  final String title;
  final String imageUrl;
  final List branch;
  final String description;
  final String author;
  final String publication;
  final String year;
  final String edition;
  final String pages;
  final String size;
  final String downloadUrl;

  // final String
  // final List branches;

  Book(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.branch,
      required this.author,
      required this.description,
      required this.publication,
      required this.year,
      required this.edition,
      required this.pages,
      required this.size,
      required this.downloadUrl
      //   required this.branches,
      });
}
