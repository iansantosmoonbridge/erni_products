import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:products/core/color_schemes.dart';
import 'package:products/features/product_list/product_list_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ERNI Products',
      theme: FlexThemeData.light(
        useMaterial3: true,
        useMaterial3ErrorColors: true,
        colorScheme: lightColorScheme,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ).copyWith(
        dividerTheme: const DividerThemeData(
          space: 0,
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        filledButtonTheme: const FilledButtonThemeData(
          style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        outlinedButtonTheme: const OutlinedButtonThemeData(
          style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
      darkTheme: FlexThemeData.dark(
        useMaterial3: true,
        useMaterial3ErrorColors: true,
        colorScheme: darkColorScheme,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ).copyWith(
        dividerTheme: const DividerThemeData(
          space: 0,
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        filledButtonTheme: const FilledButtonThemeData(
          style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        outlinedButtonTheme: const OutlinedButtonThemeData(
          style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        textButtonTheme: const TextButtonThemeData(
          style: ButtonStyle(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
      themeMode: ThemeMode.light,
      home: const ProductListPage(),
    );
  }
}
