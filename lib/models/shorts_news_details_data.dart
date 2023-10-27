class ShortNewsDetails {
  final String coverPhoto;
  final String description;
  final String numberOfViews;

  ShortNewsDetails({
    required this.coverPhoto,
    required this.description,
    required this.numberOfViews,
  });
}

List<ShortNewsDetails> shortsDataList = [
  ShortNewsDetails(
    coverPhoto: 'assets/island.jpg',
    description: 'Top Trending Islands in 2023',
    numberOfViews: '40,999',
  ),
  ShortNewsDetails(
    coverPhoto: 'assets/space-x.jpg',
    description: 'Elon Musk: Space X',
    numberOfViews: '68,232',
  ),
  ShortNewsDetails(
    coverPhoto: 'assets/israel-hamas-war.jpg',
    description: 'History of Israel and Hamas',
    numberOfViews: '58,823',
  ),
  ShortNewsDetails(
    coverPhoto: 'assets/computer-languages.jpg',
    description: 'Computer Languages: Now & Then',
    numberOfViews: '42,867',
  ),
];
