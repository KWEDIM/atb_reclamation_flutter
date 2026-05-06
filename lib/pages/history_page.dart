import 'package:flutter/material.dart';
import 'package:atb_reclamation_flutter/widgets/app_bottom_nav.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  static const Color bg = Color(0xFFFFF8F7);
  static const Color white = Color(0xFFFFFFFF);
  static const Color cardPink = Color(0xFFFFE9EB);
  static const Color softPink = Color(0xFFFFF0F2);
  static const Color red = Color(0xFFC4003B);
  static const Color darkRed = Color(0xFF9D002C);
  static const Color textDark = Color(0xFF271818);
  static const Color textSoft = Color(0xFF6F575B);
  static const Color navGrey = Color(0xFF9B8C8F);
  static const Color green = Color(0xFF006A62);
  static const Color greenSoft = Color(0xFFDDF5F2);
  static const Color closedSoft = Color(0xFFF2DDE1);
  static const Color rejectedSoft = Color(0xFFFFD9DD);

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
                  HistoryHeader(),

                  SizedBox(height: 20),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      'Reclamation History',
                      style: TextStyle(
                        color: textDark,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.7,
                      ),
                    ),
                  ),

                  SizedBox(height: 13),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: SearchBox(),
                  ),

                  SizedBox(height: 19),

                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: FilterChipsRow(),
                  ),

                  SizedBox(height: 18),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: HistoryItemCard(
                      code: 'RC-01',
                      title: 'Travel Expense\nDiscrepancy',
                      id: 'ID: #9902-881',
                      date: 'Oct 24, 2023',
                      status: 'RESOLVED',
                      statusColor: green,
                      statusBg: greenSoft,
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: HistoryItemCard(
                      code: 'RC-\n02',
                      title: 'Hardware Upgrade\nReimbursement',
                      id: 'ID: #8129-440',
                      date: 'Nov 02, 2023',
                      status: 'CLOSED',
                      statusColor: textSoft,
                      statusBg: closedSoft,
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: HistoryItemCard(
                      code: 'RC-\n03',
                      title: 'Professional Membership\nFees',
                      id: 'ID: #7721-009',
                      date: 'Nov 15, 2023',
                      status: 'REJECTED',
                      statusColor: red,
                      statusBg: rejectedSoft,
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: HistoryItemCard(
                      code: 'RC-04',
                      title: 'Client Entertainment\nLedger',
                      id: 'ID: #3310-222',
                      date: 'Dec 01, 2023',
                      status: 'RESOLVED',
                      statusColor: green,
                      statusBg: greenSoft,
                    ),
                  ),

                  SizedBox(height: 26),

                  Center(child: ArchiveButton()),

                  SizedBox(height: 38),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNav(currentIndex: 1),
    );
  }
}

