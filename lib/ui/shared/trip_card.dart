import 'dart:ui';

import 'package:app_ui/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  const TripCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          Positioned(
            left: 22,
            right: 10,
            top: 12,
            child: _BackdropCard(
              imageUrl:
                  'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?w=900&h=1200&fit=crop',
            ),
          ),
          Positioned(
            left: 8,
            right: 24,
            top: 26,
            child: _BackdropCard(
              imageUrl:
                  'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?w=900&h=1200&fit=crop',
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.cardShadow,
                    blurRadius: 16,
                    offset: Offset(0, 10),
                  ),
                ],
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1483728642387-6c3bdd6c93e5?w=900&h=1200&fit=crop',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 16,
            child: Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white30),
              ),
              child: const Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Brazil',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Rio de Janeiro',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star, size: 16, color: Colors.amber),
                    const SizedBox(width: 6),
                    Text(
                      '5.0',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '143 reviews',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: Colors.white70),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                const _SeeMoreButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BackdropCard extends StatelessWidget {
  final String imageUrl;

  const _BackdropCard({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _SeeMoreButton extends StatelessWidget {
  const _SeeMoreButton();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.45),
                Colors.black.withOpacity(0.25),
              ],
            ),
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: Colors.white24),
          ),
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'See more',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                width: 44,
                height: 44,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward, size: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
