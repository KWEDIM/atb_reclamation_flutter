import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF8B0023);
  static const primaryLight = Color(0xFFF5D6DB);
  static const background = Color(0xFFF3ECEC);
  static const textDark = Color(0xFF2B2B2B);
  static const textGrey = Color(0xFF9E9E9E);
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscurePassword = true;
  bool isLoading = false;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  /// 🔐 LOGIN FUNCTION
  void login() async {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }

    setState(() => isLoading = true);

    await Future.delayed(const Duration(seconds: 1)); // simulation API

    setState(() => isLoading = false);

    // 👉 navigation vers accueil
    Navigator.pushReplacementNamed(context, '/accueil');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 420),
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// HEADER
                Row(
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.account_balance,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "ATB RECLAMATION",
                          style: TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "DEPARTMENT OF IT",
                          style: TextStyle(
                            color: AppColors.textGrey,
                            fontSize: 10,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                /// TITLE
                const Text(
                  "Employee Portal",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textDark,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Verify your credentials to login.",
                  style: TextStyle(fontSize: 14, color: AppColors.textGrey),
                ),

                const SizedBox(height: 25),

                /// USERNAME
                buildLabel("USERNAME"),
                const SizedBox(height: 6),
                TextField(
                  controller: usernameController,
                  decoration: inputDecoration(
                    hint: "myUserName1",
                    icon: Icons.person_outline,
                  ),
                ),

                const SizedBox(height: 18),

                /// PASSWORD
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "PASSWORD",
                      style: TextStyle(
                        fontSize: 11,
                        color: AppColors.textGrey,
                        letterSpacing: 1.3,
                      ),
                    ),
                    Text(
                      "REQUEST RESET",
                      style: TextStyle(
                        fontSize: 11,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                TextField(
                  controller: passwordController,
                  obscureText: obscurePassword,
                  decoration: inputDecoration(
                    hint: "••••••••••",
                    icon: Icons.lock_outline,
                    suffix: IconButton(
                      icon: Icon(
                        obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 28),

                /// BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: isLoading ? null : login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ),

                const SizedBox(height: 30),

                /// FOOTER
                Column(
                  children: const [
                    Divider(),
                    SizedBox(height: 10),
                    Text(
                      "END-TO-END ENCRYPTED TERMINAL",
                      style: TextStyle(fontSize: 10, color: AppColors.textGrey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: const Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: Text(
          "ISO 27001 CERTIFIED  •  VERSION 4.2.0-ALPHA",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 10, color: AppColors.textGrey),
        ),
      ),
    );
  }

  /// LABEL
  Widget buildLabel(String text) {
    return const Text(
      "",
      style: TextStyle(
        fontSize: 11,
        color: AppColors.textGrey,
        letterSpacing: 1.3,
      ),
    );
  }

  /// INPUT STYLE
  InputDecoration inputDecoration({
    required String hint,
    required IconData icon,
    Widget? suffix,
  }) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: Icon(icon),
      suffixIcon: suffix,
      filled: true,
      fillColor: AppColors.primaryLight,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    );
  }
}
