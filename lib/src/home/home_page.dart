import 'package:flutter/material.dart';
import 'package:manga_webtoon/src/home/components/bottom_bar_widget.dart';
import 'package:manga_webtoon/src/home/components/carousel_widget.dart';
import 'package:manga_webtoon/src/home/components/home_app_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            children: [
              CarouselWidget(
                title: "Most Popular",
                children: [
                  Container(
                    color: Colors.red,
                    width: 355,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    color: Colors.red,
                    width: 355,
                  )
                ],
              ),
              SizedBox(height: 20),
              CarouselWidget(
                title: 'Recent Release',
                children: [
                  Container(
                    color: Colors.red,
                    width: 355,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    color: Colors.red,
                    width: 355,
                  )
                ],
              ),
              SizedBox(height: 20),
              CarouselWidget(
                title: "Most Popular",
                children: [
                  Container(
                    color: Colors.red,
                    width: 355,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    color: Colors.red,
                    width: 355,
                  )
                ],
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
