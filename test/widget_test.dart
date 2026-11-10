import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:stateless_lab_exam/legarbes_main.dart';
import 'package:stateless_lab_exam/legarbes_shopping_cart_page.dart';

void main() {
  testWidgets('ShoppingCartPage smoke test', (WidgetTester tester) async {
    // Set screen size to avoid any viewport issues in tests
    tester.view.physicalSize = const Size(1080, 2400);
    tester.view.devicePixelRatio = 2.0;
    addTearDown(() => tester.view.resetPhysicalSize());

    await tester.pumpWidget(const MyApp());

    // Verify AppBar
    expect(find.text('My Cart'), findsOneWidget);
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
    expect(find.byIcon(Icons.shopping_bag_outlined), findsOneWidget);
    expect(find.text('3'), findsOneWidget); // Badge '3'

    // Verify Introduction Section
    expect(find.text('CAMPUS STORE'), findsOneWidget);
    expect(find.text('Ready for checkout'), findsOneWidget);
    expect(find.text('Review your items before placing your order.'), findsOneWidget);

    // Verify Delivery Information Card
    expect(find.textContaining('Deliver to'), findsOneWidget);
    expect(find.text('Change'), findsOneWidget);

    // Verify Order Items
    expect(find.text('Order Items'), findsOneWidget);
    expect(find.text('3 items'), findsOneWidget);
    expect(find.text('Wireless Mouse'), findsOneWidget);
    expect(find.text('PHP 450.00'), findsOneWidget);
    expect(find.text('USB-C Hub'), findsOneWidget);
    expect(find.text('PHP 850.00'), findsOneWidget);
    expect(find.text('Laptop Stand'), findsOneWidget);
    expect(find.text('PHP 700.00'), findsOneWidget);

    // Verify Reusable CartItemCard
    expect(find.byType(CartItemCard), findsNWidgets(3));

    // Verify Discount Banner
    expect(find.text('STUDENT10 applied'), findsOneWidget);
    expect(find.text('10% discount on items'), findsOneWidget);

    // Verify Payment Summary
    expect(find.text('Payment Summary'), findsOneWidget);
    expect(find.text('Subtotal'), findsOneWidget);
    expect(find.text('PHP 2,000.00'), findsOneWidget);
    expect(find.text('Discount (10%)'), findsOneWidget);
    expect(find.text('- PHP 200.00'), findsOneWidget);
    expect(find.text('Delivery Fee'), findsOneWidget);
    expect(find.text('PHP 50.00'), findsOneWidget);
    expect(find.text('Total'), findsOneWidget);
    expect(find.text('PHP 1,850.00'), findsOneWidget);

    // Verify Place Order Button
    expect(find.text('Place Order'), findsOneWidget);
    expect(find.byIcon(Icons.lock), findsOneWidget);

    // Test button taps
    await tester.tap(find.byIcon(Icons.arrow_back));
    await tester.tap(find.byIcon(Icons.shopping_bag_outlined));
    await tester.tap(find.text('Change'));
    await tester.tap(find.byIcon(Icons.add).first);
    await tester.tap(find.byIcon(Icons.remove).first);
    await tester.tap(find.byIcon(Icons.delete_outline).first);
    await tester.tap(find.text('Place Order'));
  });
}
