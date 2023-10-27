class NewsAuthorDetails {
  final String authorProfile;
  final String authorFirstName;
  final String authorLastName;
  final String authorRole;
  final String authorBio;
  final int authorFollowers;
  final int authorPosts;
  final int authorLikes;
  final String postCoverPhoto;
  final String postCategory;
  final String postDescription;
  final String postDate;
  final String postTime;
  final List<NewsAuthorDetails> popularPosts;

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

List<NewsAuthorDetails> newsAuthorItems = [
  NewsAuthorDetails(
    authorProfile: 'assets/Tywin-Lannister.jpg',
    authorFirstName: 'Tywin',
    authorLastName: 'Lannister',
    authorRole: 'Writer',
    authorBio: 'Passionate writer and storyteller.',
    authorFollowers: 5000,
    authorPosts: 120,
    authorLikes: 8500,
    postCoverPhoto: 'assets/island.jpg',
    postCategory: 'Travel',
    postDescription: 'Exploring the beauty of the Maldives.',
    postDate: 'October 26, 2023',
    postTime: '10:30 AM',
    popularPosts: [],
  ),
  NewsAuthorDetails(
    authorProfile: 'assets/Ryan-Reynolds.jpg',
    authorFirstName: 'Ryan',
    authorLastName: 'Reynolds',
    authorRole: 'Photographer',
    authorBio: 'Capturing moments through the lens.',
    authorFollowers: 7500,
    authorPosts: 80,
    authorLikes: 7200,
    postCoverPhoto: 'assets/hawai-beach.jpg',
    postCategory: 'Photography',
    postDescription: 'The art of photography in nature.',
    postDate: 'October 25, 2023',
    postTime: '2:45 PM',
    popularPosts: [],
  ),
  NewsAuthorDetails(
    authorProfile: 'assets/Ryan-Reynolds.jpg',
    authorFirstName: 'Jane',
    authorLastName: 'Smith',
    authorRole: 'Photographer',
    authorBio: 'Capturing moments through the lens.',
    authorFollowers: 7500,
    authorPosts: 80,
    authorLikes: 7200,
    postCoverPhoto: 'assets/hawai-beach.jpg',
    postCategory: 'Photography',
    postDescription: 'The art of photography in nature.',
    postDate: 'October 25, 2023',
    postTime: '2:45 PM',
    popularPosts: [],
  ),
  NewsAuthorDetails(
    authorProfile: 'assets/Ryan-Reynolds.jpg',
    authorFirstName: 'Jane',
    authorLastName: 'Smith',
    authorRole: 'Photographer',
    authorBio: 'Capturing moments through the lens.',
    authorFollowers: 7500,
    authorPosts: 80,
    authorLikes: 7200,
    postCoverPhoto: 'assets/hawai-beach.jpg',
    postCategory: 'Photography',
    postDescription: 'The art of photography in nature.',
    postDate: 'October 25, 2023',
    postTime: '2:45 PM',
    popularPosts: [],
  ),
];
