import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:vivia_mobile/pages/main_page.dart';


class OnboadingPage extends StatefulWidget {
  const OnboadingPage({super.key});

  @override
  State<OnboadingPage> createState() => _OnboadingPageState();
}

class _OnboadingPageState extends State<OnboadingPage> {
  
   List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: "Bienvenue",
        body: "Découvrez notre application",
        image: Image.asset('assets/welcome_image.png'),
      ),
      PageViewModel(
        title: "Explorez",
        body: "Explorez les fonctionnalités incroyables",
        image: Image.asset('assets/explore_image.png'),
      ),
      PageViewModel(
        title: "Commencez",
        body: "Inscrivez-vous ou connectez-vous pour commencer",
        image: Image.network('https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg'),
      ),
    ]; 
}

  @override
  Widget build(BuildContext context) {
    return   IntroductionScreen(
      pages: getPages(),
      onDone: () {
        // Naviguer vers la page principale
      },
      onSkip: () {
        // Naviguer vers la page principale
         Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MainScreen(),
                      ),
                    );
      },
      showSkipButton: true,
      skip: const Text("Passer"),
      done: const Text("Terminé"),
      next: const Icon(Icons.arrow_forward),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeColor: Colors.blue,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
 
}
}

