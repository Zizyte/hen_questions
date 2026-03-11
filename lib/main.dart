import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

const Color kDeepPink = Color(0xFFC2185B);
const Color kHotPink = Color(0xFFE91E63);
const Color kSoftPink = Color(0xFFF48FB1);
const Color kBlush = Color(0xFFFCE4EC);

const String kFontFamily = 'Avenir Next';

const brideQuestions = <String>[
  "When did you first realize he was the one?",
  "What was your first impression of him?",
  "What is one habit of his you secretly love?",
  "What moment with him made you feel the most loved?",
  "When did you know you wanted to marry him?",
  "What is one thing you hope never changes in your relationship?",
  "What is your favorite memory from your first year together?",
  "What was your reaction after the proposal?",
  "Which of the girls here has known you the longest?",
  "Who was there for you during your worst heartbreak?",
  "What is your funniest memory with the girls?",
  "Which friend knows your biggest secrets?",
  "Who gives you the best relationship advice?",
  "Who was the most protective of you in past relationships?",
  "What moment with the girls made you feel the most loved?",
  "What is one crazy memory you will never forget with them?",
  "Who changed you the most in a positive way?",
  "What is something you have learned about love from your friendships?",
  "Who do you call first when something dramatic happens?",
  "If your friendship with these girls had a title, what would it be?",
];

const girlsQuestions = <String>[
  "When did you first meet the bride, and what was your first impression?",
  "What is the funniest thing the bride has ever done in front of you?",
  "What is the most iconic bride quote you have heard from her?",
  "If the bride were a movie character, who would she be?",
  "What is the most unforgettable memory you have with the bride?",
  "When did you first realize the groom was serious about her?",
  "What is something you genuinely admire about the groom?",
  "What is the sweetest moment you have witnessed between them?",
  "If you had to describe their relationship in 3 words, what would they be?",
  "What is one thing you think they do really well as a couple?",
  "What is one thing the bride taught you about love or relationships?",
  "What is one thing the bride does that makes her an amazing friend?",
  "What is the best advice you have ever given the bride?",
  "What is the best advice the bride has ever given you?",
  "What is a moment when the bride surprised you in a good way?",
  "Who in this group is most likely to cry during the wedding, and why?",
  "Who in this group is the planner, and who is the chaos queen?",
  "What is the funniest group memory you all share?",
  "What is one thing you all should do together again in the future?",
  "What is the most we understand each other without words moment in this group?",
  "What was the bride like when she was single?",
  "What is the funniest dating era story you remember about her?",
  "What is a green flag the groom has that makes you happy for her?",
  "What is one red flag the bride used to ignore in dating before him?",
  "What is one thing you hope the groom never changes about how he treats her?",
  "What do you think is the bride's love language?",
  "What do you think is the groom's love language?",
  "What is one tradition or ritual you think they should start as a couple?",
  "If you could give them one rule for a happy marriage, what would it be?",
  "What is one wish you have for the bride — and one for their relationship?",
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  TextTheme _textTheme() {
    return const TextTheme(
      headlineLarge: TextStyle(
        fontFamily: kFontFamily,
        fontSize: 30,
        fontWeight: FontWeight.w800,
        letterSpacing: -0.6,
        height: 1.08,
      ),
      headlineMedium: TextStyle(
        fontFamily: kFontFamily,
        fontSize: 23,
        fontWeight: FontWeight.w800,
        letterSpacing: -0.35,
        height: 1.12,
      ),
      titleLarge: TextStyle(
        fontFamily: kFontFamily,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.2,
      ),
      titleMedium: TextStyle(
        fontFamily: kFontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.1,
      ),
      bodyLarge: TextStyle(
        fontFamily: kFontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.35,
      ),
      bodyMedium: TextStyle(
        fontFamily: kFontFamily,
        fontSize: 15,
        fontWeight: FontWeight.w500,
        height: 1.35,
      ),
      labelLarge: TextStyle(
        fontFamily: kFontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.05,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spill the Veil',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: kFontFamily,
        scaffoldBackgroundColor: kBlush,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kHotPink,
          primary: kHotPink,
          secondary: kSoftPink,
          surface: Colors.white,
        ),
        textTheme: _textTheme().apply(
          bodyColor: kDeepPink,
          displayColor: kDeepPink,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: kBlush,
          foregroundColor: kDeepPink,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: kFontFamily,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: kDeepPink,
            letterSpacing: -0.1,
          ),
        ),
      ),
      home: const CoverScreen(),
    );
  }
}

