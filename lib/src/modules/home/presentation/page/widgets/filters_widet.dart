import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rick_and_morty_guide/src/core/utils/extensions/numbers_extension.dart';
import 'package:rick_and_morty_guide/src/modules/home/presentation/controller/home_controller.dart';
import 'package:rick_and_morty_guide/src/modules/home/presentation/page/widgets/chip_widget.dart';

import '../../../../../app_provider.dart';

class FiltersWidget extends StatelessWidget {
  final bool purple ;
  FiltersWidget({super.key, this.purple=false});

  final controller = getIt<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.scale, horizontal: 20.scale),
      child: Wrap(
          runSpacing: 10.scale,
          alignment: WrapAlignment.start,
          spacing: 10.scale,
          children: [
            Observer(builder: (_) {
              return ChipWidget(
                purple: purple,
                isSelected: !controller.filters.humans &&
                    !controller.filters.monsters &&
                    !controller.filters.parasite,
                onSelected: (_) {
                  controller.handleFilter(controller.filters.copyWith(
                      humans: false, monsters: false, parasite: false));
                },
                label: 'All',
              );
            }),
            ChipWidget(
              purple: purple,
              isSelected: controller.filters.monsters,
              onSelected: (_) => controller.handleFilter(controller.filters
                  .copyWith(monsters: !controller.filters.monsters)),
              label: 'Monsters',
            ),
            ChipWidget(
              purple: purple,
              isSelected: controller.filters.humans,
              onSelected: (_) => controller.handleFilter(controller.filters
                  .copyWith(humans: !controller.filters.humans)),
              label: 'Humans',
            ),
            ChipWidget(
              purple: purple,
              isSelected: controller.filters.parasite,
              onSelected: (_) => controller.handleFilter(controller.filters
                  .copyWith(parasite: !controller.filters.parasite)),
              label: 'Parasites',
            ),
          ]),
    );
  }
}
