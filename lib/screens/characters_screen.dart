import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:rick_and_morty/themes/colors.dart';
import 'package:rick_and_morty/widgets/characters_card.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: const [
            _SearchBlockWidget(),
            _ALLCharacters(),
            CharactersCardWidget()
          ],
        ),
      ),
    );
  }
}

class _SearchBlockWidget extends StatelessWidget {
  const _SearchBlockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 24),
        padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 12),
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/svg_icons/icon_search.svg'),
                const SizedBox(width: 14),
                const Text(
                  'Найти персонажа',
                  style: TextStyle(color: AppColors.color5B6975),
                ),
              ],
            ),
            SvgPicture.asset('assets/svg_icons/icon_filtr.svg'),
          ],
        ));
  }
}

class _ALLCharacters extends StatelessWidget {
  const _ALLCharacters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Text(
                'ВСЕГО ПЕРСОНАЖЕЙ:',
                style: TextStyle(color: AppColors.color5B6975),
              ),
              Text(
                '200',
                style: TextStyle(color: AppColors.color5B6975),
              ),
            ],
          ),
          SvgPicture.asset('assets/svg_icons/icon_group.svg')
        ],
      ),
    );
  }
}
