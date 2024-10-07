class RecomendedModel {
  String name;
  String img;
  String description;
  String reting;
  String price;
  bool isFavorited; // Tambahkan status favorit

  RecomendedModel({
    required this.name,
    required this.img,
    required this.description,
    required this.reting,
    required this.price,
    this.isFavorited = false, // Defaultnya false
  });
}


var RecomendedM= [
  RecomendedModel(
    name: 'Sigmaringen',
    img: 'assets/img/img1.jpeg',
    description:
        'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....',
    reting: "4.1",
    price: "\$120",
  ),
  RecomendedModel(
    name: 'Neuchâtel',
    img: 'assets/img/img2.jpeg',
    description:
        'Alley Palace is a luxurious, peaceful getaway known for its beautiful architecture and refined atmosphere, offering a royal experience with modern comforts.',
    reting: "5.1",
    price: "\$150",
  ),
  RecomendedModel(
    name: 'OUS Academy',
    img: 'assets/img/img3.jpeg',
    description:
        'OUS Academy is an online education platform offering a wide range of professional and academic programs. It focuses on providing flexible, high-quality education for students and professionals worldwide, often in collaboration with various accredited institutions. The academy emphasizes practical learning and career development.',
    reting: "7.1",
    price: "\$100",
  ),
  RecomendedModel(
    name: 'Aspen Mountain Ski Resort',
    img: 'assets/img/img4.jpeg',
    description:
        'Aspen Mountain Ski Resort is a world-renowned destination in Colorado, offering exceptional skiing on challenging terrain. Known for its stunning views and upscale atmosphere, it attracts both expert skiers and luxury travelers. The resort combines thrilling outdoor activities with high-end amenities and après-ski experiences.',
    reting: "9.1",
    price: "\$180",
  ),
];