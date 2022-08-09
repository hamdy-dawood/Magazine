class Magazine {
  final String image1, date1, title1, image2, date2, title2;

  Magazine({
    required this.image1,
    required this.date1,
    required this.title1,
    required this.image2,
    required this.date2,
    required this.title2,
  });
}

List<Magazine> magazine = [
  Magazine(
    image1: "assets/image1.jpg",
    date1: "MARCH 6TH 2022",
    title1: "COLOUR\nMOOD",
    image2: "assets/image2.jpg",
    date2: "June 3D 2022",
    title2: "ETHEREAL\nBEAUTY",
  ),
  Magazine(
    image1: "assets/image3.png",
    date1: "APRIL 3D 2022",
    title1: "SUNRISE\nMARKET",
    image2: "assets/image4.jpg",
    date2: "JANUARY 1ST 2022",
    title2:"COLOUR\nMOOD",
  ),
];
