import 'package:flutter/material.dart';

class AppBottomNav extends StatelessWidget {
  final int currentIndex;

  const AppBottomNav({
    super.key,
    required this.currentIndex,
  });

  static const Color bg = Color(0xFFFFF8F7);
  static const Color red = Color(0xFFC4003B);
  static const Color softRed = Color(0xFFFFE7EA);
  static const Color navGrey = Color(0xFF9B8C8F);

  static const List<String> routes = [
    '/accueil',
    '/history',
    '/new',
    '/pending',
  ];

  void goToPage(BuildContext context, int index) {
    if (index == currentIndex) return;

    Navigator.of(context).pushReplacementNamed(routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      decoration: const BoxDecoration(
        color: bg,
        border: Border(
          top: BorderSide(
            color: Color(0xFFF0E8E8),
            width: 1,
          ),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 325),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppNavItem(
                  icon: Icons.dashboard_rounded,
                  label: 'HOME',
                  active: currentIndex == 0,
                  onTap: () => goToPage(context, 0),
                ),
                AppNavItem(
                  icon: Icons.history_rounded,
                  label: 'HISTORY',
                  active: currentIndex == 1,
                  onTap: () => goToPage(context, 1),
                ),
                AppNavItem(
                  icon: Icons.add_circle_outline_rounded,
                  label: 'NEW',
                  active: currentIndex == 2,
                  onTap: () => goToPage(context, 2),
                ),
                AppNavItem(
                  icon: Icons.pending_actions_outlined,
                  label: 'PENDING',
                  active: currentIndex == 3,
                  onTap: () => goToPage(context, 3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;
  final VoidCallback onTap;

  const AppNavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.active,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color color = active ? AppBottomNav.red : AppBottomNav.navGrey;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: 58,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: active ? 30 : 24,
              height: active ? 24 : 22,
              decoration: BoxDecoration(
                color: active ? AppBottomNav.softRed : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Icon(
                icon,
                size: active ? 17 : 16,
                color: color,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 8,
                height: 1,
                fontWeight: active ? FontWeight.w900 : FontWeight.w600,
                letterSpacing: -0.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}