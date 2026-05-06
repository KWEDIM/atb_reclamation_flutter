import 'package:flutter/material.dart';
import '../widgets/app_bottom_nav.dart';

class NewReclamationPage extends StatelessWidget {
  const NewReclamationPage({super.key});

  static const Color bg = Color(0xFFFFF8F7);
  static const Color white = Color(0xFFFFFFFF);
  static const Color cardPink = Color(0xFFFFE9EB);
  static const Color softPink = Color(0xFFFFF0F2);
  static const Color red = Color(0xFFC4003B);
  static const Color darkRed = Color(0xFF8B0023);
  static const Color textDark = Color(0xFF271818);
  static const Color textSoft = Color(0xFF6F575B);
  static const Color borderPink = Color(0xFFF0BFC5);
  static const Color placeholderPink = Color(0xFFE7B8BD);

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
              padding: const EdgeInsets.only(bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  NewReclamationHeader(),

                  SizedBox(height: 34),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      'SERVICE REQUEST',
                      style: TextStyle(
                        color: NewReclamationPage.red,
                        fontSize: 7.5,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),

                  SizedBox(height: 6),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      'New Reclamation',
                      style: TextStyle(
                        color: NewReclamationPage.textDark,
                        fontSize: 23,
                        height: 1,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -0.8,
                      ),
                    ),
                  ),

                  SizedBox(height: 35),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: SubmissionGuideCard(),
                  ),

                  SizedBox(height: 44),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: ReclamationFormCard(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const AppBottomNav(currentIndex: 2),
    );
  }
}

class NewReclamationHeader extends StatelessWidget {
  const NewReclamationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      padding: const EdgeInsets.only(left: 17, right: 18),
      color: const Color(0xFFFFF6F5),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/accueil');
            },
            child: const Icon(
              Icons.arrow_back_rounded,
              size: 18,
              color: NewReclamationPage.red,
            ),
          ),
          const SizedBox(width: 18),
          const Text(
            'User1',
            style: TextStyle(
              color: NewReclamationPage.red,
              fontSize: 11,
              fontWeight: FontWeight.w900,
              letterSpacing: -0.2,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.notifications_none_rounded,
            size: 15,
            color: NewReclamationPage.textDark,
          ),
          const SizedBox(width: 16),
          Container(
            width: 21,
            height: 21,
            decoration: BoxDecoration(
              color: const Color(0xFF20272B),
              borderRadius: BorderRadius.circular(7),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 13,
            ),
          ),
        ],
      ),
    );
  }
}

class SubmissionGuideCard extends StatelessWidget {
  const SubmissionGuideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 327,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(23, 24, 23, 21),
      decoration: BoxDecoration(
        color: NewReclamationPage.cardPink,
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Submission Guide',
            style: TextStyle(
              color: NewReclamationPage.textDark,
              fontSize: 12,
              fontWeight: FontWeight.w900,
              letterSpacing: -0.1,
            ),
          ),

          SizedBox(height: 8),

          Text(
            'Provide precise details for expedited\nprocessing. High-priority claims are\nreviewed within 4 business hours.',
            style: TextStyle(
              color: NewReclamationPage.textSoft,
              fontSize: 9.2,
              height: 1.45,
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 23),

          ClassificationRow(),

          SizedBox(height: 19),

          GuideImagePlaceholder(),
        ],
      ),
    );
  }
}

class ClassificationRow extends StatelessWidget {
  const ClassificationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 31,
          width: 31,
          decoration: BoxDecoration(
            color: NewReclamationPage.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Icon(
            Icons.category_outlined,
            size: 16,
            color: NewReclamationPage.red,
          ),
        ),
        const SizedBox(width: 14),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CLASSIFICATION',
              style: TextStyle(
                color: NewReclamationPage.textSoft,
                fontSize: 7.5,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.9,
              ),
            ),
            SizedBox(height: 3),
            Text(
              'Required Selection',
              style: TextStyle(
                color: NewReclamationPage.textDark,
                fontSize: 9,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class GuideImagePlaceholder extends StatelessWidget {
  const GuideImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 143,
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF17100E),
            Color(0xFFB98B55),
            Color(0xFFF8F4E9),
            Color(0xFFD7C4A2),
            Color(0xFF1A1210),
          ],
          stops: [0.0, 0.22, 0.50, 0.74, 1.0],
        ),
      ),
      child: CustomPaint(
        painter: ElevatorLikeImagePainter(),
      ),
    );
  }
}

