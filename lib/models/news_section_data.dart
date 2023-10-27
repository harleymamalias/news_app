class NewsSectionData {
  final List<NewsSectionData> carouselItems;
  final String newsTitle;
  final String authorPicture;
  final String authorName;
  final String datePublished;
  final int minutesPosted;
  final String description;

  NewsSectionData({
    required this.carouselItems,
    required this.newsTitle,
    required this.authorPicture,
    required this.authorName,
    required this.datePublished,
    required this.minutesPosted,
    required this.description,
  });
}

List<NewsSectionData> newsDataList = [
  NewsSectionData(
    carouselItems: [
      //image urls
    ],
    newsTitle: 'News Title',
    authorPicture: 'url_to_author_image',
    authorName: 'Author Name',
    datePublished: 'October 26, 2023',
    minutesPosted: 30,
    description: 'This is a sample news description for the first news item.',
  ),
  NewsSectionData(
    carouselItems: [],
    newsTitle: 'Another News Title',
    authorPicture: 'url_to_another_author_image',
    authorName: 'Another Author Name',
    datePublished: 'October 25, 2023',
    minutesPosted: 45,
    description: 'This is a sample news description for the second news item.',
  ),
];
