gitlog2markdown
===============

Gitのログをmarkdown形式で出力します。

元記事：http://qiita.com/yuku_t/items/7c2077e31b2480a2689e

使い方
---

1. Gitリポジトリの直下に`gitlog2markdown.sh`をコピーします。
2. `gitlog2markdown.sh`を実行すればmarkdown形式で出力されます。

```
# sh gitlog2markdown.sh
hash | title
-----|------
[beba949](https://github.com/bossato/chef/commit/beba949) | create MySQL cookbook
[88f1110](https://github.com/bossato/chef/commit/88f1110) | add PHP recipe, attributes, etc...
[88e2860](https://github.com/bossato/chef/commit/88e2860) | add PHP default template
[ac46e4c](https://github.com/bossato/chef/commit/ac46e4c) | add PHP cookbook
[4128af1](https://github.com/bossato/chef/commit/4128af1) | add Apache cookbook
[2ee346e](https://github.com/bossato/chef/commit/2ee346e) | Initial commit
```

オプション
---
- 時間指定(指定なしの場合は12時間前からのログ)

```
# sh gitlog2markdown.sh 500
```

- リモート先指定(指定なしの場合はorigin)

```
# sh gitlog2markdown.sh 500 upstream
```
