import 'package:flutter/material.dart';
import 'package:manga_webtoon/common/theme/colors/app_colors.dart';

class BottomBarWidget extends StatelessWidget {
  final List<BottomBarItem> items;

  const BottomBarWidget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 16,
      child: Container(
        height: 56,
        width: size.width * .8,
        decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.5),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: items
              .map((e) => Material(
                    color: Colors.transparent,
                    child: IconButton(
                      icon: Icon(e.icon),
                      onPressed: e.onTap,
                      color: Colors.white,
                      splashRadius: 24.0,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

class BottomBarItem {
  final IconData icon;
  final VoidCallback onTap;

  BottomBarItem({
    required this.icon,
    required this.onTap,
  });
}
