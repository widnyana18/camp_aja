import 'package:camp_aja/persentation/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifySmsCodeForm extends StatefulWidget {
  const VerifySmsCodeForm({Key? key}) : super(key: key);

  @override
  State<VerifySmsCodeForm> createState() => _VerifySmsCodeFormState();
}

class _VerifySmsCodeFormState extends State<VerifySmsCodeForm> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme;
    final txtTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Verify Account',
          style: txtTheme.headline5,
        ),
        const SizedBox(height: 12),
        Text(
          'Enter the SMS code in your phone sent to the number',
          style: txtTheme.bodyText1?.copyWith(color: theme.disabledColor),
        ),
        const SizedBox(height: 37),
        Text('+62*********84', style: txtTheme.bodyText2),
        const SizedBox(height: 20),
        Text('05:47',
            style: txtTheme.bodyText2?.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(height: 30),
        SizedBox(
          height: 68,
          child: Pinput(
            length: 5,
            listenForMultipleSmsOnAndroid: true,
            onCompleted: (pin) {},
            androidSmsAutofillMethod:
                AndroidSmsAutofillMethod.smsUserConsentApi,
            controller: controller,
            focusNode: focusNode,
            defaultPinTheme: AppTheme.defaultPin,
            focusedPinTheme: AppTheme.focusPin,
            errorText: 'Code incorrect',
            errorPinTheme: AppTheme.errorPin,
          ),
        ),
        const SizedBox(height: 30),
        RichText(
          text: TextSpan(
            style: txtTheme.bodyText2?.copyWith(color: theme.disabledColor),
            text: "Didn't recieve code? ",
            children: [
              WidgetSpan(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend',
                    style: txtTheme.bodyText2
                        ?.copyWith(color: color.inversePrimary),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Submit Account'),
        ),
      ],
    );
  }
}
