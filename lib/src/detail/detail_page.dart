import 'package:flutter/material.dart';
import 'package:manga_webtoon/src/detail/components/detail_header_widget.dart';

import '../home/components/bottom_bar_widget.dart';
import 'components/chapter_card_widget.dart';
import 'components/title_chapters_witget.dart';

class DetailPageArguments {
  final String urlImage;
  final String title;
  final String synopsis;

  DetailPageArguments({
    required this.urlImage,
    required this.title,
    required this.synopsis,
  });
}

class DetailPage extends StatefulWidget {
  final DetailPageArguments arguments;

  const DetailPage({
    super.key,
    required this.arguments,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailHeaderWidget(
                urlImage: widget.arguments.urlImage,
                title: widget.arguments.title,
                synopsis: widget.arguments.synopsis,
              ),
              const TitleChaptersWidget(),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 80,
                  ),
                  children: const [
                    ChapterCardWidget(
                      title: 'Chapter 1',
                      chapter: '1',
                      urlImage: 'assets/images/chapter1.png',
                    ),
                    ChapterCardWidget(
                      title: 'Chapter 2',
                      chapter: '1',
                      urlImage: 'assets/images/chapter2.png',
                    ),
                    ChapterCardWidget(
                      title: 'Chapter 3',
                      chapter: '1',
                      urlImage: 'assets/images/chapter3.png',
                    ),
                    ChapterCardWidget(
                      title: 'Chapter 4',
                      chapter: '1',
                      urlImage: 'assets/images/chapter4.png',
                    ),
                    ChapterCardWidget(
                      title: 'Chapter 4',
                      chapter: '1',
                      urlImage: 'assets/images/chapter4.png',
                    ),
                    ChapterCardWidget(
                      title: 'Chapter 4',
                      chapter: '1',
                      urlImage: 'assets/images/chapter4.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
          BottomBarWidget(
            items: [
              BottomBarItem(
                icon: Icons.home_outlined,
                onTap: () {},
              ),
              BottomBarItem(
                icon: Icons.favorite_border,
                onTap: () {},
              ),
              BottomBarItem(
                icon: Icons.explore_outlined,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
