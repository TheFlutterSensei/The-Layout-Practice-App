import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final Color cardBgColor;
  final IconData icon;
  final String title;

  const DashboardCard({
    super.key,
    required this.cardBgColor,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      elevation: 0,
      color: cardBgColor,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 8),
              Text(title, style: Theme.of(context).textTheme.titleSmall),
            ],
          ),
        ),
      ),
    );
  }
}
