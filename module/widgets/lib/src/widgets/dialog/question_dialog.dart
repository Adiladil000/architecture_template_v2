import 'package:flutter/material.dart';

/// User question answer
final class QuestionAnswer {
  QuestionAnswer({required this.response});

  /// Answer text
  final String response;
}

/// Show a dialog for success
class QuestionDialog extends StatefulWidget {
  /// Constructor for dialog
  const QuestionDialog({required this.title, super.key});

  /// Title for the dialog
  final String title;

  /// Show the dialog for success
  /// This will always return [true]
  static Future<bool> show({
    required String title,
    required BuildContext context,
  }) async {
    await showDialog<bool>(
      barrierDismissible: false,
      useSafeArea: false,
      context: context,
      builder: (context) => QuestionDialog(title: title),
    );
    return true;
  }

  @override
  State<QuestionDialog> createState() => _QuestionDialogState();
}

class _QuestionDialogState extends State<QuestionDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(widget.title),
      content: const TextField(),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}
