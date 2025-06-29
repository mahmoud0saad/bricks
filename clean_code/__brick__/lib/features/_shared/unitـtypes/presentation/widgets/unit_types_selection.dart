import 'package:{{package_name.snakeCase()}}/core/di/injection.dart';
import 'package:{{package_name.snakeCase()}}/core/enums/request_state.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/custom_def/methods.dart';
import '../../../../../core/shared_widgets/cards/error_card_builder.dart';
import '../../../../../core/shared_widgets/selections_sheets/bottom_sheet_selection.dart'
    show SelectionBottomSheet;
import '../../data/models/unit_type_model.dart';
import '../bloc/unit_types_listing_bloc.dart';

class UnitTypesSelection extends StatelessWidget {
  const UnitTypesSelection({
    super.key,
    required this.selectedUnitType,
    required this.onSelect,
    this.enableSelection = true,
  });

  final OnSelectItem<UnitTypeModel?> onSelect;
  final UnitTypeModel? selectedUnitType;
  final bool enableSelection;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) =>
          getIt.get<UnitTypesListingBloc>()
            ..add(const UnitTypesListingEvent.started()),
      child: BlocBuilder<UnitTypesListingBloc, UnitTypesListingState>(
        builder: (context, state) {
          if (state.requestState.isError && state.errorMsg != null) {
            return ErrorCardBuilder(errorMsg: state.errorMsg ?? "");
          }
          return SelectionBottomSheet<UnitTypeModel>(
            isLoading: state.requestState.isLoading,
            isSelected: selectedUnitType != null,
            itemAsString: (u) => u.name ?? "",
            items: state.unitTypesList,
            onChange: (value) => _onSelectProduct(context, value),
            selectedItem: selectedUnitType,
            hintText: S.of(context).select_unit,
            enabled: enableSelection,
          );
        },
      ),
    );
  }

  void _onSelectProduct(BuildContext context, UnitTypeModel? unit) {
    onSelect(unit);
  }
}
