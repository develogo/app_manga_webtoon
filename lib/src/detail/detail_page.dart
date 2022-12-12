import 'package:flutter/material.dart';
import 'package:manga_webtoon/src/detail/components/detail_header_widget.dart';

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
        body: Column(
      children: [
        DetailHeaderWidget(
          urlImage: widget.arguments.urlImage,
          title: widget.arguments.title,
          synopsis: widget.arguments.synopsis,
        ),
      ],
    ));
  }
}
