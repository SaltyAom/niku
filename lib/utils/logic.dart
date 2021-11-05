T? applyNullable<T>(T? t1, T? t2) {
  if (t2 == null) return t1;
  if (t1 == null) return t2;

  return t2;
}
