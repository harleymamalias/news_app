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
  final String minutesPosted;
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
    newsTitle: 'Unravel mysteries of the Maldives',
    authorProfile: authorData[0].authorProfile,
    authorFirstName: authorData[0].authorFirstName,
    authorLastName: authorData[0].authorLastName,
    datePublished: 'Oct 26',
    minutesPosted: '7 min read',
    description:
        'Prepare to embark on an awe-inspiring and truly breathtaking journey of discovery as you set your sights on unraveling the hidden treasures of the Maldives. This enchanting archipelago, nestled in the heart of the Indian Ocean, promises an unparalleled adventure that will ignite your sense of wonder. Imagine yourself standing on the edge of white sandy beaches, gazing out at the endless horizon where the sky meets the ocean in perfect harmony. \n \nDive into the crystal-clear, turquoise waters that envelope you, offering a warm and welcoming embrace. As you descend beneath the surface, you\'ll discover a mesmerizing underwater world filled with vibrant coral reefs that are nothing short of a living masterpiece. These reefs are a haven for marine life, and you\'ll have the privilege of encountering a stunning array of creatures, from the graceful sea turtles to the colorful schools of fish that dance around the corals.',
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
    authorProfile: authorData[1].authorProfile,
    authorFirstName: authorData[1].authorFirstName,
    authorLastName: authorData[1].authorLastName,
    datePublished: 'Oct 25, 2023',
    minutesPosted: '7 min read',
    description: 'Prepare to embark on an awe-inspiring and truly breathtaking journey of discovery as you set your sights on unraveling the hidden treasures of the Maldives. This enchanting archipelago, nestled in the heart of the Indian Ocean, promises an unparalleled adventure that will ignite your sense of wonder. Imagine yourself standing on the edge of white sandy beaches, gazing out at the endless horizon where the sky meets the ocean in perfect harmony. \n \nDive into the crystal-clear, turquoise waters that envelope you, offering a warm and welcoming embrace. As you descend beneath the surface, you\'ll discover a mesmerizing underwater world filled with vibrant coral reefs that are nothing short of a living masterpiece. These reefs are a haven for marine life, and you\'ll have the privilege of encountering a stunning array of creatures, from the graceful sea turtles to the colorful schools of fish that dance around the corals.',
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
    authorProfile: authorData[0].authorProfile,
    authorFirstName: authorData[0].authorFirstName,
    authorLastName: authorData[0].authorLastName,
    datePublished: 'Oct 26, 2023',
    minutesPosted: '7 min read',
    description: 'Prepare to embark on an awe-inspiring and truly breathtaking journey of discovery as you set your sights on unraveling the hidden treasures of the Maldives. This enchanting archipelago, nestled in the heart of the Indian Ocean, promises an unparalleled adventure that will ignite your sense of wonder. Imagine yourself standing on the edge of white sandy beaches, gazing out at the endless horizon where the sky meets the ocean in perfect harmony. \n \nDive into the crystal-clear, turquoise waters that envelope you, offering a warm and welcoming embrace. As you descend beneath the surface, you\'ll discover a mesmerizing underwater world filled with vibrant coral reefs that are nothing short of a living masterpiece. These reefs are a haven for marine life, and you\'ll have the privilege of encountering a stunning array of creatures, from the graceful sea turtles to the colorful schools of fish that dance around the corals.',
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
    authorProfile: authorData[1].authorProfile,
    authorFirstName: authorData[1].authorFirstName,
    authorLastName: authorData[1].authorLastName,
    datePublished: 'Oct 25, 2023',
    minutesPosted: '7 min read',
    description: 'Prepare to embark on an awe-inspiring and truly breathtaking journey of discovery as you set your sights on unraveling the hidden treasures of the Maldives. This enchanting archipelago, nestled in the heart of the Indian Ocean, promises an unparalleled adventure that will ignite your sense of wonder. Imagine yourself standing on the edge of white sandy beaches, gazing out at the endless horizon where the sky meets the ocean in perfect harmony. \n \nDive into the crystal-clear, turquoise waters that envelope you, offering a warm and welcoming embrace. As you descend beneath the surface, you\'ll discover a mesmerizing underwater world filled with vibrant coral reefs that are nothing short of a living masterpiece. These reefs are a haven for marine life, and you\'ll have the privilege of encountering a stunning array of creatures, from the graceful sea turtles to the colorful schools of fish that dance around the corals.',
  ),
];
