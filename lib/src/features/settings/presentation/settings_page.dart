import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rates_app/src/features/settings/cubits/settings_cubit.dart';
import 'package:rates_app/src/features/settings/cubits/settings_state.dart';
import 'package:rates_app/src/l10n/app_localizations.dart';
import '../data/currency_settings_record.dart';

class SettingsPage extends StatelessWidget implements AutoRouteWrapper {
  const SettingsPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) =>
      BlocProvider<SettingsCubit>(create: (_) => GetIt.instance<SettingsCubit>(), child: this);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      buildWhen: (_, newState) => newState.maybeMap(orElse: () => true, changingSettings: (_) => false),
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(AppLocalizations.of(context)!.currenciesSettings),
          actions: [
            IconButton(
                onPressed: () {
                  context.read<SettingsCubit>().save();
                  context.router.pop();
                },
                icon: const Icon(Icons.check))
          ],
        ),
        body: state.when(
          changingSettings: () => const SizedBox.shrink(),
          init: () => const Center(child: CircularProgressIndicator()),
          loaded: (currencySettingsRecords) => ReorderableListView(
            onReorder: (oldIndex, newIndex) => context.read<SettingsCubit>().changeOrder(oldIndex, newIndex),
            children: currencySettingsRecords
                .mapIndexed((i, record) => _buildRecord(context, i, currencySettingsRecords[i]))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildRecord(BuildContext context, int index, CurrencySettingsRecord currencySettingsRecord) {
    return ListTile(
      key: Key('$index'),
      title: Text(currencySettingsRecord.code),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Switch(
            value: currencySettingsRecord.isEnabled,
            onChanged: (isEnabled) => context.read<SettingsCubit>().changeCurrencyState(index, isEnabled),
          ),
          const SizedBox(width: 16),
          ReorderableDragStartListener(
            key: ValueKey<CurrencySettingsRecord>(currencySettingsRecord),
            index: index,
            child: const Icon(Icons.drag_handle),
          ),
        ],
      ),
    );
  }
}
