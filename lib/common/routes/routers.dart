import 'package:go_router/go_router.dart';
import 'package:manga_webtoon/src/detail/detail_page.dart';

import '../../src/home/home_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      name: 'detail',
      path: '/detail',
      builder: (context, state) => DetailPage(
        arguments: state.extra as DetailPageArguments,
      ),
    ),
  ],
);
