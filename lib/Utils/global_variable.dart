import 'package:flutter/material.dart';

import '../Screens/add_post_screen.dart';
import '../Screens/feed_screen.dart';
import '../Screens/profile_screen.dart';
import '../Screens/search_screen.dart';

const homeScreenItems = [
   const FeedScreen(),
   const SearchScreen(),
   const AddPostScreen(),
   Text('notification'),
   const ProfileScreen(),
];
