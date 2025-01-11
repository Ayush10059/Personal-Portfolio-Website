import 'package:auto_route/auto_route.dart';
import 'package:cv/src/core/extensions/extentions.dart';
import 'package:cv/src/features/dashboard/presentation/pages/footer_screen.dart';
import 'package:cv/src/features/dashboard/presentation/pages/intro_screen.dart';
import 'package:flutter/material.dart';

@RoutePage<void>()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final _scrollController = ScrollController();
  List<Widget> mainPages = [];
  final _key = GlobalKey();
  bool _isDrawerOpen = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    mainPages = [
      const IntroductionScreen(),
      const FooterScreen(),
    ];
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void onMenuTapped() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainPages.addListView(
        key: _key,
        controller: _scrollController,
        physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
