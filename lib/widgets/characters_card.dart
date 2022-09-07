import 'package:flutter/material.dart';
import 'package:rick_and_morty/screens/detail_screen.dart';
import 'package:rick_and_morty/themes/colors.dart';

class CharactersCardWidget extends StatelessWidget {
  const CharactersCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 15,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailScreen()));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                ClipOval(
                  child: SizedBox(
                    width: 74,
                    height: 74,
                    child: Image.asset(
                      'assets/images/rik_sanches.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 18),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Живой',
                      style:
                          TextStyle(fontSize: 10, color: AppColors.color43D049),
                    ),
                    Text(
                      'Рик Cанчез',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Человек, Мужской',
                      style:
                          TextStyle(fontSize: 12, color: AppColors.color6E798C),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
