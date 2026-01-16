import 'package:flutter/material.dart';
import 'package:app_ui/ui/shared/app_colors.dart';
import 'package:app_ui/ui/shared/category_chips.dart';
import 'package:app_ui/ui/shared/home_header.dart';
import 'package:app_ui/ui/shared/search_bar.dart';
import 'package:app_ui/ui/shared/trip_card.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              const SizedBox(height: 18),
              const HomeSearchBar(),
              const SizedBox(height: 20),
              Text(
                'Select your next trip',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 12),
              const CategoryChips(),
              const SizedBox(height: 18),
              const TripCard(),
            ],
          ),
        ),
      ),
    );
  }
}
