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
    headlineTitle: 'Experience the Latest in AI Technology',
    carouselItems: [
      'assets/ai-event-1.jpg',
      'assets/ai-event-2.jpg',
      'assets/ai-event-3.jpg'
    ],
    newsTitle: 'Unravel the World of AI',
    authorProfile: authorData[0].authorProfile,
    authorFirstName: authorData[0].authorFirstName,
    authorLastName: authorData[0].authorLastName,
    datePublished: 'Oct 26, 2023',
    minutesPosted: '9 min read',
    description:
        'Embark on a journey through the remarkable advancements of Artificial Intelligence (AI) that are orchestrating a profound transformation across various industries and reshaping the very fabric of our daily lives. The depth and breadth of AI\'s influence have unveiled a new era of possibilities, sparking revolutionary changes in fields as diverse as healthcare, finance, and beyond. Its impact reverberates, empowering innovative solutions that were once deemed unattainable and fostering a landscape where human potential meets the prowess of intelligent machines.',
  ),
  NewsDetailsData(
    mainCoverPhoto: 'assets/hawai-beach.jpg',
    headlineTitle:
        'Embark on a Voyage to the Serene and Exotic Tropical Paradise of Hawaiian Beaches',
    carouselItems: [
      'assets/hawai-beach-1.jpg',
      'assets/hawai-beach-2.jpg',
      'assets/hawai-beach-3.jpg'
    ],
    newsTitle: 'Discover the Beauty of Hawaii',
    authorProfile: authorData[1].authorProfile,
    authorFirstName: authorData[1].authorFirstName,
    authorLastName: authorData[1].authorLastName,
    datePublished: 'Oct 25, 2023',
    minutesPosted: '7 min read',
    description:
        'Prepare to embark on an awe-inspiring and truly breathtaking journey of discovery as you set your sights on unraveling the hidden treasures of the Hawai. Imagine yourself standing on the edge of white sandy beaches, gazing out at the endless horizon where the sky meets the ocean in perfect harmony. \n \nDive into the crystal-clear, turquoise waters that envelope you, offering a warm and welcoming embrace. As you descend beneath the surface, you\'ll discover a mesmerizing underwater world filled with vibrant coral reefs that are nothing short of a living masterpiece. These reefs are a haven for marine life, and you\'ll have the privilege of encountering a stunning array of creatures, from the graceful sea turtles to the colorful schools of fish that dance around the corals.',
  ),
  NewsDetailsData(
    mainCoverPhoto: 'assets/sports-event.jpg',
    headlineTitle: 'Experience the Thrill of Sporting Events ',
    carouselItems: [
      'assets/sports-event-1.jpg',
      'assets/sports-event-2.jpg',
      'assets/sports-event-3.jpg'
    ],
    newsTitle: 'The World of Sports Spectacles',
    authorProfile: authorData[2].authorProfile,
    authorFirstName: authorData[2].authorFirstName,
    authorLastName: authorData[2].authorLastName,
    datePublished: 'Oct 26, 2023',
    minutesPosted: '5 min read',
    description:
        'Feel the electrifying rush of live sports events as you step into an arena where champions are made, history is etched, and the essence of sportsmanship comes alive. Each event is a stage where skill, passion, and dedication converge, crafting moments that become a part of sporting folklore. The vibrant atmosphere pulses with energy as fans, avid enthusiasts, and casual observers unite in the celebration of human athleticism. The roar of the crowd becomes the heartbeat of the game, instilling an adrenaline-fueled atmosphere that thrives on every play, every goal, and every victory.',
  ),
  NewsDetailsData(
    mainCoverPhoto: 'assets/music-event.jpg',
    headlineTitle: 'Immerse Yourself in the Harmonies of Music',
    carouselItems: [
      'assets/music-event-1.jpg',
      'assets/music-event-2.jpg',
      'assets/music-event-3.jpg'
    ],
    newsTitle: 'A Celebration of Music',
    authorProfile: authorData[3].authorProfile,
    authorFirstName: authorData[3].authorFirstName,
    authorLastName: authorData[3].authorLastName, 
    datePublished: 'Oct 27, 2023',
    minutesPosted: '4 min read',
    description:
        'Let the symphonies of music carry you away to a realm of boundless melodic wonder and emotional connections, where the whispers of rhythm and harmony intertwine deeply with the soul. As each note resonates, it weaves a tapestry of emotions, conjuring feelings of joy, melancholy, and everything in between. The melody serves as a bridge, connecting disparate hearts, fostering an unspoken understanding through the universal language of music. It\'s a canvas upon which artists paint a vivid array of feelings, transcending words, gently escorting listeners into a realm where each note is a story waiting to be unveiled.',
  ),
];
