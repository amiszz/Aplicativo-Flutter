
import 'package:flutter_test/flutter_test.dart';
import 'package:app_flutter/main.dart';

void main() {
  testWidgets('Verifica a tela de login', (WidgetTester tester) async {
    await tester.pumpWidget(const MeuApp());

    expect(find.text('Bem-vindo!'), findsOneWidget);
    expect(find.text('E-mail'), findsOneWidget);
    expect(find.text('Senha'), findsOneWidget);
    expect(find.text('Entrar'), findsOneWidget);
  });

  testWidgets('Verifica a navegação para cadastro', (WidgetTester tester) async {
    await tester.pumpWidget(const MeuApp());

    await tester.tap(find.text('Não possui conta? Cadastre-se'));
    await tester.pumpAndSettle();

    expect(find.text('Faça seu cadastro'), findsOneWidget);
    expect(find.text('Nome completo'), findsOneWidget);
    expect(find.text('Cadastrar'), findsOneWidget);
  });
}
