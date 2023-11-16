typedef KeyProvider<TItem, TKey> = TKey Function(TItem);
typedef ValueProvider<TItem, TValue> = TValue Function(TItem);

extension IterableExtension<T> on Iterable<T> {
  Map<TKey, TValue> toMap<TKey, TValue>(KeyProvider<T, TKey> keyProvider, ValueProvider<T, TValue> valueProvider) {
    return {for (var e in this) keyProvider(e): valueProvider(e)};
  }
}