class ElevatorLikeImagePainter extends CustomPainter {
  const ElevatorLikeImagePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final darkLine = Paint()
      ..color = const Color(0xFF1B1716)
      ..strokeWidth = 1;

    final softLine = Paint()
      ..color = Colors.white.withOpacity(0.65)
      ..strokeWidth = 1;

    final shadow = Paint()
      ..color = Colors.black.withOpacity(0.28)
      ..style = PaintingStyle.fill;

    canvas.drawRect(
      Rect.fromLTWH(0, size.height - 18, size.width, 18),
      shadow,
    );

    for (double x in [
      size.width * 0.26,
      size.width * 0.36,
      size.width * 0.50,
      size.width * 0.64,
      size.width * 0.74,
    ]) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), darkLine);
    }

    for (double x in [
      size.width * 0.43,
      size.width * 0.57,
    ]) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), softLine);
    }

    final floorPaint = Paint()
      ..color = Colors.white.withOpacity(0.35)
      ..style = PaintingStyle.fill;

    final floorPath = Path()
      ..moveTo(size.width * 0.25, size.height)
      ..lineTo(size.width * 0.42, size.height * 0.58)
      ..lineTo(size.width * 0.58, size.height * 0.58)
      ..lineTo(size.width * 0.77, size.height)
      ..close();

    canvas.drawPath(floorPath, floorPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ReclamationFormCard extends StatelessWidget {
  const ReclamationFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(23, 24, 23, 32),
      decoration: BoxDecoration(
        color: NewReclamationPage.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormLabel('CATEGORY'),

          SizedBox(height: 13),

          SelectCategoryBox(),

          SizedBox(height: 25),

          FormLabel('PRIORITY LEVEL'),

          SizedBox(height: 13),

          PrioritySelector(),

          SizedBox(height: 25),

          FormLabel('SUBJECT'),

          SizedBox(height: 11),

          SubjectInputBox(),

          SizedBox(height: 25),

          FormLabel('DESCRIPTION'),

          SizedBox(height: 11),

          DescriptionInputBox(),

          SizedBox(height: 28),

          FormLabel('EVIDENCE & DOCUMENTATION'),

          SizedBox(height: 15),

          UploadEvidenceBox(),

          SizedBox(height: 29),

          Divider(
            height: 1,
            color: Color(0xFFF4EAEA),
          ),

          SizedBox(height: 27),

          PolicyInfoRow(),

          SizedBox(height: 38),

          SubmitButton(),
        ],
      ),
    );
  }
}

class FormLabel extends StatelessWidget {
  final String text;

  const FormLabel(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: NewReclamationPage.textSoft,
        fontSize: 8,
        fontWeight: FontWeight.w900,
        letterSpacing: 1.3,
      ),
    );
  }
}

class SelectCategoryBox extends StatelessWidget {
  const SelectCategoryBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: const BoxDecoration(
        color: NewReclamationPage.softPink,
        border: Border(
          bottom: BorderSide(
            color: NewReclamationPage.borderPink,
            width: 1.4,
          ),
        ),
      ),
      child: const Row(
        children: [
          Text(
            'Select Category',
            style: TextStyle(
              color: NewReclamationPage.textDark,
              fontSize: 9.3,
              fontWeight: FontWeight.w700,
            ),
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 17,
            color: NewReclamationPage.textSoft,
          ),
          SizedBox(width: 13),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 17,
            color: NewReclamationPage.textSoft,
          ),
        ],
      ),
    );
  }
}

class PrioritySelector extends StatelessWidget {
  const PrioritySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        PriorityButton(
          label: 'LOW',
          active: false,
        ),
        SizedBox(width: 8),
        PriorityButton(
          label: 'MEDIUM',
          active: false,
        ),
        SizedBox(width: 8),
        PriorityButton(
          label: 'HIGH',
          active: true,
        ),
      ],
    );
  }
}

