class Contact {
  final String name;
  final String photo;
  final String phoneNumber;
  final String email;
  bool isFavorite;

  Contact(
    {
      required this.name,
      required this.photo,
      required this.phoneNumber,
      required this.email,
      this.isFavorite = false,
  });
}