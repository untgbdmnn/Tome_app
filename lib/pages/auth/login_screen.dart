import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tome_app/widgets/logo.dart'; // Pastikan path ini benar

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  bool _isPasswordVisible = false;
  bool _rememberMe = false;
  String _selectedSection = 'login';

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SingleChildScrollView(
        // Perbaikan: Seluruh body dibungkus dengan SingleChildScrollView
        // untuk memastikan halaman dapat di-scroll saat keyboard muncul.
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [
                      Colors.blue.shade800,
                      Colors.blue.shade500,
                      Colors.blue.shade200,
                    ],
            ),
          ),
          child: Column(
            // Perbaikan: Menggunakan Column untuk mengatur posisi vertikal.
            // mainAxisAlignment.spaceBetween akan mendorong form ke bagian bawah.
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Bagian atas (logo dan teks)
              Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TomeLogo(
                      fill: '#fff',
                      altStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      subAltStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Get Started now',
                      style: Theme.of(context).textTheme.headlineLarge!
                          .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Create an account or log in to explore about our app',
                      style: Theme.of(context).textTheme.bodyLarge!
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
              // Panel form
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: isDarkMode ? Colors.grey.shade900 : Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: _selectedSection == 'login'
                    ? _loginSection(context)
                    : _registerSection(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _switchSection(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: isDarkMode ? Colors.grey.shade800 : Colors.grey[200],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: _selectedSection == 'login'
                    ? (isDarkMode ? Colors.blue.shade700 : Colors.white)
                    : Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  _selectedSection = 'login';
                });
              },
              child: Text(
                'Log In',
                style: TextStyle(
                  color: _selectedSection == 'login'
                      ? (isDarkMode ? Colors.white : Colors.black)
                      : (isDarkMode ? Colors.white : Colors.black),
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: _selectedSection == 'register'
                    ? (isDarkMode ? Colors.blue.shade700 : Colors.white)
                    : Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  _selectedSection = 'register';
                });
              },
              child: Text(
                'Register',
                style: TextStyle(
                  color: _selectedSection == 'register'
                      ? (isDarkMode ? Colors.white : Colors.black)
                      : (isDarkMode ? Colors.white : Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loginSection(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        _switchSection(context),
        const SizedBox(height: 20),
        _buildTextField(
          context,
          label: 'Email',
          hint: 'Enter your email',
          icon: Icons.email,
          controller: _emailController,
        ),
        const SizedBox(height: 20),
        _buildTextField(
          context,
          label: 'Password',
          hint: '********',
          icon: Icons.password,
          controller: _passwordController,
          isPassword: true,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                  },
                ),
                Text(
                  'Remember me',
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Forgot Password ?',
                style: TextStyle(
                  color: isDarkMode ? Colors.blue.shade200 : Colors.blue,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Log In',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Or',
          style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
        ),
        const SizedBox(height: 10),
        _buildSocialButton(
          context,
          text: 'Continue with Google',
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _registerSection(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        _switchSection(context),
        const SizedBox(height: 20),
        _buildTextField(
          context,
          label: 'Username',
          hint: 'Enter your username',
          icon: Icons.person,
          controller: _usernameController,
        ),
        const SizedBox(height: 20),
        _buildTextField(
          context,
          label: 'Email',
          hint: 'Enter your email',
          icon: Icons.email,
          controller: _emailController,
        ),
        const SizedBox(height: 20),
        _buildTextField(
          context,
          label: 'Password',
          hint: '********',
          icon: Icons.password,
          controller: _passwordController,
          isPassword: true,
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Register',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Or',
          style:
              TextStyle(color: isDarkMode ? Colors.white : Colors.black),
        ),
        const SizedBox(height: 10),
        _buildSocialButton(
          context,
          text: 'Continue with Google',
          onPressed: () {}, // Placeholder
        ),
      ],
    );
  }

  Widget _buildTextField(
    BuildContext context, {
    required String label,
    required String hint,
    required IconData icon,
    required TextEditingController controller,
    bool isPassword = false,
  }) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: isDarkMode ? Colors.white : Colors.black,
              ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: isPassword && !_isPasswordVisible,
          style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: isDarkMode ? Colors.grey.shade400 : Colors.grey,
            ),
            prefixIcon: Icon(
              icon,
              color: isDarkMode ? Colors.grey.shade400 : Colors.grey,
            ),
            suffixIcon: isPassword
                ? IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: isDarkMode ? Colors.grey.shade400 : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: isDarkMode ? Colors.grey.shade800 : Colors.grey[200],
          ),
        ),
      ],
    );
  }

  Widget _buildSocialButton(
    BuildContext context, {
    required String text,
    IconData? icon,
    required VoidCallback onPressed,
  }) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: BorderSide(
            color: isDarkMode ? Colors.grey.shade600 : Colors.grey,
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(icon, color: isDarkMode ? Colors.white : Colors.black),
              const SizedBox(width: 10),
            ],
            Text(
              text,
              style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}