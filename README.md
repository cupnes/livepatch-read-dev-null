# /dev/null を read するとメッセージを出力するLinuxカーネルのライブパッチ

## ビルド方法

`$ make KERNEL_SRC=/path/to/linux/kernel/src`

## パッチの適用方法

`$ sudo insmod livepatch-read-dev-null.ko`

## 動作確認

パッチを適用すると、/dev/nullのread時にメッセージを出力するようになります。

```
$ cat /dev/null
$ sudo tail -n 1 /var/log/messages
Jul 24 17:31:40 seven kernel: [ 1376.100255] Are you ok?
```

※ 万が一、「/dev/nullをreadしても何も返ってこない」事を期待した既存のアプリが存在しても問題無いよう、  
　 メッセージはカーネルログへ出力するようにしています。
