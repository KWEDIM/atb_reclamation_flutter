import 'package:flutter/material.dart';
import '../widgets/app_bottom_nav.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  static const Color bg = Color(0xFFFFF8F7);
  static const Color headerBg = Color(0xFFFFF6F5);
  static const Color white = Color(0xFFFFFFFF);
  static const Color softPink = Color(0xFFFFF0F2);
  static const Color cardPink = Color(0xFFFFE9EB);
  static const Color red = Color(0xFFC4003B);
  static const Color darkRed = Color(0xFF8B0023);
  static const Color textDark = Color(0xFF271818);
  static const Color textSoft = Color(0xFF6F575B);
  static const Color navGrey = Color(0xFF9B8C8F);
  static const Color green = Color(0xFF006A62);
  static const Color greenSoft = Color(0xFFDDF5F2);
  static const Color closedSoft = Color(0xFFF4DFE2);
  static const Color rejectedSoft = Color(0xFFFFDDE2);

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
              padding: const EdgeInsets.only(bottom: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  _HistoryHeader(),

                  SizedBox(height: 22),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      'Reclamation History',
                      style: TextStyle(
                        color: HistoryPage.textDark,
                        fontSize: 22,
                        height: 1,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.8,
                      ),
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: _SearchBox(),
                  ),

                  SizedBox(height: 22),

                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: _FilterChipsRow(),
                  ),

                  SizedBox(height: 21),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: _HistoryItemCard(
                      code: 'RC-01',
                      title: 'Travel Expense\nDiscrepancy',
                      id: 'ID: #9902-881',
                      date: 'Oct 24, 2023',
                      status: 'RESOLVED',
                      statusColor: HistoryPage.green,
                      statusBg: HistoryPage.greenSoft,
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: _HistoryItemCard(
                      code: 'RC-\n02',
                      title: 'Hardware Upgrade\nReimbursement',
                      id: 'ID: #8129-440',
                      date: 'Nov 02, 2023',
                      status: 'CLOSED',
                      statusColor: HistoryPage.textSoft,
                      statusBg: HistoryPage.closedSoft,
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: _HistoryItemCard(
                      code: 'RC-\n03',
                      title: 'Professional Membership\nFees',
                      id: 'ID: #7721-009',
                      date: 'Nov 15, 2023',
                      status: 'REJECTED',
                      statusColor: HistoryPage.red,
                      statusBg: HistoryPage.rejectedSoft,
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: _HistoryItemCard(
                      code: 'RC-04',
                      title: 'Client Entertainment\nLedger',
                      id: 'ID: #3310-222',
                      date: 'Dec 01, 2023',
                      status: 'RESOLVED',
                      statusColor: HistoryPage.green,
                      statusBg: HistoryPage.greenSoft,
                    ),
                  ),

                  SizedBox(height: 36),

                  Center(child: _ArchiveButton()),

                  SizedBox(height: 48),
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

class _HistoryHeader extends StatelessWidget {
  const _HistoryHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      padding: const EdgeInsets.only(left: 18, right: 18),
      color: HistoryPage.headerBg,
      child: Row(
        children: const [
          _HistoryAvatar(),
          SizedBox(width: 9),
          Text(
            'User1',
            style: TextStyle(
              color: HistoryPage.red,
              fontSize: 11,
              fontWeight: FontWeight.w900,
              letterSpacing: -0.2,
            ),
          ),
          Spacer(),
          Icon(
            Icons.notifications_none_rounded,
            size: 15,
            color: HistoryPage.red,
          ),
        ],
      ),
    );
  }
}

class _HistoryAvatar extends StatelessWidget {
  const _HistoryAvatar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 27,
      height: 27,
      decoration: BoxDecoration(
        color: const Color(0xFF23313C),
        borderRadius: BorderRadius.circular(7),
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

class _SearchBox extends StatelessWidget {
  const _SearchBox();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 13),
      decoration: BoxDecoration(
        color: HistoryPage.softPink,
        borderRadius: BorderRadius.circular(2),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.search_rounded,
            size: 15,
            color: HistoryPage.textSoft,
          ),
          SizedBox(width: 10),
          Text(
            'Search ledger ID or title...',
            style: TextStyle(
              color: HistoryPage.textSoft,
              fontSize: 9,
              height: 1,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterChipsRow extends StatelessWidget {
  const _FilterChipsRow();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 29,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          _FilterChipItem(
            label: 'All Entries',
            active: true,
            width: 82,
          ),
          SizedBox(width: 12),
          _FilterChipItem(
            label: 'Resolved',
            active: false,
            width: 75,
          ),
          SizedBox(width: 12),
          _FilterChipItem(
            label: 'Pending',
            active: false,
            width: 74,
          ),
          SizedBox(width: 12),
          _FilterChipItem(
            label: '',
            active: false,
            width: 45,
          ),
          SizedBox(width: 18),
        ],
      ),
    );
  }
}

class _FilterChipItem extends StatelessWidget {
  final String label;
  final bool active;
  final double width;

  const _FilterChipItem({
    required this.label,
    required this.active,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 29,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: active ? HistoryPage.red : HistoryPage.cardPink,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(
        label,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: active ? Colors.white : HistoryPage.textSoft,
          fontSize: 8,
          height: 1,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

class _HistoryItemCard extends StatelessWidget {
  final String code;
  final String title;
  final String id;
  final String date;
  final String status;
  final Color statusColor;
  final Color statusBg;

  const _HistoryItemCard({
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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/open-reclamation');
      },
      behavior: HitTestBehavior.opaque,
      child: Container(
        height: 95,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 16, right: 13),
        decoration: BoxDecoration(
          color: HistoryPage.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFB00020).withOpacity(0.025),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
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
                  fontSize: 8,
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
                        height: 1.12,
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
                            color: HistoryPage.textDark,
                            fontSize: 7.1,
                            height: 1,
                            fontWeight: FontWeight.w700,
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
                            color: HistoryPage.textDark,
                            fontSize: 7.1,
                            height: 1,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),

                    _StatusBadge(
                      label: status,
                      textColor: statusColor,
                      bgColor: statusBg,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(width: 8),

            const Icon(
              Icons.chevron_right_rounded,
              size: 16,
              color: HistoryPage.textSoft,
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color bgColor;

  const _StatusBadge({
    required this.label,
    required this.textColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 17,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 3.5,
            height: 3.5,
            decoration: BoxDecoration(
              color: textColor,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 5),
          Text(
            label,
            style: TextStyle(
              color: textColor,
              fontSize: 7,
              height: 1,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.35,
            ),
          ),
        ],
      ),
    );
  }
}

class _ArchiveButton extends StatelessWidget {
  const _ArchiveButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Pour l’instant, ce bouton reste visuel.
        // Tu peux plus tard le connecter à une vraie page d’archives.
      },
      child: Container(
        height: 38,
        padding: const EdgeInsets.symmetric(horizontal: 22),
        decoration: BoxDecoration(
          color: HistoryPage.softPink,
          borderRadius: BorderRadius.circular(7),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Archive Insights',
              style: TextStyle(
                color: HistoryPage.textDark,
                fontSize: 9,
                height: 1,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Icons.arrow_forward_rounded,
              size: 15,
              color: HistoryPage.textDark,
            ),
          ],
        ),
      ),
    );
  }
}