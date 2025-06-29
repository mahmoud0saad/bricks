import 'package:{{package_name.snakeCase()}}/core/di/injection.dart';
import 'package:{{package_name.snakeCase()}}/core/theme/app_colors.dart';
import 'package:{{package_name.snakeCase()}}/features/_shared/negotiable_type/presentation/bloc/negotiable_type_bloc.dart';
import 'package:{{package_name.snakeCase()}}/features/_shared/negotiable_type/presentation/enums/negotiable_selection_enum.dart';
import 'package:{{package_name.snakeCase()}}/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/shared_widgets/selections_sheets/bottom_sheet_selection.dart';

typedef OnNegotiableType = Function(NegotiableSelectionEnum negotiableType);

class NegotiableTypeSelection extends StatefulWidget {
  const NegotiableTypeSelection({
    super.key,
    this.onNegotiableType,
    this.selectedItem,
  });
  final OnNegotiableType? onNegotiableType;
  final NegotiableSelectionEnum? selectedItem;

  @override
  State<NegotiableTypeSelection> createState() =>
      _NegotiableTypeSelectionState();
}

class _NegotiableTypeSelectionState extends State<NegotiableTypeSelection> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<NegotiableTypeBloc>()
            ..add(NegotiableTypeEvent.changeUserTypes(widget.selectedItem)),
      child: BlocBuilder<NegotiableTypeBloc, NegotiableTypeState>(
        builder: (context, state) {
          return SelectionBottomSheet<NegotiableSelectionEnum>(
            hintText: S.of(context).negotiable,
            labaleText: S.of(context).price_type,
            itemAsString: (u) => u.name,
            items: state.usersTypes,
            selectedItem: state.selectedItem,
            fillColor: AppColors.naturalGray3,
            filled: true,
            onChange: (item) {
              context.read<NegotiableTypeBloc>().add(
                NegotiableTypeEvent.changeUserTypes(item),
              );
              if (item != null) widget.onNegotiableType?.call(item);
            },
          );
        },
      ),
    );
  }
}
