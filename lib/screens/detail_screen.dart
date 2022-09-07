import 'package:flutter/material.dart';
import 'package:rick_and_morty/themes/colors.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 218,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/rik_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        Positioned(
            left: 0,
            top: 138,
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.all(6),
                    child: Image.asset('assets/images/rik_detail.png')),
                const SizedBox(height: 24),
                const Text(
                  'Рик Cанчез',
                  style: TextStyle(fontSize: 34),
                ),
                const SizedBox(height: 4),
                const Text(
                  'живой',
                  style: TextStyle(fontSize: 10, color: AppColors.color43D049),
                ),
                const SizedBox(height: 36),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм, безрассудность и социопатия заставляют беспокоиться семью его дочери.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Пол',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.color5B6975),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Мужской',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 156,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Рик Cанчез',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.color5B6975),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Человек',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Место рождения',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.color5B6975),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Земля C-137',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Местоположение',
                            style: TextStyle(
                                fontSize: 12, color: AppColors.color5B6975),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Земля (Измерение подменны)',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            )),
      ]),
    );
  }
}
