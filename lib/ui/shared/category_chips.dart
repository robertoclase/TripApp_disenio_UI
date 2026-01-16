import 'package:flutter/material.dart';
import 'package:app_ui/ui/shared/app_colors.dart';

class CategoryChips extends StatelessWidget {
  const CategoryChips({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _chip(context, 'Asia', false),
          const SizedBox(width: 8),
          _chip(context, 'Europe', false),
          const SizedBox(width: 8),
          _chip(context, 'South America', true),
          const SizedBox(width: 8),
          _chip(context, 'North America', false),
          
        ],
      ),
    );
  }

  Widget _chip(BuildContext context, String label, bool active) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: active ? AppColors.chipActive : AppColors.chipInactive,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: active ? Colors.white : AppColors.textSecondary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
