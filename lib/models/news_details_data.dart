class NewsDetailsData {
  final String mainCoverPhoto;
  final String headlineTitle;
  final List<NewsDetailsData> carouselItems;
  final String newsTitle;
  final String authorPicture;
  final String authorName;
  final String datePublished;
  final int minutesPosted;
  final String description;

  NewsDetailsData({
    required this.mainCoverPhoto,
    required this.headlineTitle,
    required this.carouselItems,
    required this.newsTitle,
    required this.authorPicture,
    required this.authorName,
    required this.datePublished,
    required this.minutesPosted,
    required this.description,
  });
}

List<NewsDetailsData> newsDataList = [
  NewsDetailsData(
    mainCoverPhoto: 'assets/ai-event.jpg',
    headlineTitle:
        'Feel the thrill on the only surf simulator in Maldives 2022123123 ',
    carouselItems: [
      //image urls
    ],
    newsTitle: 'News Title',
    authorPicture: 'assets/Tywin-Lannister.jpg',
    authorName: 'Tywin Lannister',
    datePublished: 'October 26, 2023',
    minutesPosted: 30,
    description: 'This is a sample news description for the first news item.',
  ),
  NewsDetailsData(
    mainCoverPhoto: 'assets/hawai-beach.jpg',
    headlineTitle:
        'Feel the thrill on the only surf simulator in Maldives 2022123123 ',
    carouselItems: [],
    newsTitle: 'Another News Title',
    authorPicture: 'assets/Ryan-Reynolds.jpg',
    authorName: 'Ryan Reynolds',
    datePublished: 'October 25, 2023',
    minutesPosted: 45,
    description: 'This is a sample news description for the second news item.',
  ),
  NewsDetailsData(
    mainCoverPhoto: 'assets/sports-event.jpg',
    headlineTitle:
        'Feel the thrill on the only surf simulator in Maldives 2022123123 ',
    carouselItems: [
      //image urls
    ],
    newsTitle: 'News Title',
    authorPicture: 'assets/Tywin-Lannister.jpg',
    authorName: 'Tywin Lannister',
    datePublished: 'October 26, 2023',
    minutesPosted: 30,
    description: 'This is a sample news description for the first news item.',
  ),
  NewsDetailsData(
    mainCoverPhoto: 'assets/music-event.jpg',
    headlineTitle:
        'Feel the thrill on the only surf simulator in Maldives 2022123123 ',
    carouselItems: [],
    newsTitle: 'Another News Title',
    authorPicture: 'assets/Ryan-Reynolds.jpg',
    authorName: 'Ryan Reynolds',
    datePublished: 'October 25, 2023',
    minutesPosted: 45,
    description: 'This is a sample news description for the second news item.',
  ),
];
