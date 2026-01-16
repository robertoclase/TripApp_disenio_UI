import 'package:flutter/material.dart';
import 'package:app_ui/ui/shared/app_colors.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.bottomBar,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          NavItem(icon: Icons.home, selected: true),
          NavItem(icon: Icons.dashboard_outlined),
          NavItem(icon: Icons.favorite_border),
          NavItem(icon: Icons.grid_view),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final bool selected;

  const NavItem({super.key, required this.icon, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: selected ? Colors.white : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: selected ? AppColors.bottomBar : Colors.white),
    );
  }
}