class PriorityButton extends StatelessWidget {
  final String label;
  final bool active;

  const PriorityButton({
    super.key,
    required this.label,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 64,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: active ? Colors.white : NewReclamationPage.softPink,
        border: Border.all(
          color: active ? NewReclamationPage.red : Colors.transparent,
          width: 1.3,
        ),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: active
              ? NewReclamationPage.red
              : NewReclamationPage.textSoft,
          fontSize: 7.5,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}

class SubjectInputBox extends StatelessWidget {
  const SubjectInputBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(13, 13, 13, 8),
      decoration: const BoxDecoration(
        color: NewReclamationPage.softPink,
        border: Border(
          bottom: BorderSide(
            color: NewReclamationPage.borderPink,
            width: 1.4,
          ),
        ),
      ),
      alignment: Alignment.topLeft,
      child: const Text(
        'Summary of the reclamation\nrequest',
        style: TextStyle(
          color: NewReclamationPage.placeholderPink,
          fontSize: 12,
          height: 1.25,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class DescriptionInputBox extends StatelessWidget {
  const DescriptionInputBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(13, 15, 13, 8),
      decoration: const BoxDecoration(
        color: NewReclamationPage.softPink,
        border: Border(
          bottom: BorderSide(
            color: NewReclamationPage.borderPink,
            width: 1.4,
          ),
        ),
      ),
      alignment: Alignment.topLeft,
      child: const Text(
        'Provide a detailed narrative of\nthe situation...',
        style: TextStyle(
          color: NewReclamationPage.placeholderPink,
          fontSize: 12,
          height: 1.35,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class UploadEvidenceBox extends StatelessWidget {
  const UploadEvidenceBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 169,
      width: double.infinity,
      decoration: BoxDecoration(
        color: NewReclamationPage.softPink,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: NewReclamationPage.borderPink,
          width: 1.2,
          style: BorderStyle.solid,
        ),
      ),
      child: CustomPaint(
        painter: DashedBorderPainter(
          color: NewReclamationPage.borderPink,
          radius: 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                color: const Color(0xFFFFDDE2),
                borderRadius: BorderRadius.circular(9),
              ),
              child: const Icon(
                Icons.cloud_upload_outlined,
                color: NewReclamationPage.red,
                size: 25,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Drop files here or',
              style: TextStyle(
                color: NewReclamationPage.textDark,
                fontSize: 12,
                fontWeight: FontWeight.w900,
              ),
            ),

            const SizedBox(height: 2),

            const Text(
              'browse',
              style: TextStyle(
                color: NewReclamationPage.red,
                fontSize: 12,
                fontWeight: FontWeight.w900,
              ),
            ),

            const SizedBox(height: 9),

            const Text(
              'PDF, JPG, PNG UP TO 10MB',
              style: TextStyle(
                color: NewReclamationPage.textSoft,
                fontSize: 8.5,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DashedBorderPainter extends CustomPainter {
  final Color color;
  final double radius;

  const DashedBorderPainter({
    required this.color,
    required this.radius,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.2
      ..style = PaintingStyle.stroke;

    const dashWidth = 5.0;
    const dashSpace = 4.0;

    final rect = RRect.fromRectAndRadius(
      Offset.zero & size,
      Radius.circular(radius),
    );

    final path = Path()..addRRect(rect);
    final metrics = path.computeMetrics();

    for (final metric in metrics) {
      double distance = 0;
      while (distance < metric.length) {
        final next = distance + dashWidth;
        canvas.drawPath(
          metric.extractPath(distance, next),
          paint,
        );
        distance = next + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class PolicyInfoRow extends StatelessWidget {
  const PolicyInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Icon(
          Icons.info_outline_rounded,
          color: NewReclamationPage.red,
          size: 17,
        ),
        SizedBox(width: 16),
        Expanded(
          child: Text(
            'By submitting, you agree to the internal\naudit review policy.',
            style: TextStyle(
              color: NewReclamationPage.textSoft,
              fontSize: 9,
              height: 1.3,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: NewReclamationPage.red,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: NewReclamationPage.red.withOpacity(0.16),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: const Text(
        'Submit Reclamation',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}