import 'package:cv/src/core/constants/constants.dart';
import 'package:cv/src/features/dashboard/data/models/models.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// constant strings are prefixed with [ks]
const String ksFontFamily = "Poppins";

const String ksFlutterDeveloperAnd = "Software Engineer &";
const String ksAiMlEnthusiast = "AI/ML Engineer";
const String ksIntro = """
  Hi, I'm Ayush Bajracharya!
    - a passionate mobile developer
    - a Big Data student At CYU
  """;

const String ksSlash = "/";
const String ksSeeMyWork = "See my work";
const String ksGithub = "Github";
const String ksLinkedIn = "LinkedIn";

const String ksGithubLink = 'https://www.github.com/Ayush10059/';
const String ksLinkedInLink = 'https://www.linkedin.com/in/ayushbajracharya/';

const String ksLetsWork = "Let's work together!";
const String ksContactInfo = "- Contact Info";
const String ksWorkEmail = "ayushbajracharya09@gmail.com";
const String ksWorkPhone = "+33 06 44 92 82 50";
const String ksBuiltUsing = "Built using ";
const String ksWithMuch = " with much ";
const String ksCC = "©️ 2025 Ayush Bajracharya";

const String _nikolaTesla = "Nikola Tesla";
const String _kentBeck = "Kent Beck";
const String _linusTorvalds = "Linus Torvalds";
const String _donaldKnuth = "Donald Knuth";
const String _albertEinstein = "Albert Einstein";
const String _alanTuring = "Alan Turing";
const String _johnLennon = "John Lennon";
const String _steveJobs = "Steve Jobs";
const String _kurtCobain = "Kurt Cobain";
const String _jamesClear = "James Clear";
final List<Quote> ksQuotes = [
  Quote(
    name:
        "Our virtues and our failings are inseparable, like force and matter. When they separate, man is no more.",
    author: _nikolaTesla,
  ),
  Quote(
    name:
        "I'm not a great programmer. I'm just a good programmer with great habits.",
    author: _kentBeck,
  ),
  Quote(
    name: "I'm generally a very pragmatic person: that which works, works.",
    author: _linusTorvalds,
  ),
  Quote(
    name: "Premature optimization is the root of all evil.",
    author: _donaldKnuth,
  ),
  Quote(
    name:
        "Everyday life is like programming, I guess. If you love something you can put beauty into it.",
    author: _donaldKnuth,
  ),
  Quote(
    name: "A person who never made a mistake never tried anything new.",
    author: _albertEinstein,
  ),
  Quote(
    name: "I have no special talent. I am only passionately curious.",
    author: _albertEinstein,
  ),
  Quote(
    name:
        "Sometimes it is the people who no one imagines anything of who do the things that no one can imagine.",
    author: _alanTuring,
  ),
  Quote(
    name: "Life is what happens when you're busy making other plans.",
    author: _johnLennon,
  ),
  Quote(
    name: "The duty of youth is to challenge corruption.",
    author: _kurtCobain,
  ),
  Quote(
    name: "Stay hungry, stay foolish.",
    author: _steveJobs,
  ),
  Quote(
    name: "It's hard to build momentum if you're dividing your attention.",
    author: _jamesClear,
  ),
  Quote(
    name: "Deconstruction creates knowledge. Recombination creates value.",
    author: _jamesClear,
  ),
];

final List<SocialMedia> ksSocialMedia = [
  SocialMedia(
    link: ksGithubLink,
    icon: const FaIcon(
      FontAwesomeIcons.github,
      color: kSecondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksLinkedInLink,
    icon: const FaIcon(
      FontAwesomeIcons.linkedin,
      color: kSecondary,
      size: s18,
    ),
  ),
];
