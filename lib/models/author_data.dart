class NewsAuthorDetails {
  final String authorProfile;
  final String authorFirstName;
  final String authorLastName;
  final String authorRole;
  final String authorBio;
  final String authorFollowers;
  final String authorPosts;
  final String authorLikes;
  final String postCoverPhoto;
  final String postCategory;
  final String postDescription;
  final String postDate;
  final String postTime;
  final List<String> popularPosts;

  NewsAuthorDetails({
    required this.authorProfile,
    required this.authorFirstName,
    required this.authorLastName,
    required this.authorRole,
    required this.authorBio,
    required this.authorFollowers,
    required this.authorPosts,
    required this.authorLikes,
    required this.postCoverPhoto,
    required this.postCategory,
    required this.postDescription,
    required this.postDate,
    required this.postTime,
    required this.popularPosts,
  });
}

List<NewsAuthorDetails> authorData = [
  NewsAuthorDetails(
    authorProfile: 'assets/Tywin-Lannister.jpg',
    authorFirstName: 'Tywin',
    authorLastName: 'Lannister',
    authorRole: 'Author & Writer',
    authorBio:
        'Passionate writer and storyteller, I craft engaging tales to captivate and resonate with readers. Through my narratives, I aim to spark imagination and inspire diverse perspectives.',
    authorFollowers: '54.1k',
    authorPosts: '120',
    authorLikes: '112.1k',
    postCoverPhoto: 'assets/island.jpg',
    postCategory: 'News: Technology',
    postDescription: 'Exploring the beauty of the Maldives.',
    postDate: 'Oct 26',
    postTime: '10:30 AM',
    popularPosts: [
      'assets/ai-event.jpg',
      'assets/ai-event-1.jpg',
    ],
  ),
  NewsAuthorDetails(
    authorProfile: 'assets/Ryan-Reynolds.jpg',
    authorFirstName: 'Ryan',
    authorLastName: 'Reynolds',
    authorRole: 'Photographer',
    authorBio:
        'Capturing moments through the lens is where I find my passion, freezing emotions and revealing unseen beauty. With an eye for detail, I immortalize moments that might otherwise fade away.',
    authorFollowers: '18.2k',
    authorPosts: '80',
    authorLikes: '32.4k',
    postCoverPhoto: 'assets/hawai-beach.jpg',
    postCategory: 'News: Photography',
    postDescription: 'The art of photography in nature.',
    postDate: 'Oct 25',
    postTime: '2:45 PM',
    popularPosts: [
      'assets/hawai-beach.jpg',
      'assets/hawai-beach-1.jpg',
    ],
  ),
  NewsAuthorDetails(
    authorProfile: 'assets/journalist.jpg',
    authorFirstName: 'Jane',
    authorLastName: 'Clarke',
    authorRole: 'Journalist',
    authorBio:
        'Passionate about reporting the truth, I aim to uncover hidden layers and reveal authentic narratives.',
    authorFollowers: '67.2k',
    authorPosts: '150',
    authorLikes: '98.3k',
    postCoverPhoto: 'assets/sports-event.jpg',
    postCategory: 'News: Politics',
    postDescription: 'Covering the latest in political developments.',
    postDate: 'Oct 24',
    postTime: '3:00 PM',
    popularPosts: [
      'assets/sports-event.jpg',
      'assets/sports-event-3.jpg',
    ],
  ),
  NewsAuthorDetails(
    authorProfile: 'assets/news-anchor.jpg',
    authorFirstName: 'Ryan',
    authorLastName: 'Smith',
    authorRole: 'Reporter',
    authorBio:
        'Uncovering stories that matter is my mission, bringing significance and thought-provoking content to my audience.',
    authorFollowers: '26.1k',
    authorPosts: '95',
    authorLikes: '38.9k',
    postCoverPhoto: 'assets/music-event.jpg',
    postCategory: 'News: Environment',
    postDescription: 'Exploring environmental issues and initiatives.',
    postDate: 'Oct 25',
    postTime: '4:30 PM',
    popularPosts: [
      'assets/music-event.jpg',
      'assets/music-event-3.jpg',
    ],
  ),
];
