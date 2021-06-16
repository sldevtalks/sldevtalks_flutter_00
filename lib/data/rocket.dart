class Rocket {
  late final String id;
  late final String name;
  late final String description;
  late final String image;
  late final String firstFlight;

  Rocket({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.firstFlight,
  });

  factory Rocket.fromJSON(Map<String, dynamic> data) {
    return Rocket(
      id: data['id'],
      name: data['name'],
      description: data['description'],
      image: data['flickr_images'][0],
      firstFlight: data['first_flight'],
    );
  }
}
