set1 = Enum.into 2..6, HashSet.new
IO.inspect set1

# delete(set, term)
# Set1 から 3 を除去
IO.inspect "delete(set, term)"
IO.inspect Set.delete set1, 3

# difference(set1, set2)
IO.inspect "difference(set1, set2)"
set2 = Enum.into 4..8, HashSet.new
# Set1 から Set2 を除去
IO.inspect Set.difference set1, set2

# disjoint?(set1, set2)
IO.inspect "disjoint?(set1, set2)"
# 共通項があるので false
IO.inspect Set.disjoint? set1, set2
set3 = Enum.into 7..10, HashSet.new
# 共通項がないので true
IO.inspect Set.disjoint? set1, set3

# equal?(set1, set2)
IO.inspect "equal?(set1, set2)"
set4 = Enum.into 7..10, HashSet.new
IO.inspect Set.equal? set1, set4
IO.inspect Set.equal? set3, set4

# intersection(set1, set2)
IO.inspect "intersection(set1, set2)"
# 共通項のみを抽出する
# 共通項あり
IO.inspect Set.intersection set1, set2
# 共通項なし
IO.inspect Set.intersection set1, set3

# member?(hashset, term)
IO.inspect "member?(hashset, term)"
IO.inspect Set.member? set1, 2
IO.inspect Set.member? set1, 7

# put(hashset, term)
IO.inspect "put(hashset, term)"
# 新規要素の追加
IO.inspect Set.put set1, 7
# 重複要素の追加をしても内容はそのまま
IO.inspect Set.put set1, 6

# size(hashset)
IO.inspect "size(hashset)"
IO.inspect Set.size set1
set5 = Enum.into 1..10, HashSet.new
IO.inspect Set.size set5

# subset?(set1, set2)
IO.inspect "subset?(set1, set2)"
# set1 が set2 に含まれていれば真
IO.inspect Set.subset? Enum.into(2..4, HashSet.new), Enum.into(2..5, HashSet.new)
# set1 が set2 に含まれていなければ偽
IO.inspect Set.subset? Enum.into(2..5, HashSet.new), Enum.into(2..4, HashSet.new)

# union(set1, set2)
IO.inspect "union(set1, set2)"
IO.inspect Set.union Enum.into(2..4, HashSet.new), Enum.into(4..8, HashSet.new)
