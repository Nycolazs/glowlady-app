import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const GlowLadyApp());
}

class GlowLadyApp extends StatelessWidget {
  const GlowLadyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glow Lady Store',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFFFF7EB6),
      ),
      home: const StoreWebViewPage(),
    );
  }
}

class StoreWebViewPage extends StatefulWidget {
  const StoreWebViewPage({super.key});

  @override
  State<StoreWebViewPage> createState() => _StoreWebViewPageState();
}

class _StoreWebViewPageState extends State<StoreWebViewPage> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) => setState(() => _isLoading = true),
          onPageFinished: (_) => setState(() => _isLoading = false),
        ),
      )
      ..loadRequest(Uri.parse('https://glowladystore.com.br/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: Stack(
          children: [
            WebViewWidget(controller: _controller),
            if (_isLoading)
              const Center(
                child: CircularProgressIndicator(),
              ),
          ],
        ),
      ),
    );
  }
}
