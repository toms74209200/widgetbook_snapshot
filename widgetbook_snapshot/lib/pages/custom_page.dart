import 'package:flutter/material.dart';
import 'package:widgetbook_snapshot/components/custom_button.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class CustomPage extends StatefulWidget {
  const CustomPage({super.key});

  @override
  State<CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Page'),
      ),
      body: Center(
        child: CustomButton(title: "push", onPressed: () => print("pressed")),
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'CustomPage',
  type: CustomPage,
)
CustomPage customPage(BuildContext context) {
  return const CustomPage();
}
