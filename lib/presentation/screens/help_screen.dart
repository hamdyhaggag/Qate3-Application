import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../constants/custom_appbar.dart';
import '../../constants/custom_text_field.dart';

class HelpScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  HelpScreen({super.key});

  Future<void> _sendToTelegram(BuildContext context) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    const String botToken = '8100092622:AAELF65fSmUSc8H9UUcrYP-Fk5ESMBqfNBM';
    const String chatId = '-1002467130525';
    final String message = '''
الاسم: ${nameController.text}
البريد الإلكتروني: ${emailController.text}
الوصف: ${descriptionController.text}
    ''';

    final Uri url = Uri.parse(
        'https://api.telegram.org/bot$botToken/sendMessage?chat_id=$chatId&text=${Uri.encodeComponent(message)}');

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        _showCustomDialog(
          context,
          title: 'تم إرسال البيانات',
          message: 'تم الإرسال بنجاح.',
          icon: Icons.check_circle,
          iconColor: Colors.green,
        );
        _clearTextFields();
      } else {
        _handleError(context, 'Failed to send data: ${response.statusCode}');
      }
    } catch (e) {
      _handleError(context, e.toString());
    }
  }

  void _handleError(BuildContext context, String error) {
    if (kDebugMode) {
      print('Error: $error');
    }
    _showCustomDialog(
      context,
      title: 'خطأ',
      message: 'حدث خطأ. حاول مرة أخرى.',
      icon: Icons.error,
      iconColor: Colors.red,
    );
  }

  void _showCustomDialog(
    BuildContext context, {
    required String title,
    required String message,
    required IconData icon,
    required Color iconColor,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          contentPadding: const EdgeInsets.all(16.0),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50, color: iconColor),
              const SizedBox(height: 16),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                ),
              ),
              const SizedBox(height: 8),
              Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  fontFamily: 'Cairo',
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close dialog
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text(
                  'موافق',
                  style: TextStyle(color: Colors.white, fontFamily: 'Cairo'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _clearTextFields() {
    nameController.clear();
    emailController.clear();
    descriptionController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'للإقتراحات و الشكاوي', isHome: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),
                  const SizedBox(height: 20),
                  _buildNameField(),
                  const SizedBox(height: 15),
                  _buildEmailField(),
                  const SizedBox(height: 15),
                  _buildDescriptionField(),
                  const SizedBox(height: 20),
                  _buildSendButton(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Center(
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
    );
  }

  Widget _buildNameField() {
    return CustomTextField(
      controller: nameController,
      hintText: 'الاسم',
      prefixIcon: const Icon(Icons.person),
      validator: (value) => _validateInput(value, 'الاسم مطلوب'),
      maxLines: 1,
    );
  }

  Widget _buildEmailField() {
    return CustomTextField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      hintText: 'البريد الإلكتروني',
      prefixIcon: const Icon(Icons.email),
      validator: (value) => _validateEmail(value),
      maxLines: 1,
    );
  }

  Widget _buildDescriptionField() {
    return DescriptionTextField(
      controller: descriptionController,
      hintText: 'وصف المشكلة أو الطلب',
      prefixIcon: const Icon(Icons.description),
      contentPadding: const EdgeInsets.all(16),
      validator: (value) => _validateInput(value, 'الوصف مطلوب'),
    );
  }

  Widget _buildSendButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          await _sendToTelegram(context);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          backgroundColor: Colors.red,
        ),
        child: const Text(
          'إرسال',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
            fontFamily: 'Cairo',
          ),
        ),
      ),
    );
  }

  String? _validateInput(String? value, String errorMessage) {
    if (value == null || value.isEmpty) {
      return errorMessage;
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'البريد الإلكتروني مطلوب';
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'البريد الإلكتروني غير صالح';
    }
    return null;
  }
}
