import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../constants/custom_appbar.dart';
import '../../constants/custom_text_field.dart';

class HelpScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'للإستفسارات و الشكاوي', isHome: true),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double fontSize = _getTextFontSize(constraints);

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.help_outline,
                            size: 120,
                            color: Colors.red,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'كيف يمكننا مساعدتك اليوم؟',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo',
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'من فضلك أدخل بياناتك الشخصية ووصف المشكلة أو الطلب الذي تحتاج مساعدتنا فيه.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                              fontFamily: 'Cairo',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Name Input
                    CustomTextField(
                      controller: nameController,
                      hintText: 'الاسم',
                      prefixIcon: const Icon(Icons.person),
                      validator: (value) =>
                          _validateInput(value, 'الاسم مطلوب'),
                      maxLines: 1,
                    ),
                    const SizedBox(height: 15),
                    // Email Input
                    CustomTextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'البريد الإلكتروني',
                      prefixIcon: const Icon(Icons.email),
                      validator: (value) => _validateEmail(value),
                      maxLines: 1,
                    ),
                    const SizedBox(height: 15),
                    // Description Input
                    DescriptionTextField(
                      controller: descriptionController,
                      hintText: 'وصف المشكلة أو الطلب',
                      prefixIcon: const Icon(Icons.description),
                      contentPadding: const EdgeInsets.all(16),
                      validator: (value) =>
                          _validateInput(value, 'الوصف مطلوب'),
                    ),
                    const SizedBox(height: 20),
                    // Send Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (kDebugMode) {
                            print('الاسم: ${nameController.text}');
                            print('البريد الإلكتروني: ${emailController.text}');
                            print('الوصف: ${descriptionController.text}');
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          backgroundColor: Colors.red,
                        ),
                        child: Text(
                          'إرسال',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: fontSize,
                            color: Colors.white,
                            fontFamily: 'Cairo',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Helper method to validate generic input
  String? _validateInput(String? value, String errorMessage) {
    if (value == null || value.isEmpty) {
      return errorMessage;
    }
    return null;
  }

  // Helper method to validate email input
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'البريد الإلكتروني مطلوب';
    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return 'البريد الإلكتروني غير صالح';
    }
    return null;
  }

  // Determines font size based on device width
  double _getTextFontSize(BoxConstraints constraints) {
    return constraints.maxWidth > 600 ? 18.0 : 15.8;
  }
}
