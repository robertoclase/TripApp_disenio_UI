import 'package:flutter/material.dart';
import 'package:app_ui/ui/shared/app_colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  size: 22,
                  color: AppColors.textSecondary,
                ),
                const SizedBox(width: 10),
                Text(
                  'Search',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: AppColors.bottomBar,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          child: const Icon(Icons.tune, color: Colors.white),
        ),
      ],
    );
  }
}
