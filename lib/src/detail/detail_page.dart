import 'package:flutter/material.dart';
import 'package:manga_webtoon/src/detail/components/detail_header_widget.dart';

class DetailPage extends StatefulWidget {
  final String urlImage;

  const DetailPage({
    super.key,
    this.urlImage = 'assets/images/most_popular1.png',
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        DetailHeaderWidget(
          urlImage: widget.urlImage,
          title: 'Manga Title',
          synopsis: 'Manga Synopsis',
        ),
      ],
    ));
  }
}
