import 'package:devnology/view/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'should show a text',
    (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TitleWidget(
              color: Colors.white,
              title: 'TESTE',
              size: 15,
            ),
          ),
        ),
      );
      expect(find.text('TESTE'), findsOneWidget);
    },
  );
}
