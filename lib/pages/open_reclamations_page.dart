import 'package:flutter/material.dart';
import '../widgets/app_bottom_nav.dart';

class OpenReclamationPage extends StatelessWidget {
  const OpenReclamationPage({super.key});

  static const Color bg = Color(0xFFFFF8F7);
  static const Color white = Color(0xFFFFFFFF);
  static const Color cardPink = Color(0xFFFFE6E8);
  static const Color softPink = Color(0xFFFFF1F2);
  static const Color red = Color(0xFFC4003B);
  static const Color darkRed = Color(0xFF8B0023);
  static const Color textDark = Color(0xFF271818);
  static const Color textSoft = Color(0xFF6F575B);
  static const Color green = Color(0xFF006A62);
  static const Color greenSoft = Color(0xFFDDF5F2);
  static const Color borderPink = Color(0xFFF4DEDE);

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
              padding: const EdgeInsets.only(bottom: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  OpenReclamationHeader(),

                  SizedBox(height: 18),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: OpenReclamationTitleSection(),
                  ),

                  SizedBox(height: 24),

                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: ReclamationFilters(),
                  ),

                  SizedBox(height: 17),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: OpenReclamationCard(
                      status: 'PENDING',
                      statusColor: red,
                      statusBg: softPink,
                      title: 'Invoice Discrepancy:\n#INV-9021',
                      id: '#REC-\n4482',
                      description:
                          'System-calculated tax rate does not align\nwith the regional jurisdiction of the branch\noffice in Zurich. Awaiting manual\nadjustment.',
                      footerText: '+2',
                      showAvatarGroup: true,
                      showLeftBorder: false,
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: OpenReclamationCard(
                      status: 'OPEN',
                      statusColor: green,
                      statusBg: greenSoft,
                      title: 'Payroll Allocation Error\n- Q3',
                      id: '#REC-\n4489',
                      description:
                          'Three employees reported incorrect bonus\nmultipliers in the September ledger.\nImmediate audit of the performance variable\ntable required.',
                      footerText: 'Updated 2h ago',
                      showAvatarGroup: false,
                      showLeftBorder: true,
                    ),
                  ),

                  SizedBox(height: 16),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: OpenReclamationCard(
                      status: 'PENDING',
                      statusColor: red,
                      statusBg: softPink,
                      title: 'Duplicate Expense\nSubmission',
                      id: '#REC-\n4391',
                      description:
                          'Duplicate travel reimbursement detected for\nthe London conference. Employee claims\naccidental double submission. Needs\napproval to void.',
                      footerText: '4 Comments',
                      showAvatarGroup: false,
                      showLeftBorder: false,
                    ),
                  ),

                  SizedBox(height: 28),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNav(currentIndex: 3),
    );
  }
}

class OpenReclamationHeader extends StatelessWidget {
  const OpenReclamationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      padding: const EdgeInsets.only(left: 18, right: 18),
      color: const Color(0xFFFFF6F5),
      child: Row(
        children: const [
          UserMiniAvatar(size: 27),
          SizedBox(width: 9),
          Text(
            'User1',
            style: TextStyle(
              color: OpenReclamationPage.red,
              fontSize: 11,
              fontWeight: FontWeight.w900,
              letterSpacing: -0.2,
            ),
          ),
          Spacer(),
          Icon(
            Icons.notifications_none_rounded,
            size: 15,
            color: OpenReclamationPage.textDark,
          ),
        ],
      ),
    );
  }
}

class UserMiniAvatar extends StatelessWidget {
  final double size;

