import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:email_validator/email_validator.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  ContactUsScreenState createState() => ContactUsScreenState();
}

class ContactUsScreenState extends State<ContactUsScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  String? _validateEmail(String value) {
    if (!EmailValidator.validate(value)) {
      return 'يُرجى إدخال بريد إلكتروني صحيح';
    }
    return null;
  }

  Future<void> _sendEmail() async {
    const String subject = 'الإقتراحات و الشكاوي بخصوص تطبيق قاطع';
    final String body =
        'Name: ${_nameController.text}\nEmail: ${_emailController.text}\nMessage: ${_messageController.text}';

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'hamdyhaggag74@gmail.com',
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );

    try {
      if (await canLaunchUrl(emailLaunchUri)) {
        await launchUrl(emailLaunchUri);
      } else {
        throw 'Could not launch email';
      }
    } catch (e) {
      _showErrorDialog('خطأ', 'الرجاء إدخال بريد إلكتروني صالح');
    }
  }

  void _showErrorDialog(String title, String content) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('حسناً'),
          ),
        ],
      ),
    );
  }

  void _handleSubmit() {
    if (_validateEmail(_emailController.text) == null) {
      _sendEmail();
    } else {
      _showErrorDialog(
          'بريد إلكتروني غير صحيح', 'الرجاء إدخال بريد إلكتروني صالح');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('تواصل معنا'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTextField(_nameController, 'الإسم'),
              const SizedBox(height: 16.0),
              _buildEmailField(),
              const SizedBox(height: 16.0),
              _buildTextField(_messageController, 'الرسالة', maxLines: 6),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: _handleSubmit,
                child: const Text('إرسال'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String labelText,
      {int maxLines = 1}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: labelText),
      maxLines: maxLines,
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      controller: _emailController,
      decoration: const InputDecoration(labelText: 'البريد الإلكتروني'),
      keyboardType: TextInputType.emailAddress,
      validator: (value) =>
          _validateEmail(value ?? 'البريد الإلكتروني غير صحيح'),
    );
  }
}
