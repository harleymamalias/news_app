import 'package:news_app/models/author_data.dart';

class NewsDetailsData {
  final String mainCoverPhoto;
  final String headlineTitle;
  final List<String> carouselItems;
  final String newsTitle;
  final String authorFirstName;
  final String authorLastName;
  final String authorProfile;
  final String datePublished;
  final int minutesPosted;
  final String description;

  NewsDetailsData({
    required this.mainCoverPhoto,
    required this.headlineTitle,
    required this.carouselItems,
    required this.newsTitle,
    required this.authorFirstName,
    required this.authorLastName,
    required this.authorProfile,
    required this.datePublished,
    required this.minutesPosted,
    required this.description,
  });
}

List<NewsDetailsData> newsDataList = [
  NewsDetailsData(
    mainCoverPhoto: 'assets/ai-event.jpg',
    headlineTitle: 'Feel the thrill on the only surf simulator in Maldives ',
    carouselItems: [
      'assets/israel-hamas-war.jpg',
      'assets/hawai-beach.jpg',
      'assets/ai-event.jpg'
    ],
    newsTitle: 'Unravel mysteries of Maldives',
    authorProfile: newsAuthorItems[0].authorProfile,
    authorFirstName: newsAuthorItems[0].authorFirstName,
    authorLastName: newsAuthorItems[0].authorLastName,
    datePublished: 'Oct 26, 2023',
    minutesPosted: 30,
    description: 'This is a sample news description for the first news item.',
  ),
  NewsDetailsData(
    mainCoverPhoto: 'assets/hawai-beach.jpg',
    headlineTitle: 'Feel the thrill on the only surf simulator in Maldives ',
    carouselItems: [
      'assets/music-event.jpg',
      'assets/hawai-beach.jpg',
      'assets/ai-event.jpg'
    ],
    newsTitle: 'Another News Title',
    authorProfile: newsAuthorItems[1].authorProfile,
    authorFirstName: newsAuthorItems[1].authorFirstName,
    authorLastName: newsAuthorItems[1].authorLastName,
    datePublished: 'Oct 25, 2023',
    minutesPosted: 45,
    description: 'This is a sample news description for the second news item.',
  ),
  NewsDetailsData(
    mainCoverPhoto: 'assets/sports-event.jpg',
    headlineTitle: 'Feel the thrill on the only surf simulator in Maldives ',
    carouselItems: [
      'assets/island.jpg',
      'assets/hawai-beach.jpg',
      'assets/ai-event.jpg'
    ],
    newsTitle: 'News Title',
    authorProfile: newsAuthorItems[0].authorProfile,
    authorFirstName: newsAuthorItems[0].authorFirstName,
    authorLastName: newsAuthorItems[0].authorLastName,
    datePublished: 'Oct 26, 2023',
    minutesPosted: 30,
    description: 'This is a sample news description for the first news item.',
  ),
  NewsDetailsData(
    mainCoverPhoto: 'assets/music-event.jpg',
    headlineTitle: 'Feel the thrill on the only surf simulator in Maldives ',
    carouselItems: [
      'assets/island.jpg',
      'assets/hawai-beach.jpg',
      'assets/ai-event.jpg'
    ],
    newsTitle: 'Another News Title',
    authorProfile: newsAuthorItems[1].authorProfile,
    authorFirstName: newsAuthorItems[1].authorFirstName,
    authorLastName: newsAuthorItems[1].authorLastName,
    datePublished: 'Oct 25, 2023',
    minutesPosted: 45,
    description: 'This is a sample news description for the second news item.',
  ),
];
