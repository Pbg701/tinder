
import 'dart:developer';

import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:t/constants/colors.dart';
import 'package:t/widgets/profile_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final AppinioSwiperController _swiperController = AppinioSwiperController();
  AppinioSwiperController _swiperController = AppinioSwiperController();

  List<ProfileCard> profile = [];

  final List<Map<String, String>> profilesData = [
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
  void initState() {
    super.initState();
    _loadCards();
  }

  void _loadCards() {
    for (var data in profilesData) {
      profile.add(ProfileCard(
        image: data['image']!,
        name: data['name']!,
        description: data['description']!,
      ));
    }
  }

  
  void _onSwipeEnd(int oldIndex, int newIndex, SwiperActivity activity) {
  // Check if the swipe is valid (newIndex may be -1 if at the end)
  if (newIndex != -1) {
    // Identify the direction of swipe based on the indices
    if (newIndex > oldIndex) {
      // Likely a right swipe
      log('Matched with ${profilesData[oldIndex]['name']}');
    } else if (newIndex < oldIndex) {
      // Likely a left swipe
      log('Passed on ${profilesData[oldIndex]['name']}');
    }
  } else {
    log('No more profiles to swipe.');
  }
}

  void _onRejectButtonPressed() {
    if (profile.isNotEmpty) {
      setState(() {
        profile.removeAt(0); // Remove the current profile
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'For You',
          style: TextStyle(
            color: ColorConstants.primaryColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.person,
            color: ColorConstants.primaryColor,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.message,
              color: ColorConstants.primaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          AppinioSwiper(
            controller: _swiperController,
            cardBuilder: (BuildContext context, int index) {
              return profile[index];
            },
            cardCount: profile.length,
            onSwipeEnd: _onSwipeEnd,
          ),
          Positioned(
            bottom: 20,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: _onRejectButtonPressed,
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
                  onTap: () {
                    _swiperController.swipeRight(); // Trigger right swipe
                  },
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
                  onTap: () {
                    _swiperController.swipeLeft(); // Trigger left swipe
                  },
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
        ],
      ),
    );
  }
}
