import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../constants/custom_appbar.dart';
import '../../constants/custom_text_field.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? inquiryType;
  String? complaintTitle;

  final List<String> inquiryOptions = ['استفسار', 'طلب إضافة منتج جديد'];
  final List<String> complaintTitles = [
    'المياة',
    'المشروبات الغازية',
    'الألبان',
    'القهوة',
    'النسكافية',
    'الشاي',
    'العصائر',
    'شيبسي',
    'لبان',
    'نودلز',
    'شيكولاته',
    'البسكويت',
    'زبادي',
    'أيس كريم',
    'الجبن',
    'النوتيلا',
    'البهارات',
    'منتجات إضافية',
    'الحليب',
    'الزيوت و الشامبو',
    'كورن فليكس',
    'الحفاضات',
    'مزيل العرق',
    'الشامبو',
    'البرفيوم و اللوشن',
    'العناية بالفم و الأسنان'
  ];

  Future<void> _sendToTelegram(BuildContext context) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    if (inquiryType == 'طلب إضافة منتج جديد' && complaintTitle == null) {
      _showCustomDialog(
        context,
        title: 'خطأ',
        message: 'يرجى اختيار اسم المنتج',
        icon: Icons.error,
        iconColor: Colors.red,
      );
      return;
    }

    const String botToken = '8100092622:AAELF65fSmUSc8H9UUcrYP-Fk5ESMBqfNBM';
    const String chatId = '-1002467130525';
    final String message = '''
الاسم: ${nameController.text}
البريد الإلكتروني: ${emailController.text}
نوع الطلب: $inquiryType
اسم المنتج المراد إضافته: ${complaintTitle ?? "لا يوجد"}
الوصف: ${descriptionController.text}
    ''';

    final Uri url = Uri.parse(
        'https://api.telegram.org/bot$botToken/sendMessage?chat_id=$chatId&text=${Uri.encodeComponent(message)}');

    try {
      final response = await http.get(url);

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (response.statusCode == 200) {
          _showCustomDialog(
            context,
            title: 'تم إرسال البيانات',
            message: 'تم الإرسال بنجاح',
            icon: Icons.check_circle,
            iconColor: Colors.green,
          );
          _clearTextFields();
        } else {
          _handleError(
            context,
            'Failed to send data: ${response.statusCode}',
          );
        }
      });
    } catch (e) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _handleError(context, e.toString());
      });
    }
  }

  void _handleError(BuildContext context, String error) {
    if (kDebugMode) {
      print('Error: $error');
    }
    _showCustomDialog(
      context,
      title: 'خطأ',
      message: 'حدث خطأ.. حاول مرة أخرى',
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
      builder: (BuildContext dialogContext) {
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
                  Navigator.of(dialogContext).pop();
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
    setState(() {
      inquiryType = null;
      complaintTitle = null;
    });
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
                  _buildInquiryDropdown(),
                  const SizedBox(height: 15),
                  if (inquiryType == 'طلب إضافة منتج جديد')
                    _buildComplaintDropdown(),
                  const SizedBox(height: 20),
                  _buildDescriptionField(),
                  const SizedBox(height: 15),
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

  Widget _buildInquiryDropdown() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: _styledDropdown(
        value: inquiryType,
        items: inquiryOptions,
        hintText: 'اختر نوع الطلب',
        onChanged: (value) {
          setState(() {
            inquiryType = value;
            if (value != 'طلب إضافة منتج جديد') {
              complaintTitle = null;
            }
          });
        },
        validator: (value) => value == null ? 'يرجى اختيار نوع الطلب' : null,
      ),
    );
  }

  Widget _buildComplaintDropdown() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: _styledDropdown(
        value: complaintTitle,
        items: complaintTitles,
        hintText: 'اختر القسم الذي تريد إضافة المنتج إليه',
        onChanged: (value) {
          setState(() {
            complaintTitle = value;
          });
        },
        validator: (value) => value == null
            ? 'يرجى اختيار القسم الذي تريد إضافة المنتج إليه'
            : null,
      ),
    );
  }

  Widget _buildSendButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => _sendToTelegram(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
        ),
        child: const Text(
          'إرسال الطلب',
          style: TextStyle(color: Colors.white, fontFamily: 'Cairo'),
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
    }
    if (!RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
        .hasMatch(value)) {
      return 'يرجى إدخال بريد إلكتروني صالح';
    }
    return null;
  }
}

Widget _styledDropdown({
  required String? value,
  required List<String> items,
  required String hintText,
  required Function(String?) onChanged,
  String? Function(String?)? validator,
}) {
  return SizedBox(
    width: 347,
    height: 48,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.red,
          width: 1.5,
        ),
      ),
      child: DropdownButtonFormField<String>(
        value: value,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 8),
        ),
        hint: Align(
          alignment: Alignment.centerRight,
          child: Text(
            hintText,
            style: const TextStyle(fontFamily: 'Cairo', fontSize: 14),
          ),
        ),
        onChanged: onChanged,
        validator: validator,
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      item,
                      style: const TextStyle(
                          color: Color(0xff929BAB),
                          fontFamily: 'Cairo',
                          fontSize: 14),
                    ),
                  ),
                ))
            .toList(),
        icon: const Icon(Icons.arrow_drop_down, color: Colors.red),
        style: const TextStyle(
            fontFamily: 'Cairo', fontSize: 14, color: Colors.black),
        dropdownColor: Colors.white,
      ),
    ),
  );
}
