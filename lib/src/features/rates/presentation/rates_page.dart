import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rates_app/src/common/extensions/date_time_extension.dart';
import 'package:rates_app/src/common/extensions/number_extension.dart';
import 'package:rates_app/src/features/rates/cubits/rates_cubit.dart';
import 'package:rates_app/src/features/rates/cubits/rates_state.dart';
import 'package:rates_app/src/features/rates/data/currency_with_multiple_rates.dart';
import 'package:rates_app/src/infrastructure/routing/app_router.dart';
import 'package:rates_app/src/l10n/app_localizations.dart';

class RatesPage extends StatelessWidget implements AutoRouteWrapper {
  const RatesPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) =>
      BlocProvider<RatesCubit>(create: (_) => GetIt.instance<RatesCubit>(), child: this);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatesCubit, RatesState>(
      builder: (context, state) => state.when(
        loading: () => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(AppLocalizations.of(context)!.currencyRates),
          ),
          body: const Center(child: CircularProgressIndicator()),
        ),
        loaded: (dates, rates) => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(AppLocalizations.of(context)!.currencyRates),
            actions: [
              IconButton(
                  onPressed: () => context.router.push(const SettingsPageRoute()), icon: const Icon(Icons.settings))
            ],
          ),
          body: Column(
            children: [
              ListTile(
                tileColor: Colors.grey.withOpacity(0.3),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(dates[0].toDateOnlyString()),
                    const SizedBox(width: 10),
                    Text(dates[1].toDateOnlyString()),
                  ],
                ),
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () => context.read<RatesCubit>().updatesAsync(),
                  child: ListView.builder(
                    itemCount: rates.length,
                    itemBuilder: (c, i) => _buildRow(rates[i]),
                  ),
                ),
              ),
            ],
          ),
        ),
        failed: () => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(AppLocalizations.of(context)!.currencyRates),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(CurrencyWithMultipleRates currencyWithMultipleRates) {
    return ListTile(
      title: Text(currencyWithMultipleRates.currency.code),
      subtitle: Text('${currencyWithMultipleRates.currency.scale} ${currencyWithMultipleRates.currency.multipleName}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(currencyWithMultipleRates.rates[0].rate.toFormattedString()),
          const SizedBox(width: 22),
          Text(currencyWithMultipleRates.rates[1].rate.toFormattedString()),
        ],
      ),
    );
  }
}
