import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninPhoneForm extends StatelessWidget {
  const SigninPhoneForm({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title!,
            style: txtTheme.headline5,
          ),
          body(),
          const SizedBox(height: 15),
          action(),
        ],
      ),
    );
  }

  static Widget body() {
    final txtTheme = Get.textTheme;
    final theme = Get.theme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 37),
        TextFormField(
          initialValue: '',
          keyboardType: TextInputType.name,
          maxLength: 20,
          onChanged: (value) {},
          onFieldSubmitted: (value) {},
          validator: (value) {},
          decoration: const InputDecoration(
            labelText: 'Name',
            errorText: 'name must be hight than 20',
            prefixIcon: Icon(Icons.person_outlined),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          initialValue: '',
          obscureText: true,
          obscuringCharacter: '*',
          keyboardType: TextInputType.phone,
          onChanged: (value) {},
          onFieldSubmitted: (value) {},
          validator: (value) {},
          decoration: const InputDecoration(
            labelText: 'Phone Number',
            errorText: 'Your Phone is Invalid',
            prefixIcon: Icon(Icons.phone_rounded),
            prefixText: '+62',
          ),
        ),
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
            style: txtTheme.caption?.copyWith(color: theme.disabledColor),
            text: 'By continuing you agree to our ',
            children: [
              WidgetSpan(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Terms of Service ',
                    style: txtTheme.caption
                        ?.copyWith(color: theme.colorScheme.inversePrimary),
                  ),
                ),
              ),
              const TextSpan(text: 'and '),
              WidgetSpan(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Privacy Policy.',
                    style: txtTheme.caption
                        ?.copyWith(color: theme.colorScheme.inversePrimary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static Widget action() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text('Verify Phone Number'),
    );
  }
}