  const UserMiniAvatar({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final double head = size * 0.27;
    final double bodyW = size * 0.48;
    final double bodyH = size * 0.37;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: const Color(0xFF23313C),
        borderRadius: BorderRadius.circular(size * 0.24),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: size * 0.22,
            child: Container(
              width: head,
              height: head,
              decoration: const BoxDecoration(
                color: Color(0xFFF0B28C),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: size * 0.17,
            child: Container(
              width: size * 0.36,
              height: size * 0.20,
              decoration: BoxDecoration(
                color: const Color(0xFF171B22),
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
          Positioned(
            bottom: size * 0.13,
            child: Container(
              width: bodyW,
              height: bodyH,
              decoration: BoxDecoration(
                color: const Color(0xFF141B24),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
          Positioned(
            bottom: size * 0.12,
            child: Container(
              width: size * 0.12,
              height: size * 0.28,
              decoration: BoxDecoration(
                color: OpenReclamationPage.red,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OpenReclamationTitleSection extends StatelessWidget {
  const OpenReclamationTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'ADMINISTRATIVE OVERSIGHT',
          style: TextStyle(
            color: OpenReclamationPage.red,
            fontSize: 7.5,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.15,
          ),
        ),

        SizedBox(height: 7),

        Text(
          'Open Reclamations',
          style: TextStyle(
            color: OpenReclamationPage.textDark,
            fontSize: 23,
            height: 1,
            fontWeight: FontWeight.w900,
            letterSpacing: -0.9,
          ),
        ),

        SizedBox(height: 15),

        Row(
          children: [
            ReclamationStatBox(
              label: 'ACTIVE CASES',
              value: '14',
            ),
            SizedBox(width: 10),
            ReclamationStatBox(
              label: 'AWAITING ACTION',
              value: '06',
            ),
          ],
        ),
      ],
    );
  }
}

class ReclamationStatBox extends StatelessWidget {
  final String label;
  final String value;

  const ReclamationStatBox({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 50,
      padding: const EdgeInsets.only(left: 13, top: 9),
      decoration: BoxDecoration(
        color: OpenReclamationPage.softPink,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: OpenReclamationPage.textSoft,
              fontSize: 6.6,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(
              color: OpenReclamationPage.red,
              fontSize: 15,
              height: 1,
              fontWeight: FontWeight.w900,
              letterSpacing: -0.2,
            ),
          ),
        ],
      ),
    );
  }
}

class ReclamationFilters extends StatelessWidget {
  const ReclamationFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 29,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: const [
          ReclamationFilterChip(
            label: 'All Active',
            active: true,
            width: 75,
          ),
          SizedBox(width: 12),
          ReclamationFilterChip(
            label: 'Pending Review',
            active: false,
            width: 100,
          ),
          SizedBox(width: 12),
          ReclamationFilterChip(
            label: 'Urgent Escalation',
            active: false,
            width: 115,
          ),
          SizedBox(width: 18),
        ],
      ),
    );
  }
}

class ReclamationFilterChip extends StatelessWidget {
  final String label;
  final bool active;
  final double width;

  const ReclamationFilterChip({
    super.key,
    required this.label,
    required this.active,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: active ? OpenReclamationPage.red : OpenReclamationPage.softPink,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(
        label,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: active ? Colors.white : OpenReclamationPage.textDark,
          fontSize: 8,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class OpenReclamationCard extends StatelessWidget {
  final String status;
  final Color statusColor;
  final Color statusBg;
  final String title;
  final String id;
  final String description;
  final String footerText;
  final bool showAvatarGroup;
  final bool showLeftBorder;

  const OpenReclamationCard({
    super.key,
    required this.status,
    required this.statusColor,
    required this.statusBg,
    required this.title,
    required this.id,
    required this.description,
    required this.footerText,
    required this.showAvatarGroup,
    required this.showLeftBorder,
  });

  void openDetails(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const OpenReclamationDetailPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => openDetails(context),
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(18, 15, 15, 14),
        decoration: BoxDecoration(
          color: OpenReclamationPage.white,
          borderRadius: BorderRadius.circular(4),
          border: showLeftBorder
              ? const Border(
                  left: BorderSide(
                    color: OpenReclamationPage.red,
                    width: 4,
                  ),
                )
              : null,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StatusBadge(
                  label: status,
                  textColor: statusColor,
                  bgColor: statusBg,
                ),
                const Spacer(),
                Text(
                  id,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: OpenReclamationPage.textSoft,
                    fontSize: 7.8,
                    height: 1.15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            Text(
              title,
              style: const TextStyle(
                color: OpenReclamationPage.textDark,
                fontSize: 12.2,
                height: 1.08,
                fontWeight: FontWeight.w900,
                letterSpacing: -0.15,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              description,
              style: const TextStyle(
                color: OpenReclamationPage.textSoft,
                fontSize: 8.7,
                height: 1.45,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 14),

            Row(
              children: [
                if (showAvatarGroup) ...[
                  const UserMiniAvatar(size: 20),
                  const SizedBox(width: 4),
                  Container(
                    height: 16,
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: OpenReclamationPage.softPink,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      footerText,
                      style: const TextStyle(
                        color: OpenReclamationPage.textDark,
                        fontSize: 7.3,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ] else ...[
                  Icon(
                    footerText.contains('Comment')
                        ? Icons.chat_bubble_outline_rounded
                        : Icons.update_rounded,
                    size: 11,
                    color: OpenReclamationPage.textSoft,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    footerText,
                    style: const TextStyle(
                      color: OpenReclamationPage.textSoft,
                      fontSize: 7.8,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],

                const Spacer(),

                GestureDetector(
                  onTap: () => openDetails(context),
                  child: const Row(
                    children: [
                      Text(
                        'View Details',
                        style: TextStyle(
                          color: OpenReclamationPage.darkRed,
                          fontSize: 8,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.chevron_right_rounded,
                        size: 12,
                        color: OpenReclamationPage.darkRed,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StatusBadge extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color bgColor;

  const StatusBadge({
    super.key,
    required this.label,
    required this.textColor,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 5.8,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.4,
        ),
      ),
    );
  }
}

class OpenReclamationDetailPage extends StatelessWidget {
  const OpenReclamationDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OpenReclamationPage.bg,
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 325),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
                top: 10,
                bottom: 26,
              ),
              child: const CaseOverviewCard(),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNav(currentIndex: 3),
    );
  }
}

class CaseOverviewCard extends StatelessWidget {
  const CaseOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(23, 23, 23, 24),
      decoration: BoxDecoration(
        color: OpenReclamationPage.cardPink,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CaseOverviewTitle(),

          SizedBox(height: 25),

          SubjectCard(),

          SizedBox(height: 25),

          Text(
            'CONVERSATION THREAD',
            style: TextStyle(
              color: OpenReclamationPage.textSoft,
              fontSize: 7.5,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.1,
            ),
          ),

          SizedBox(height: 17),

          MessageBubble(
            avatarType: AvatarType.dark,
            name: 'Marcus Thorpe',
            time: '10:45 AM',
            message:
                'I’ve verified the tax rate\ndiscrepancy. It appears the system\nis still using 2023 rates for this\nspecific corridor.',
          ),

          SizedBox(height: 13),

          MessageBubble(
            avatarType: AvatarType.light,
            name: 'Financial Ops',
            time: '11:12 AM',
            message:
                'Awaiting final approval from\nregional management to override.',
          ),

          SizedBox(height: 26),

          InternalNoteBox(),

          SizedBox(height: 17),

          ActionButtonsRow(),
        ],
      ),
    );
  }
}

class CaseOverviewTitle extends StatelessWidget {
  const CaseOverviewTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Case Overview',
          style: TextStyle(
            color: OpenReclamationPage.textDark,
            fontSize: 17,
            fontWeight: FontWeight.w900,
            letterSpacing: -0.3,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.more_vert_rounded,
            size: 17,
            color: OpenReclamationPage.textDark,
          ),
        ),
      ],
    );
  }
}

class SubjectCard extends StatelessWidget {
  const SubjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: OpenReclamationPage.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(
              color: OpenReclamationPage.softPink,
              borderRadius: BorderRadius.circular(3),
            ),
            child: const Icon(
              Icons.description_outlined,
              color: OpenReclamationPage.red,
              size: 17,
            ),
          ),

          const SizedBox(width: 13),

          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SUBJECT',
                style: TextStyle(
                  color: OpenReclamationPage.textSoft,
                  fontSize: 7,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Branch Office Zurich Tax\nDiscrepancy Inquiry',
                style: TextStyle(
                  color: OpenReclamationPage.textDark,
                  fontSize: 9.2,
                  height: 1.15,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum AvatarType {
  dark,
  light,
}

class MessageBubble extends StatelessWidget {
  final AvatarType avatarType;
  final String name;
  final String time;
  final String message;

  const MessageBubble({
    super.key,
    required this.avatarType,
    required this.name,
    required this.time,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MessageAvatar(type: avatarType),

        const SizedBox(width: 12),

        Expanded(
          child: Container(
            padding: const EdgeInsets.fromLTRB(13, 12, 13, 12),
            decoration: BoxDecoration(
              color: OpenReclamationPage.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: OpenReclamationPage.textDark,
                        fontSize: 8.6,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      time,
                      style: const TextStyle(
                        color: OpenReclamationPage.textSoft,
                        fontSize: 7.6,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 5),

                Text(
                  message,
                  style: const TextStyle(
                    color: OpenReclamationPage.textSoft,
                    fontSize: 8.8,
                    height: 1.35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MessageAvatar extends StatelessWidget {
  final AvatarType type;

  const MessageAvatar({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = type == AvatarType.dark;

    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: dark ? const Color(0xFF1F2E35) : const Color(0xFFD7EEE9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 6,
            child: Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                color: dark
                    ? const Color(0xFFDFA66F)
                    : const Color(0xFFE7C4A4),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 13,
            child: Container(
              width: 12,
              height: 8,
              decoration: BoxDecoration(
                color: dark
                    ? const Color(0xFF151A1D)
                    : OpenReclamationPage.green,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InternalNoteBox extends StatelessWidget {
  const InternalNoteBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(14, 13, 14, 10),
      decoration: BoxDecoration(
        color: OpenReclamationPage.softPink,
        borderRadius: BorderRadius.circular(2),
      ),
      alignment: Alignment.topLeft,
      child: const Text(
        'Draft your response or internal\nnote...',
        style: TextStyle(
          color: Color(0xFFD6B2B6),
          fontSize: 10,
          height: 1.3,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ActionButtonsRow extends StatelessWidget {
  const ActionButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          flex: 6,
          child: RespondButton(),
        ),
        SizedBox(width: 8),
        Expanded(
          flex: 4,
          child: CommentButton(),
        ),
      ],
    );
  }
}

class RespondButton extends StatelessWidget {
  const RespondButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: OpenReclamationPage.red,
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.reply_rounded,
            color: Colors.white,
            size: 13,
          ),
          SizedBox(width: 6),
          Text(
            'Respond',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class CommentButton extends StatelessWidget {
  const CommentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: OpenReclamationPage.softPink,
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat_bubble_outline_rounded,
            color: OpenReclamationPage.darkRed,
            size: 12,
          ),
          SizedBox(width: 5),
          Text(
            'Comment',
            style: TextStyle(
              color: OpenReclamationPage.darkRed,
              fontSize: 10,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}