import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostPopularCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final int chapters;
  final VoidCallback onTap;

  const MostPopularCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.chapters,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: Container(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: RadialGradient(
                          radius: .4,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.4),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: constraints.maxHeight * 0.15,
                  left: constraints.maxWidth * 0.06,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.oswald(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 24,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            rating.toStringAsFixed(1),
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "Chapters: $chapters",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