class HistoryHeader extends StatelessWidget {
  const HistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.only(left: 18, right: 20, top: 8),
      color: const Color(0xFFFFF6F5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MiniAvatar(),
          const SizedBox(width: 8),
          const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Text(
              'User1',
              style: TextStyle(
                color: HistoryPage.red,
                fontSize: 11,
                fontWeight: FontWeight.w900,
                letterSpacing: -0.2,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Icon(
              Icons.notifications_none_rounded,
              size: 16,
              color: HistoryPage.red,
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
      width: 27,
      height: 27,
      decoration: BoxDecoration(
        color: const Color(0xFF23313C),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 6,
            child: Container(
              width: 7,
              height: 7,
              decoration: const BoxDecoration(
                color: Color(0xFFF0B28C),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 4,
            child: Container(
              width: 10,
              height: 6,
              decoration: BoxDecoration(
                color: const Color(0xFF171B22),
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
          Positioned(
            top: 14,
            child: Container(
              width: 13,
              height: 10,
              decoration: BoxDecoration(
                color: const Color(0xFF141B24),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          Positioned(
            top: 16,
            child: Container(
              width: 3,
              height: 7,
              decoration: BoxDecoration(
                color: HistoryPage.red,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: HistoryPage.softPink,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Row(
        children: const [
          Icon(Icons.search_rounded, size: 16, color: HistoryPage.textSoft),
          SizedBox(width: 10),
          Text(
            'Search ledger ID or title...',
            style: TextStyle(
              color: HistoryPage.textSoft,
              fontSize: 9.5,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class FilterChipsRow extends StatelessWidget {
  const FilterChipsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          HistoryChip(label: 'All Entries', active: true, width: 84),
          SizedBox(width: 12),
          HistoryChip(label: 'Resolved', active: false, width: 72),
          SizedBox(width: 12),
          HistoryChip(label: 'Pending', active: false, width: 70),
          SizedBox(width: 12),
          HistoryChip(label: '', active: false, width: 48),
        ],
      ),
    );
  }
}

class HistoryChip extends StatelessWidget {
  final String label;
  final bool active;
  final double width;

  const HistoryChip({
    super.key,
    required this.label,
    required this.active,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 28,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: active ? HistoryPage.red : HistoryPage.cardPink,
        borderRadius: BorderRadius.circular(7),
        boxShadow: active
            ? [
                BoxShadow(
                  color: HistoryPage.red.withOpacity(0.25),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ]
            : null,
      ),
      child: Text(
        label,
        style: TextStyle(
          color: active ? Colors.white : HistoryPage.textSoft,
          fontSize: 8.5,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class HistoryItemCard extends StatelessWidget {
  final String code;
  final String title;
  final String id;
  final String date;
  final String status;
  final Color statusColor;
  final Color statusBg;

  const HistoryItemCard({
    super.key,
    required this.code,
    required this.title,
    required this.id,
    required this.date,
    required this.status,
    required this.statusColor,
    required this.statusBg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 16, right: 13),
      decoration: BoxDecoration(
        color: HistoryPage.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(
            width: 31,
            height: 31,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: HistoryPage.cardPink,
              borderRadius: BorderRadius.circular(3),
            ),
            child: Text(
              code,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: HistoryPage.red,
                fontSize: 8.2,
                height: 1.05,
                fontWeight: FontWeight.w900,
                letterSpacing: -0.1,
              ),
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 18, bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: HistoryPage.textDark,
                      fontSize: 11.5,
                      height: 1.13,
                      fontWeight: FontWeight.w900,
                      letterSpacing: -0.15,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Row(
                    children: [
                      Text(
                        id,
                        style: const TextStyle(
                          color: HistoryPage.textSoft,
                          fontSize: 7.6,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 7),
                      Container(
                        width: 3,
                        height: 3,
                        decoration: const BoxDecoration(
                          color: HistoryPage.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 7),
                      Text(
                        date,
                        style: const TextStyle(
                          color: HistoryPage.textSoft,
                          fontSize: 7.6,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  Container(
                    height: 17,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: statusBg,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 3.5,
                          height: 3.5,
                          decoration: BoxDecoration(
                            color: statusColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          status,
                          style: TextStyle(
                            color: statusColor,
                            fontSize: 7.5,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 8),

          const Icon(
            Icons.chevron_right_rounded,
            size: 18,
            color: HistoryPage.textSoft,
          ),
        ],
      ),
    );
  }
}

class ArchiveButton extends StatelessWidget {
  const ArchiveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        color: HistoryPage.softPink,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text(
            'Archive Insights',
            style: TextStyle(
              color: HistoryPage.textDark,
              fontSize: 9,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(width: 10),
          Icon(
            Icons.arrow_forward_rounded,
            size: 16,
            color: HistoryPage.textDark,
          ),
        ],
      ),
    );
  }
}

class HistoryBottomNav extends StatelessWidget {
  const HistoryBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      decoration: const BoxDecoration(
        color: HistoryPage.bg,
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
                  icon: Icons.dashboard_outlined,
                  label: 'HOME',
                  active: false,
                ),
                NavItem(
                  icon: Icons.history_rounded,
                  label: 'HISTORY',
                  active: true,
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
    final Color color = active ? HistoryPage.red : HistoryPage.navGrey;

    return SizedBox(
      width: 58,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: active ? 30 : 24,
            height: active ? 24 : 22,
            decoration: BoxDecoration(
              color: active ? HistoryPage.cardPink : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(icon, size: active ? 16 : 15, color: color),
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
