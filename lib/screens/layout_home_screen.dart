import 'package:flutter/material.dart';
import 'package:layout_practice/dashboard_widgets/dashboard_card.dart';

class LayoutHomeScreen extends StatelessWidget {
  const LayoutHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Practice'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Hello World!',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: DashboardCard(
                    cardBgColor: Theme.of(context).primaryColor.withAlpha(30),
                    icon: Icons.person,
                    title: 'Profile',
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: DashboardCard(
                    cardBgColor: Theme.of(context).primaryColor.withAlpha(30),
                    icon: Icons.message,
                    title: 'Message',
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: DashboardCard(
                    cardBgColor: Theme.of(context).primaryColor.withAlpha(30),
                    icon: Icons.apps_rounded,
                    title: 'Apps',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Card.filled(
                color: Theme.of(context).primaryColor.withAlpha(30),
                elevation: 0,
                child: Center(
                  child: Text(
                    'Content Area',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 3,
        backgroundColor: Theme.of(context).primaryColor.withAlpha(30),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
          NavigationDestination(icon: Icon(Icons.help), label: 'Help'),
        ],
      ),
    );
  }
}
