import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manga_webtoon/common/theme/colors/app_colors.dart';

class CarouselWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final double height;
  final VoidCallback? onSeeMore;

  const CarouselWidget({
    super.key,
    required this.title,
    required this.children,
    this.height = 250,
    this.onSeeMore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                title,
                style: GoogleFonts.oswald(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              if (onSeeMore != null)
                GestureDetector(
                  onTap: onSeeMore,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      color: AppColor.primary,
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: height,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            itemCount: children.length,
            itemBuilder: (BuildContext context, int index) {
              final child = children[index];
              return child;
            },
          ),
        ),
      ],
    );
  }
}
