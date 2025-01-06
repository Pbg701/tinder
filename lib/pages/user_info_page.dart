import 'package:flutter/material.dart';
import 'package:t/constants/colors.dart';

class UserInfoPage extends StatelessWidget {
  UserInfoPage({
    super.key,
    required this.image,
    required this.name,
    required this.description,
  });
  final String image;
  final String name;
  final String description;

  // List<String> images = [
  //   'assets/images/user1.jpg',
  //   'assets/images/user7.png',
  //   'assets/images/user2.jpg',
  //   'assets/images/user3.jpg',
  //   'assets/images/user4.jpg',
  //   'assets/images/user5.jpeg',
  //   'assets/images/user6.png',
  //   'assets/images/user7.png',
  //   'assets/images/user8.png',
  //   'assets/images/user9.png',
  //   'assets/images/user10.png',
  // ];
  List<Map<String, dynamic>> images = [
    {
      'image': 'assets/images/user1.jpg',
      'name': 'Malena Veronica, 23',
      'description': 'Fashion Designer at Victoria Secret',
    },
    {
      'image': 'assets/images/user2.jpg',
      'name': 'Alexandra Mills, 27',
      'description': 'Software Engineer at Google',
    },
    {
      'image': 'assets/images/user3.jpg',
      'name': 'Jordan Brown, 30',
      'description': 'Entrepreneur at Startup Hub',
    },
    {
      'image': 'assets/images/user4.jpg',
      'name': 'Sophia Turner, 26',
      'description': 'Marketing Manager at Amazon',
    },
    {
      'image': 'assets/images/user5.jpeg',
      'name': 'Ethan Parker, 29',
      'description': 'Graphic Designer at Adobe',
    },
    {
      'image': 'assets/images/user6.png',
      'name': 'Olivia Green, 24',
      'description': 'Photographer at National Geographic',
    },
    {
      'image': 'assets/images/user7.png',
      'name': 'Noah Scott, 32',
      'description': 'Data Scientist at Facebook',
    },
    {
      'image': 'assets/images/user8.png',
      'name': 'Emma Wilson, 28',
      'description': 'Doctor at General Hospital',
    },
    {
      'image': 'assets/images/user9.png',
      'name': 'Liam Davis, 31',
      'description': 'Architect at Skyline Designs',
    },
    {
      'image': 'assets/images/user10.png',
      'name': 'Ava Johnson, 25',
      'description': 'Chef at Gourmet Bistro',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorConstants.primaryColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: IconButton(
              icon: Icon(
                Icons.more_vert,
                color: ColorConstants.primaryColor,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          CustomScrollView(slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    margin: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50)),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                        scale: 1.1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(name,
                            // 'Malena Veronica, 23',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: ColorConstants.secondary)),
                        const SizedBox(width: 10),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: ColorConstants.active,
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(

                        //'Fashion Designer at Victoria Secret',
                        description,
                        style: TextStyle(
                            color: ColorConstants.secondary, fontSize: 16)),
                    const SizedBox(
                      height: 8,
                    ),
                    Text('69m away',
                        style: TextStyle(
                            color: ColorConstants.secondary, fontSize: 16)),
                    const SizedBox(
                      height: 32,
                    ),
                    Text('ABOUT ME',
                        style: TextStyle(
                            color: ColorConstants.secondary,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                        'Hey guys, This is Malena. I’m here to find someone for hookup. I’m not interested in something serious. I would love to hear your adventurous story.',
                        style: TextStyle(
                            color: ColorConstants.secondary,
                            fontSize: 16,
                            height: 1.5,
                            fontWeight: FontWeight.normal)),
                    const SizedBox(
                      height: 32,
                    ),
                    Text('INTERESTS',
                        style: TextStyle(
                            color: ColorConstants.secondary,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      spacing: 10,
                      children: [
                        _chip(
                            background: ColorConstants.lightOrange,
                            color: ColorConstants.brightOrange,
                            title: 'Travel'),
                        _chip(
                            background: ColorConstants.lightBlue,
                            color: ColorConstants.brightBlue,
                            title: 'Dance'),
                        _chip(
                            background: ColorConstants.lightOrange1,
                            color: ColorConstants.brightOrange1,
                            title: 'Fitness'),
                        _chip(
                            background: ColorConstants.lightPurple,
                            color: ColorConstants.brightPurple,
                            title: 'Reading'),
                        _chip(
                            background: ColorConstants.lightPurple1,
                            color: ColorConstants.brightPurple1,
                            title: 'Photography'),
                        _chip(
                            background: ColorConstants.lightGreen,
                            color: ColorConstants.brightGreen,
                            title: 'Music'),
                        _chip(
                            background: ColorConstants.lightPink,
                            color: ColorConstants.brightPink,
                            title: 'Movie'),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text('INSTAGRAM PHOTOS',
                        style: TextStyle(
                            color: ColorConstants.secondary,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 114,
                            height: 114,
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(images[index]['image']),
                                fit: BoxFit.fitWidth,
                                alignment: Alignment.topCenter,
                                // scale: 1.1,
                              ),
                            ),
                            // child: Column(
                            //   children: [
                            //     Text("${images[index]['name']}"),
                            //     Text("${images[index]['description']}")
                            //   ],
                            // ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
          ]),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white,
                    Colors.white,
                    Colors.white.withOpacity(0.6),
                    Colors.white.withOpacity(0),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.close,
                        color: ColorConstants.close,
                        size: 32,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.star,
                        color: ColorConstants.star,
                        size: 32,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: ColorConstants.favorite,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _chip(
      {required Color background,
      required Color color,
      required String title}) {
    return Chip(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      label: Text(
        title,
        style: TextStyle(color: color),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      backgroundColor: background,
    );
  }
}
