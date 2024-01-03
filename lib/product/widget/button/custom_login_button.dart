import 'package:architecture_template_v2/product/widget/button/normal_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final class CustomLoginButton extends StatefulWidget {
  const CustomLoginButton({required this.onOperation, super.key});
  final AsyncValueGetter<bool> onOperation;

  @override
  State<CustomLoginButton> createState() => _CustomLoginButtonState();
}

class _CustomLoginButtonState extends State<CustomLoginButton> {
  final ValueNotifier<bool> _isLoadingNotifier = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isLoadingNotifier,
      builder: (context, value, child) {
        if (value) return const SizedBox();
        return NormalButton(
          title: 'Login',
          onPressed: () async {
            _isLoadingNotifier.value = true;
            final response = await widget.onOperation.call();
            if (response) {
              Navigator.of(context).pop();
            }
            _isLoadingNotifier.value = false;
          },
        );
      },
    );
  }
}
