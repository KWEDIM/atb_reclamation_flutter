import 'package:flutter/material.dart';
import '../widgets/app_bottom_nav.dart';

class OpenReclamationPage extends StatelessWidget {
  const OpenReclamationPage({super.key});

  static const Color bg = Color(0xFFFFF8F7);
  static const Color cardPink = Color(0xFFFFE6E8);
  static const Color softPink = Color(0xFFFFF1F2);
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFC4003B);
  static const Color darkRed = Color(0xFF8B0023);
  static const Color textDark = Color(0xFF271818);
  static const Color textSoft = Color(0xFF6F575B);
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
              padding: const EdgeInsets.only(bottom: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  OpenReclamationHeader(),

                  SizedBox(height: 18),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: CaseOverviewCard(),
                  ),
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
        children: [
          Container(
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
                      color: OpenReclamationPage.red,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 9),
          const Text(
            'User1',
            style: TextStyle(
              color: OpenReclamationPage.red,
              fontSize: 11,
              fontWeight: FontWeight.w900,
              letterSpacing: -0.2,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.notifications_none_rounded,
            size: 15,
            color: OpenReclamationPage.textDark,
          ),
        ],
      ),
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
      children: const [
        Text(
          'Case Overview',
          style: TextStyle(
            color: OpenReclamationPage.textDark,
            fontSize: 17,
            fontWeight: FontWeight.w900,
            letterSpacing: -0.3,
          ),
        ),
        Spacer(),
        Icon(
          Icons.more_vert_rounded,
          size: 17,
          color: OpenReclamationPage.textDark,
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
                color: dark ? const Color(0xFFDFA66F) : const Color(0xFFE7C4A4),
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
                color: dark ? const Color(0xFF151A1D) : const Color(0xFF006A62),
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