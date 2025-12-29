import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  final Color? activeColor;
  final Color? inactiveColor;
  final TextStyle? textStyle;

  const PrimaryButton({
    super.key,
    required this.label,
    required this.onTap,
    this.activeColor,
    this.inactiveColor,
    this.textStyle,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  // State lokal untuk mengatur animasi tombol
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar untuk responsivitas (opsional)
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) async {
        await Future.delayed(const Duration(milliseconds: 160));
        if (mounted) {
          setState(() => _isPressed = false);
        }
        widget.onTap();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        height: _isPressed ? height * 0.07 : height * 0.065,
        width: width,
        decoration: BoxDecoration(
          // Jika ditekan pakai activeColor, jika tidak pakai inactiveColor
          color: _isPressed 
              ? (widget.activeColor ?? const Color(0xFFD1D1D1)) // Ganti dengan AppColors.Quaternary
              : (widget.inactiveColor ?? const Color(0xFFEFEFEF)), // Ganti dengan AppColors.enable
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            widget.label,
            style: widget.textStyle?.copyWith(
              color: _isPressed ? Colors.black : const Color(0xFF5D5D5D),
            ) ?? const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}