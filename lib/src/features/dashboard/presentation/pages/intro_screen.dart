import 'package:cv/gen/assets.gen.dart';
import 'package:cv/src/core/constants/constants.dart';
import 'package:cv/src/core/extensions/extentions.dart';
import 'package:cv/src/features/dashboard/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});
  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;
  late Animation<double> blueCircleTween;
  late Animation<double> whiteCircleTween;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: duration3000,
    )..forward();
    _controller2 = AnimationController(
      vsync: this,
      duration: duration3000,
    );
    blueCircleTween = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.fastOutSlowIn,
      ),
    );
    whiteCircleTween = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(
      CurvedAnimation(
        parent: _controller2,
        curve: Curves.fastOutSlowIn,
      ),
    );
    Future.delayed(duration500, () {
      _controller2.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? titleTextStyle = context.adaptive(
      Theme.of(context).textTheme.titleMedium,
      Theme.of(context).textTheme.headlineSmall,
      md: Theme.of(context).textTheme.titleLarge,
    );
    double circleSize = s400;
    bool codeVisibility = context.adaptive(false, true, md: true);
    return <Widget>[
      <Widget>[
        ScaleTransition(
          scale: blueCircleTween,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kSecondary,
            ),
          ),
        ),
        ScaleTransition(
          scale: whiteCircleTween,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kWhite,
              boxShadow: [
                BoxShadow(
                  offset: Offset(s0, s0),
                  blurRadius: s50,
                  spreadRadius: s05,
                  color: kSecondary,
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                Assets.images.profile.path,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
        ),
      ].addStack().addSizedBox(
            width: circleSize,
            height: circleSize,
          ),
      <Widget>[
        <Widget>[
          AnimatedTextSlideBoxTransition(
            controller: _controller,
            coverColor: Theme.of(context).scaffoldBackgroundColor,
            text: ksFlutterDeveloperAnd,
            textStyle: titleTextStyle,
          ),
          AnimatedTextSlideBoxTransition(
            controller: _controller,
            coverColor: Theme.of(context).scaffoldBackgroundColor,
            text: ksAiMlEnthusiast,
            textStyle: titleTextStyle,
          ),
          verticalSpaceMassive,
          AnimatedTextSlideBoxTransition(
            controller: _controller,
            text: ksIntro,
            coverColor: Theme.of(context).scaffoldBackgroundColor,
            textStyle: Theme.of(context).textTheme.bodyLarge,
            maxLines: 10,
          ),
          verticalSpaceMassive,
          CustomButton(
            isDisabled: false,
            label: ksSeeMyWork,
            // onPressed: () => context.router.push(const RestaurantListRoute()),
            onPressed: () {},
            icon: kiArrowForward,
          ),
          context.percentSizedBox(pHeight: context.adaptive(s12, s10)),
          <Widget>[
            AnimatedHoverLink(
              label: ksGithub,
              controller: _controller,
            ).addInkWell(
              onTap: ksGithubLink.launchWebsite,
            ),
            const Text(ksSlash).addCenter().addSizedBox(
                  width: s50,
                ),
            AnimatedHoverLink(
              label: ksLinkedIn,
              controller: _controller,
            ).addInkWell(
              onTap: ksLinkedInLink.launchWebsite,
            ),
          ].addRow(),
        ].addColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        Visibility(visible: codeVisibility, child: const CodeBlock()),
      ].addRow(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    ]
        .addStack(
          alignment: Alignment.center,
        )
        .addPadding(
          edgeInsets: context.symmetricPercentPadding(
            hPercent: context.adaptive(
              s2,
              s10,
              md: s4,
            ),
          ),
        )
        .addSizedBox(
          height: context.screenHeight - context.appBarTheme().toolbarHeight!,
          width: context.screenWidth,
        );
  }
}
