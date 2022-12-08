import 'package:go_router/go_router.dart';
import 'package:manga_webtoon/src/detail/detail_page.dart';

import '../../src/home/home_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) => const DetailPage(),
    ),
  ],
);
