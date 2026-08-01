import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibe_games_test/src/core/constants/app_images.dart';
import 'package:vibe_games_test/src/core/theme/app_colors.dart';
import 'package:vibe_games_test/src/core/theme/app_text_styles.dart';
import 'package:vibe_games_test/src/core/navigation/navigation_cubit.dart';
import 'package:vibe_games_test/src/core/navigation/navigation_item.dart';
import 'package:vibe_games_test/src/core/widgets/custom_icon.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key, this.leftSafeInset = 0});

  final double leftSafeInset;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: leftSafeInset,
        top: 50,
        bottom: 50,
        right: 32,
      ),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(AppImages.nav_bar_bg),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: NavigationItem.values.map((item) {
          return BlocSelector<NavigationCubit, NavigationItem, bool>(
            selector: (selectedItem) => item == selectedItem,
            builder: (context, active) {
              return _NavItem(
                active: active,
                item: item,
                onPressed: () => context.read<NavigationCubit>().select(item),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.item,
    required this.active,
    required this.onPressed,
  });

  final NavigationItem item;
  final bool active;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final color = active ? AppColors.textPrimary : AppColors.textPrimary32;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox.square(
              dimension: 54,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomIcon(item.iconAsset, size: 54, color: color),
                  if (item == NavigationItem.calendar)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: AppColors.danger,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 7),
            Text(
              item.label,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.description.copyWith(
                color: color,
                height: 1.08,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
