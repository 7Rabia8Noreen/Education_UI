class Course {
  final String title;
  final double price;
  final double reviews;
  final int participants;
  final String status;

  Course(
      {required this.title,
      required this.price,
      required this.reviews,
      required this.status,
      required this.participants});
}

final favouriteCourseList = [
  Course(
      title: 'Web Design Education',
      price: 90.00,
      reviews: 4.8,
      status: 'Experienced',
      participants: 257),
  Course(
      title: 'Mobile Design Education',
      price: 100.00,
      reviews: 4.8,
      status: 'Experienced',
      participants: 257),
  Course(
      title: 'Illustration Drawing Education',
      price: 250.00,
      reviews: 4.8,
      status: 'Novice',
      participants: 257),
  Course(
      title: 'Individual Finance Education',
      price: 120.00,
      reviews: 4.8,
      status: 'Experienced',
      participants: 257),
];
