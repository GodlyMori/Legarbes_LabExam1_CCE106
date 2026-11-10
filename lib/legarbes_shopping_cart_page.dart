import 'package:flutter/material.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color backgroundColor = Color(0xFFF8FAFC);
    const Color primaryColor = Color.fromARGB(255, 2, 118, 81);
    const Color darkText = Color(0xFF0F172A);
    const Color subText = Color(0xFF64748B);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: darkText),
          onPressed: () {
            debugPrint('Back clicked');
          },
        ),
        titleSpacing: 0,
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: darkText,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      color: darkText,
                      size: 26,
                    ),
                    onPressed: () {
                      debugPrint('Cart clicked');
                    },
                  ),
                  Positioned(
                    top: 6,
                    right: 6,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: primaryColor,
                        shape: BoxShape.circle,
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: const Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 2. Introduction Section
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFFDBEAFE),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text(
                'CAMPUS STORE',
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Ready for checkout',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: darkText,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Review your items before placing your order.',
              style: TextStyle(
                fontSize: 13,
                color: subText,
              ),
            ),
            const SizedBox(height: 16),

            // 3. Delivery Information Card
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFE2E8F0)),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: primaryColor,
                    size: 24,
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 34,
                    width: 1,
                    color: const Color(0xFFE2E8F0),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deliver to Alvin Legarbes',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: darkText,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Los, Davao City',
                          style: TextStyle(
                            fontSize: 12,
                            color: subText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      debugPrint('Change delivery address clicked');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      'Change',
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // 4. Order Items
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order Items',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: darkText,
                  ),
                ),
                Text(
                  '3 items',
                  style: TextStyle(
                    fontSize: 13,
                    color: subText,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Product 1: Wireless Mouse
            const CartItemCard(
              productName: 'Wireless Mouse',
              price: 'PHP 450.00',
              quantity: 1,
              icon: Icons.mouse_outlined,
            ),
            const SizedBox(height: 10),

            // Product 2: USB-C Hub
            const CartItemCard(
              productName: 'USB-C Hub',
              price: 'PHP 850.00',
              quantity: 1,
              icon: Icons.cable,
            ),
            const SizedBox(height: 10),

            // Product 3: Laptop Stand
            const CartItemCard(
              productName: 'Laptop Stand',
              price: 'PHP 700.00',
              quantity: 1,
              icon: Icons.laptop_chromebook_outlined,
            ),
            const SizedBox(height: 16),

            // 5. Discount Banner
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFEFF6FF),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: const Color(0xFFBFDBFE)),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.sell_outlined,
                    color: primaryColor,
                    size: 22,
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 30,
                    width: 1,
                    color: const Color(0xFFBFDBFE),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'STUDENT10 applied',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: darkText,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '10% discount on items',
                          style: TextStyle(
                            fontSize: 11,
                            color: subText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.check_circle,
                    color: primaryColor,
                    size: 22,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // 6. Payment Summary
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFE2E8F0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Payment Summary',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: darkText,
                    ),
                  ),
                  const SizedBox(height: 14),
                  _buildSummaryRow('Subtotal', 'PHP 2,000.00'),
                  const SizedBox(height: 8),
                  _buildSummaryRow('Discount (10%)', '- PHP 200.00'),
                  const SizedBox(height: 8),
                  _buildSummaryRow('Delivery Fee', 'PHP 50.00'),
                  const SizedBox(height: 14),
                  const Divider(color: Color(0xFFE2E8F0), thickness: 1, height: 1),
                  const SizedBox(height: 14),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: darkText,
                        ),
                      ),
                      Text(
                        'PHP 1,850.00',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          color: darkText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // 7. Place Order Button
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton.icon(
                onPressed: () {
                  debugPrint('Place order clicked! Total: PHP 1850.00');
                },
                icon: const Icon(Icons.lock, color: Colors.white, size: 18),
                label: const Text(
                  'Place Order',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  static Widget _buildSummaryRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            color: Color(0xFF64748B),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0F172A),
          ),
        ),
      ],
    );
  }
}

class CartItemCard extends StatelessWidget {
  final String productName;
  final String price;
  final int quantity;
  final IconData icon;

  const CartItemCard({
    super.key,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color.fromARGB(255, 2, 118, 81);
    const Color darkText = Color(0xFF0F172A);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon inside light blue container
          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              color: const Color(0xFFEFF6FF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Icon(
                icon,
                color: primaryColor,
                size: 28,
              ),
            ),
          ),
          const SizedBox(width: 12),
          // Product details and quantity controls
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        productName,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: darkText,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint('Remove item: $productName');
                      },
                      borderRadius: BorderRadius.circular(4),
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Icon(
                          Icons.delete_outline,
                          color: Color(0xFF94A3B8),
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 2),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    // Minus button
                    InkWell(
                      onTap: () {
                        debugPrint('Decrease quantity: $productName');
                      },
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        width: 28,
                        height: 26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: primaryColor, width: 1.2),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.remove,
                            size: 14,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    // Quantity
                    Container(
                      width: 32,
                      height: 26,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: const Color(0xFFE2E8F0)),
                      ),
                      child: Center(
                        child: Text(
                          '$quantity',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: darkText,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    // Plus button
                    InkWell(
                      onTap: () {
                        debugPrint('Increase quantity: $productName');
                      },
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        width: 28,
                        height: 26,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: primaryColor, width: 1.2),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            size: 14,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
