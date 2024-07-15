import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:email_validator/email_validator.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  String? _validateEmail(String value) {
    if (!EmailValidator.validate(value)) {
      return 'يُرجى إدخال بريد إلكتروني صحيح';
    }
    return null;
  }

  Future<void> _sendEmail(BuildContext context) async {
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
      if (await canLaunch(emailLaunchUri.toString())) {
        await launch(emailLaunchUri.toString());
      } else {
        throw 'Could not launch email';
      }
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('خطأ'),
          content: const Text('الرجاء إدخال بريد إلكتروني صالح'),
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
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'الإسم'),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _emailController,
                decoration:
                    const InputDecoration(labelText: 'البريد الإلكتروني'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) =>
                    _validateEmail(value ?? 'البريد الإلكتروني غير صحيح'),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _messageController,
                decoration: const InputDecoration(labelText: 'الرسالة'),
                maxLines: 6,
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: () {
                  if (_validateEmail(_emailController.text) == null) {
                    _sendEmail(context);
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('بريد إلكتروني غير صحيح'),
                        content: const Text('الرجاء إدخال بريد إلكتروني صالح'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: const Text('إرسال'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