class CoverScreen extends StatelessWidget {
  const CoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: kBlush,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              const SizedBox(height: 14),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                  color: kDeepPink.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(999),
                ),
                child: const Text(
                  "SPILL THE VEIL ✨",
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontWeight: FontWeight.w800,
                    color: kDeepPink,
                    letterSpacing: 0.4,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                "Welcome to the game where the bride and her girls reveal juicy confessions, chaotic memories, and a little more than they probably should 💄",
                textAlign: TextAlign.center,
                style: text.headlineMedium?.copyWith(color: kDeepPink),
              ),
              const SizedBox(height: 14),
              Text(
                "Add the girls' names, tap the card, and let fate decide who's in the spotlight next ✨",
                textAlign: TextAlign.center,
                style: text.bodyMedium?.copyWith(
                  color: kDeepPink.withOpacity(0.75),
                ),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  gradient: const LinearGradient(
                    colors: [kHotPink, kDeepPink],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 18,
                      offset: const Offset(0, 10),
                      color: kDeepPink.withOpacity(0.18),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const BrideNameScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Let's Get Messy 💋",
                    style: text.labelLarge?.copyWith(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class BrideNameScreen extends StatefulWidget {
  const BrideNameScreen({super.key});

  @override
  State<BrideNameScreen> createState() => _BrideNameScreenState();
}

class _BrideNameScreenState extends State<BrideNameScreen> {
  final controller = TextEditingController();

  void _next() {
    final name = controller.text.trim();
    if (name.isEmpty) return;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => GirlsNamesScreen(brideName: name),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        fontFamily: kFontFamily,
        color: kDeepPink.withOpacity(0.45),
        fontWeight: FontWeight.w500,
      ),
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: kSoftPink.withOpacity(0.35)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: kSoftPink.withOpacity(0.35)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: kHotPink, width: 1.6),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: kBlush,
      appBar: AppBar(
        title: const Text("The Bride"),
        backgroundColor: kBlush,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 8),
            Text(
              "Who's the gorgeous woman causing all this chaos tonight? 👰‍♀️",
              textAlign: TextAlign.center,
              style: text.titleMedium?.copyWith(
                color: kDeepPink,
                height: 1.25,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controller,
              textInputAction: TextInputAction.done,
              onSubmitted: (_) => _next(),
              decoration: _inputDecoration("Bride's name"),
              style: const TextStyle(
                fontFamily: kFontFamily,
                color: kDeepPink,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(colors: [kHotPink, kDeepPink]),
              ),
              child: ElevatedButton(
                onPressed: _next,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Text(
                  "Bring the Bride In ➜",
                  style: text.labelLarge?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GirlsNamesScreen extends StatefulWidget {
  final String brideName;

  const GirlsNamesScreen({super.key, required this.brideName});

  @override
  State<GirlsNamesScreen> createState() => _GirlsNamesScreenState();
}

class _GirlsNamesScreenState extends State<GirlsNamesScreen> {
  static const maxGirls = 15;
  final List<TextEditingController> controllers = [TextEditingController()];

  void _maybeAddNewField() {
    final last = controllers.last.text.trim();
    if (last.isNotEmpty && controllers.length < maxGirls) {
      setState(() {
        controllers.add(TextEditingController());
      });
    }
  }

  void _start() {
    final names = controllers
        .map((c) => c.text.trim())
        .where((name) => name.isNotEmpty)
        .toList();

    if (names.isEmpty) return;

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => GameScreen(
          brideName: widget.brideName,
          girls: names,
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        fontFamily: kFontFamily,
        color: kDeepPink.withOpacity(0.45),
        fontWeight: FontWeight.w500,
      ),
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: kSoftPink.withOpacity(0.35)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: kSoftPink.withOpacity(0.35)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: kHotPink, width: 1.6),
      ),
    );
  }

  @override
  void dispose() {
    for (final c in controllers) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: kBlush,
      appBar: AppBar(
        title: const Text("The Inner Circle"),
        backgroundColor: kBlush,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Add the names of the girls joining the chaos tonight. Enter one name, and the next field will appear automatically ✨",
              textAlign: TextAlign.center,
              style: text.bodyMedium?.copyWith(
                color: kDeepPink.withOpacity(0.75),
              ),
            ),
            const SizedBox(height: 14),
            Expanded(
              child: ListView.builder(
                itemCount: controllers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextField(
                      controller: controllers[index],
                      textInputAction: TextInputAction.next,
                      onChanged: (_) => _maybeAddNewField(),
                      onSubmitted: (_) => _maybeAddNewField(),
                      decoration: _inputDecoration("Name ${index + 1}"),
                      style: const TextStyle(
                        fontFamily: kFontFamily,
                        color: kDeepPink,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(colors: [kHotPink, kDeepPink]),
              ),
              child: ElevatedButton(
                onPressed: _start,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Text(
                  "Let the Games Begin 💋",
                  style: text.labelLarge?.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GameScreen extends StatefulWidget {
  final String brideName;
  final List<String> girls;

  const GameScreen({
    super.key,
    required this.brideName,
    required this.girls,
  });

  @override
  State<GameScreen> createState() => _GameScreenState();
}

enum TargetType { bride, girl }

class _GameScreenState extends State<GameScreen>
    with TickerProviderStateMixin {
  final rnd = Random();

  late List<String> brideDeck;
  late List<String> girlsDeck;
  late List<String> girlsPool;

  int stepsUntilBride = 2;
  bool isAnimating = false;
  int cardVersion = 0;

  TargetType? currentTarget;
  String currentName = "";
  String currentQuestion = "";

  late final AnimationController pressController;
  late final Animation<double> scaleAnimation;
  late final AnimationController flipController;
  late final ConfettiController confettiController;

  @override
  void initState() {
    super.initState();
    brideDeck = List<String>.from(brideQuestions)..shuffle(rnd);
    girlsDeck = List<String>.from(girlsQuestions)..shuffle(rnd);
    girlsPool = List<String>.from(widget.girls)..shuffle(rnd);
    stepsUntilBride = _pickBrideInterval();

    pressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 110),
    );

    scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.965,
    ).animate(
      CurvedAnimation(
        parent: pressController,
        curve: Curves.easeOut,
      ),
    );

    flipController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 420),
    );

    confettiController = ConfettiController(
      duration: const Duration(milliseconds: 420),
    );
  }

  @override
  void dispose() {
    pressController.dispose();
    flipController.dispose();
    confettiController.dispose();
    super.dispose();
  }

  int _pickBrideInterval() => 2 + rnd.nextInt(2);

  String _drawFromDeck(List<String> deck, List<String> original) {
    if (deck.isEmpty) {
      deck.addAll(original);
      deck.shuffle(rnd);
    }
    return deck.removeLast();
  }

  String _drawRandomGirl() {
    if (girlsPool.isEmpty) {
      girlsPool = List<String>.from(widget.girls)..shuffle(rnd);
    }
    return girlsPool.removeLast();
  }

  TargetType _nextTargetType() {
    if (stepsUntilBride <= 0) {
      stepsUntilBride = _pickBrideInterval();
      return TargetType.bride;
    }
    stepsUntilBride -= 1;
    return TargetType.girl;
  }

  Future<void> nextQuestion() async {
    if (isAnimating) return;

    setState(() {
      isAnimating = true;
    });

    HapticFeedback.lightImpact();
    SystemSound.play(SystemSoundType.click);

    await pressController.forward();
    await pressController.reverse();

    final target = _nextTargetType();
    late final String name;
    late final String question;

    if (target == TargetType.bride) {
      name = widget.brideName;
      question = _drawFromDeck(brideDeck, brideQuestions);
    } else {
      name = _drawRandomGirl();
      question = _drawFromDeck(girlsDeck, girlsQuestions);
    }

    flipController.reset();
    await flipController.forward();

    setState(() {
      currentTarget = target;
      currentName = name;
      currentQuestion = question;
      cardVersion += 1;
    });

    confettiController.play();

    setState(() {
      isAnimating = false;
    });
  }

  Widget _buildCardFace(bool showFront) {
    if (showFront || currentTarget == null) {
      return const _CardFaceFront();
    }

    return _CardFaceBack(
      key: ValueKey('card_$cardVersion'),
      name: currentName,
      isBride: currentTarget == TargetType.bride,
      question: currentQuestion,
    );
  }

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    final headline = (currentTarget == TargetType.bride)
        ? "$currentName takes the hot seat 👰‍♀️"
        : (currentTarget == TargetType.girl)
            ? "$currentName takes the hot seat 👯"
            : "Who's in the spotlight now? ✨";

    return Scaffold(
      backgroundColor: kBlush,
      appBar: AppBar(
        title: const Text("Spill the Veil"),
        backgroundColor: kBlush,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 8),
                Text(
                  headline,
                  textAlign: TextAlign.center,
                  style: text.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: kDeepPink,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: Center(
                    child: GestureDetector(
                      onTap: isAnimating ? null : nextQuestion,
                      child: AnimatedBuilder(
                        animation: Listenable.merge([
                          scaleAnimation,
                          flipController,
                        ]),
                        builder: (context, child) {
                          final angle = flipController.value * pi;
                          final showFront = angle < (pi / 2);

                          return Transform.scale(
                            scale: scaleAnimation.value,
                            child: SizedBox(
                              width: 340,
                              height: 430,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  const _StackedCards(),
                                  Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.identity()
                                      ..setEntry(3, 2, 0.0012)
                                      ..rotateY(angle),
                                    child: showFront
                                        ? _buildCardFace(true)
                                        : Transform(
                                            alignment: Alignment.center,
                                            transform: Matrix4.identity()
                                              ..rotateY(pi),
                                            child: _buildCardFace(false),
                                          ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              emissionFrequency: 0.22,
              numberOfParticles: 18,
              gravity: 0.35,
              minimumSize: const Size(6, 3),
              maximumSize: const Size(10, 6),
            ),
          ),
        ],
      ),
    );
  }
}

class _StackedCards extends StatelessWidget {
  const _StackedCards();

  @override
  Widget build(BuildContext context) {
    Widget card({
      required double top,
      required double left,
      required double right,
      required double angle,
    }) {
      return Positioned(
        top: top,
        left: left,
        right: right,
        child: Transform.rotate(
          angle: angle,
          child: Container(
            height: 390,
            decoration: BoxDecoration(
              color: kSoftPink,
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                  blurRadius: 18,
                  offset: const Offset(0, 10),
                  color: kDeepPink.withOpacity(0.10),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Stack(
      children: [
        card(top: 26, left: 22, right: 22, angle: -0.035),
        card(top: 14, left: 14, right: 14, angle: 0.028),
      ],
    );
  }
}

class _CardFaceFront extends StatelessWidget {
  const _CardFaceFront({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Container(
      width: 320,
      height: 410,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [kSoftPink, kHotPink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(26),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            offset: const Offset(0, 10),
            color: kDeepPink.withOpacity(0.18),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Who's in the spotlight now? ✨",
              textAlign: TextAlign.center,
              style: text.headlineLarge?.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Tap the card",
              textAlign: TextAlign.center,
              style: text.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardFaceBack extends StatelessWidget {
  final String name;
  final bool isBride;
  final String question;

  const _CardFaceBack({
    super.key,
    required this.name,
    required this.isBride,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Container(
      width: 320,
      height: 410,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        gradient: const LinearGradient(
          colors: [kHotPink, kDeepPink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            offset: const Offset(0, 10),
            color: kDeepPink.withOpacity(0.20),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isBride ? "$name 👰‍♀️" : "$name 👯",
              textAlign: TextAlign.center,
              style: text.headlineMedium?.copyWith(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              question,
              textAlign: TextAlign.center,
              style: text.titleMedium?.copyWith(
                color: Colors.white,
                fontSize: 20,
                height: 1.25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}