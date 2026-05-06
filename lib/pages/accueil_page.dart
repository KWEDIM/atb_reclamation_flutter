import 'package:flutter/material.dart';
import 'package:atb_reclamation_flutter/widgets/app_bottom_nav.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UnifiedDashboardPage(),
    );
  }
}

class UnifiedDashboardPage extends StatelessWidget {
  const UnifiedDashboardPage({super.key});

  static const Color bg = Color(0xFFFFF8F7);
  static const Color white = Color(0xFFFFFFFF);
  static const Color cardPink = Color(0xFFFDE6E8);
  static const Color cardPink2 = Color(0xFFFBDDDD);
  static const Color softRed = Color(0xFFFFE7EA);
  static const Color red = Color(0xFFC4003B);
  static const Color darkRed = Color(0xFFB8003A);
  static const Color textDark = Color(0xFF271818);
  static const Color textSoft = Color(0xFF6F575B);
  static const Color green = Color(0xFF006A62);
  static const Color navGrey = Color(0xFF9B8C8F);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 325),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Header(),
                  SizedBox(height: 23),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: WelcomeBlock(),
                  ),

                  SizedBox(height: 28),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: StatCard(
                      label: 'TOTAL RECLAMATIONS',
                      value: '1,284',
                      icon: Icons.insert_chart_outlined_rounded,
                      backgroundColor: cardPink,
                      footer: TrendFooter(),
                      height: 109,
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: StatCard(
                      label: 'OPEN',
                      value: '42',
                      icon: Icons.inventory_2_outlined,
                      backgroundColor: cardPink,
                      footer: PriorityFooter(),
                      height: 112,
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: StatCard(
                      label: 'PENDING',
                      value: '156',
                      icon: Icons.pending_actions_outlined,
                      backgroundColor: cardPink2,
                      footer: Text(
                        'Average resolution: 4.2h',
                        style: TextStyle(
                          fontSize: 10,
                          color: textSoft,
                          height: 1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      height: 110,
                    ),
                  ),

                  SizedBox(height: 30),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: ActionCard(),
                  ),

                  SizedBox(height: 20),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: StatsCard(),
                  ),

                  SizedBox(height: 31),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: SectionHeader(),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: ActivityCard(),
                  ),

                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNav(currentIndex: 0),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.only(left: 18, right: 20, top: 8),
      color: const Color(0xFFFFF6F5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MiniAvatar(),
          const SizedBox(width: 10),
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              'User1',
              style: TextStyle(
                color: UnifiedDashboardPage.red,
                fontSize: 14,
                fontWeight: FontWeight.w800,
                letterSpacing: -0.3,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: Icon(
              Icons.notifications_none_rounded,
              size: 18,
              color: UnifiedDashboardPage.red,
            ),
          ),
        ],
      ),
    );
  }
}

