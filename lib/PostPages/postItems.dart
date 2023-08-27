


import '../const.dart';

class PostItems {
  final List imagePath;
  final String title;
  final String profileImagePath;
  final String userName;
  final num likes;
  final String FPTitle;
  final String FPSubtitle;


  PostItems(
      {required this.imagePath,
        required this.title,
        required this.profileImagePath,
        required this.userName,
        required this.likes,
      required this.FPTitle,
        required this.FPSubtitle,
      });

  String getFormattedLikes() {
    if (likes >= 1000) {
      double likesInK = likes / 1000;
      return '${likesInK.toStringAsFixed(1)}k';
    }
    return likes.toString();
  }
}

List<PostItems> Post = [
  PostItems(
      imagePath: ['assets/images/Photo1.jpg'],
      title:
      'You\'ll need to use some triangular tricks to solve these problems.',
      profileImagePath: 'assets/images/PhotoProfile1.png',
      userName: 'mystical_mountain',
      likes: 447,
    FPTitle: 'How many cubes do we need to build a cylinder?',
    FPSubtitle:'1To build a solid cylinder, you would typically not use cubes but rather cylindrical objects such as cylinders or circular disks. However, if you intend to approximate a cylinder using cubes, the number required would depend on various factors such as the desired height, radius, and size of the cubes.Assuming all cubes are identical and fit perfectly together, you would need an infinite number of infinitesimally small cubes to create a mathematically precise representation of a cylinder.'

  ),
  PostItems(
      imagePath: [ 'assets/images/Images.jpg',
        'assets/images/Photo1.jpg',
        'assets/images/Photo2.png',
        'assets/images/Small.png',
        'assets/images/Wrapper.png'],
      title: 'To conquer new shapes, it helps to catch a glimpse of the old.',
      profileImagePath: 'assets/images/profile.png',
      userName: 'thehiker',
      likes: 826,
      FPTitle: 'How many cubes do we need to build a cylinder?',
      FPSubtitle:'2To build a solid cylinder, you would typically not use cubes but rather cylindrical objects such as cylinders or circular disks. However, if you intend to approximate a cylinder using cubes, the number required would depend on various factors such as the desired height, radius, and size of the cubes.Assuming all cubes are identical and fit perfectly together, you would need an infinite number of infinitesimally small cubes to create a mathematically precise representation of a cylinder.'),
  PostItems(
      imagePath: ['assets/images/Photo2.png'],
      title:
      'Through symmetry and slice, discover the volume of these solids without an ounce of calculus.',
      profileImagePath: 'assets/images/profile.png',
      userName: 'coffee_lover',
      likes: 456,
      FPTitle: 'How many cubes do we need to build a cylinder?',
      FPSubtitle:'3To build a solid cylinder, you would typically not use cubes but rather cylindrical objects such as cylinders or circular disks. However, if you intend to approximate a cylinder using cubes, the number required would depend on various factors such as the desired height, radius, and size of the cubes.Assuming all cubes are identical and fit perfectly together, you would need an infinite number of infinitesimally small cubes to create a mathematically precise representation of a cylinder.'),
  PostItems(
      imagePath: ['assets/images/Small.png'],
      title: 'How much paint do we need to redecorate a prism?',
      profileImagePath: 'assets/images/profile.png',
      userName: 'nature_nerd',
      likes: 4700,
      FPTitle: 'How many cubes do we need to build a cylinder?',
      FPSubtitle:'4To build a solid cylinder, you would typically not use cubes but rather cylindrical objects such as cylinders or circular disks. However, if you intend to approximate a cylinder using cubes, the number required would depend on various factors such as the desired height, radius, and size of the cubes.Assuming all cubes are identical and fit perfectly together, you would need an infinite number of infinitesimally small cubes to create a mathematically precise representation of a cylinder.'),
];
