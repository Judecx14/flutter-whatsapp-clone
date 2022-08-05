import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:test_new_flutter_version/src/widgets/contact_status.dart';
import 'package:test_new_flutter_version/src/widgets/create_status.dart';
import 'package:test_new_flutter_version/src/widgets/messages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String title = 'Whatsapp';
  static const Color primaryColor = Color.fromARGB(255, 28, 133, 120);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          title,
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const HeroIcon(
              HeroIcons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const HeroIcon(
              HeroIcons.menuAlt3,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: const _Body(
        primaryColor: primaryColor,
      ),
      bottomNavigationBar: const _BottomNavBar(
        primaryColor: primaryColor,
      ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({
    Key? key,
    required this.primaryColor,
  }) : super(key: key);

  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.only(
        bottom: 15,
        left: 15,
        right: 15,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: primaryColor,
          items: const [
            BottomNavigationBarItem(
              icon: HeroIcon(
                HeroIcons.chatAlt2,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: HeroIcon(
                HeroIcons.phone,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: HeroIcon(
                HeroIcons.userGroup,
                color: Colors.white,
              ),
              label: '',
            ),
          ],
          currentIndex: 2,
          onTap: (index) {},
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key, required this.primaryColor}) : super(key: key);

  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: Column(
        children: const [
          _Status(),
          Expanded(
            child: Messages(),
          ),
        ],
      ),
    );
  }
}

class _Status extends StatelessWidget {
  const _Status({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        scrollDirection: Axis.horizontal,
        children: const [
          CreateStatus(),
          ContactStatus(
            name: 'Billie Eilish',
            image:
                'https://los40es00.epimg.net/los40/imagenes/2021/12/03/moda/1638544243_802214_1638544359_gigante_normal.jpg',
          ),
          ContactStatus(
            name: 'Billie Eilish',
            image:
                'https://los40es00.epimg.net/los40/imagenes/2021/12/03/moda/1638544243_802214_1638544359_gigante_normal.jpg',
          ),
          ContactStatus(
            name: 'Billie Eilish',
            image:
                'https://los40es00.epimg.net/los40/imagenes/2021/12/03/moda/1638544243_802214_1638544359_gigante_normal.jpg',
          ),
          ContactStatus(
            name: 'Billie Eilish',
            image:
                'https://los40es00.epimg.net/los40/imagenes/2021/12/03/moda/1638544243_802214_1638544359_gigante_normal.jpg',
          ),
          ContactStatus(
            name: 'Billie Eilish',
            image:
                'https://los40es00.epimg.net/los40/imagenes/2021/12/03/moda/1638544243_802214_1638544359_gigante_normal.jpg',
          ),
          ContactStatus(
            name: 'Billie Eilish',
            image:
                'https://los40es00.epimg.net/los40/imagenes/2021/12/03/moda/1638544243_802214_1638544359_gigante_normal.jpg',
          ),
          ContactStatus(
            name: 'Billie Eilish',
            image:
                'https://los40es00.epimg.net/los40/imagenes/2021/12/03/moda/1638544243_802214_1638544359_gigante_normal.jpg',
          ),
        ],
      ),
    );
  }
}