class MiniAvatar extends StatelessWidget {
  const MiniAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      decoration: BoxDecoration(
        color: const Color(0xFF23313C),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 7,
            child: Container(
              width: 9,
              height: 9,
              decoration: const BoxDecoration(
                color: Color(0xFFF0B28C),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 5,
            child: Container(
              width: 12,
              height: 7,
              decoration: BoxDecoration(
                color: const Color(0xFF171B22),
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
          Positioned(
            top: 17,
            child: Container(
              width: 15,
              height: 12,
              decoration: BoxDecoration(
                color: const Color(0xFF141B24),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          Positioned(
            top: 19,
            child: Container(
              width: 4,
              height: 8,
              decoration: BoxDecoration(
                color: UnifiedDashboardPage.red,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Positioned(
            top: 25,
            child: Container(
              width: 20,
              height: 2,
              decoration: BoxDecoration(
                color: const Color(0xFFE7E7E7),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeBlock extends StatelessWidget {
  const WelcomeBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Monday, May 22',
          style: TextStyle(
            color: UnifiedDashboardPage.textSoft,
            fontSize: 13,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.1,
          ),
        ),
        SizedBox(height: 3),
        Text(
          'Welcome back, Julian Alexander',
          style: TextStyle(
            color: UnifiedDashboardPage.textDark,
            fontSize: 12,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.2,
          ),
        ),
      ],
    );
  }
}

class StatCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Widget footer;
  final double height;
  final Color backgroundColor;
  final bool showRedDot;

  const StatCard({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    required this.footer,
    required this.height,
    required this.backgroundColor,
    this.showRedDot = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 16, 16, 15),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 1,
            top: 1,
            child: Icon(icon, size: 17, color: UnifiedDashboardPage.red),
          ),
          if (showRedDot)
            Positioned(
              right: 75,
              top: 48,
              child: Container(
                width: 5,
                height: 5,
                decoration: const BoxDecoration(
                  color: Color(0xFFFF1F28),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w500,
                  color: UnifiedDashboardPage.textSoft,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 27,
                  height: 0.95,
                  fontWeight: FontWeight.w900,
                  color: UnifiedDashboardPage.textDark,
                  letterSpacing: -0.7,
                ),
              ),
              const Spacer(),
              footer,
            ],
          ),
        ],
      ),
    );
  }
}

class TrendFooter extends StatelessWidget {
  const TrendFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.trending_up_rounded,
          size: 12,
          color: UnifiedDashboardPage.green,
        ),
        SizedBox(width: 7),
        Text(
          '12% from last month.',
          style: TextStyle(
            fontSize: 10,
            color: UnifiedDashboardPage.green,
            fontWeight: FontWeight.w800,
            height: 1,
          ),
        ),
      ],
    );
  }
}

class PriorityFooter extends StatelessWidget {
  const PriorityFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: UnifiedDashboardPage.green,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: const Text(
        'PRIORITY ACTION',
        style: TextStyle(
          color: Colors.white,
          fontSize: 8,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

class ActionCard extends StatelessWidget {
  const ActionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 141,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: UnifiedDashboardPage.darkRed,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -34,
            bottom: -32,
            child: Container(
              width: 112,
              height: 104,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: const Color(0xFFD7295C).withOpacity(0.58),
                  width: 8,
                ),
              ),
            ),
          ),
          Positioned(
            right: -3,
            bottom: 12,
            child: Container(
              width: 50,
              height: 31,
              decoration: BoxDecoration(
                color: const Color(0xFFC51149),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          Positioned(
            right: 6,
            bottom: 20,
            child: Container(
              width: 16,
              height: 16,
              decoration: const BoxDecoration(
                color: Color(0xFFD62D61),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 26,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add_rounded,
                size: 19,
                color: UnifiedDashboardPage.red,
              ),
            ),
          ),
          const Positioned(
            left: 24,
            top: 69,
            child: Text(
              'New Reclamation',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w800,
                letterSpacing: -0.4,
              ),
            ),
          ),
          const Positioned(
            left: 24,
            top: 98,
            right: 34,
            child: Text(
              'Initiate a formal resolution process for high-net-\nworth accounts.',
              style: TextStyle(
                color: Color(0xFFFFD7DF),
                fontSize: 10,
                height: 1.28,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StatsCard extends StatelessWidget {
  const StatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 22, top: 25, right: 20),
      decoration: BoxDecoration(
        color: UnifiedDashboardPage.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: const Color(0xFFF0DEDE), width: 0.8),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: SizedBox(
              width: 28,
              height: 28,
              child: CustomPaint(painter: StatsIconPainter()),
            ),
          ),
          const Positioned(
            left: 0,
            top: 38,
            child: Text(
              'View My Stats',
              style: TextStyle(
                color: UnifiedDashboardPage.textDark,
                fontSize: 16,
                height: 1,
                fontWeight: FontWeight.w800,
                letterSpacing: -0.35,
              ),
            ),
          ),
          const Positioned(
            left: 0,
            top: 58,
            right: 0,
            child: Text(
              'Analyze your performance metrics and resolution\nbenchmarks.',
              style: TextStyle(
                color: UnifiedDashboardPage.textSoft,
                fontSize: 10,
                height: 1.25,
                fontWeight: FontWeight.w400,
                letterSpacing: -0.05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StatsIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = UnifiedDashboardPage.red
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final path = Path()
      ..moveTo(1, 12)
      ..lineTo(7, 6)
      ..lineTo(10, 10)
      ..lineTo(14, 3)
      ..lineTo(19, 12);

    canvas.drawPath(path, linePaint);

    final circlePaint = Paint()
      ..color = UnifiedDashboardPage.red
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(const Offset(15, 18), 4.2, circlePaint);
    canvas.drawLine(const Offset(18.2, 21.2), const Offset(23, 25), linePaint);

    final dotPaint = Paint()
      ..color = UnifiedDashboardPage.red
      ..style = PaintingStyle.fill;

    canvas.drawCircle(const Offset(22, 10), 2, dotPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Recent Activity',
          style: TextStyle(
            color: UnifiedDashboardPage.textDark,
            fontSize: 15,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.25,
          ),
        ),
        Spacer(),
        Text(
          'View All Ledger',
          style: TextStyle(
            color: UnifiedDashboardPage.red,
            fontSize: 10,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.1,
          ),
        ),
      ],
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        color: UnifiedDashboardPage.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: const Color(0xFFF0DEDE), width: 0.8),
      ),
      child: const Column(
        children: [
          ActivityItem(
            iconType: ActivityIconType.people,
            title: 'Reclamation #9928-X',
            subtitle: 'Assigned to: Wealth\nManagement Dept.',
            status: 'Active',
            time: '2 mins\nago',
            statusColor: UnifiedDashboardPage.textDark,
            showDivider: true,
          ),
          ActivityItem(
            iconType: ActivityIconType.check,
            title: 'Monthly Audit\nExport',
            subtitle: 'Ready for compliance\nreview',
            status: 'Completed',
            time: '1 hour ago',
            statusColor: UnifiedDashboardPage.textDark,
            showDivider: true,
          ),
          ActivityItem(
            iconType: ActivityIconType.alert,
            title: 'Flagged Transaction',
            subtitle: 'Account: Ending in\n*8829',
            status: 'Pending',
            time: '3 hours\nago',
            statusColor: UnifiedDashboardPage.red,
            showDivider: false,
          ),
        ],
      ),
    );
  }
}

enum ActivityIconType { people, check, alert }

class ActivityItem extends StatelessWidget {
  final ActivityIconType iconType;
  final String title;
  final String subtitle;
  final String status;
  final String time;
  final Color statusColor;
  final bool showDivider;

  const ActivityItem({
    super.key,
    required this.iconType,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.time,
    required this.statusColor,
    required this.showDivider,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      decoration: BoxDecoration(
        border: showDivider
            ? const Border(
                bottom: BorderSide(color: Color(0xFFF0E8E8), width: 1),
              )
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 14),
        child: Row(
          children: [
            ActivityIcon(type: iconType),
            const SizedBox(width: 12),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: UnifiedDashboardPage.textDark,
                        fontSize: 12,
                        height: 1.08,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.15,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: UnifiedDashboardPage.textSoft,
                        fontSize: 9.5,
                        height: 1.13,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.05,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 57,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      status,
                      style: TextStyle(
                        color: statusColor,
                        fontSize: 11,
                        height: 1,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.1,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      time,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: UnifiedDashboardPage.textSoft,
                        fontSize: 8.5,
                        height: 1.05,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityIcon extends StatelessWidget {
  final ActivityIconType type;

  const ActivityIcon({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    IconData icon;

    switch (type) {
      case ActivityIconType.people:
        icon = Icons.manage_accounts_outlined;
        break;
      case ActivityIconType.check:
        icon = Icons.done_all_rounded;
        break;
      case ActivityIconType.alert:
        icon = Icons.priority_high_rounded;
        break;
    }

    return Container(
      width: 30,
      height: 32,
      decoration: BoxDecoration(
        color: UnifiedDashboardPage.softRed,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Icon(
        icon,
        color: UnifiedDashboardPage.red,
        size: type == ActivityIconType.alert ? 21 : 18,
      ),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      decoration: const BoxDecoration(
        color: UnifiedDashboardPage.bg,
        border: Border(top: BorderSide(color: Color(0xFFF0E8E8), width: 1)),
      ),
      child: SafeArea(
        top: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 325),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavItem(
                  icon: Icons.dashboard_rounded,
                  label: 'HOME',
                  active: true,
                ),
                NavItem(
                  icon: Icons.history_rounded,
                  label: 'HISTORY',
                  active: false,
                ),
                NavItem(
                  icon: Icons.add_circle_outline_rounded,
                  label: 'NEW',
                  active: false,
                ),
                NavItem(
                  icon: Icons.pending_actions_outlined,
                  label: 'PENDING',
                  active: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;

  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    final Color color = active
        ? UnifiedDashboardPage.red
        : UnifiedDashboardPage.navGrey;

    return SizedBox(
      width: 58,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: active ? 30 : 24,
            height: active ? 24 : 22,
            decoration: BoxDecoration(
              color: active ? UnifiedDashboardPage.softRed : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(icon, size: active ? 17 : 16, color: color),
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
    );
  }
}
