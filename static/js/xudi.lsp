(defun say-to-xudi (&rest some-words)
  (if (equal :show-number (car (last some-words)))
    (dolist (word (butlast some-words))
      (format t "  ~a. ~a~%"  (+ (position word some-words) 1) word))
    (format t "~{~a~%~}" some-words)))

;(defmacro say-with-func (func &rest args)
;  `(funcall #',func ,@args))

(defmacro say (func &rest args)
  `(funcall (read-from-string ,func) ,@args))

(defun first-meet ()
  (say-to-xudi "Admaster来了一个清秀的小男人-徐迪,黑黑的皮肤贱贱的笑"))

(defun since-morning-party ()
  (say-to-xudi "原来徐迪懂fp,竟然还会clojure!!!"))

(defun i-do-not-know-when-to-begin ()
  (say-to-xudi "徐迪成为了厂公,官居二品,杨博无法望其项背"))

(defun bad-news-came ()
  (say-to-xudi "不记得是哪一天,厂公说他要去读研了，在苏州的XXX大学-有人欢喜有人愁"))

(defun xiong-qi ()
  (say-to-xudi "不知从哪一天,厂公在admaster的基调引导下,开始积极表达自己:"
               "厂公去KTV唱歌了!"
               "厂公和妹子表白了(虽然被拒)!!"
               "厂公还会uno!!!" :show-number))

(defun last-day ()
  (say-to-xudi "今天是最后一天，小明有几句话送给厂公，并且祝读研时代xing福(Not Use Hand)"))

(defun my-suggestion ()
  (say-to-xudi "花三分之一让自己有趣-跟我读: 要-有-趣"
               "放弃java跟我们混吧: 前面一片黑暗"
               "厂公啊你不懂女人的心( ⊙o⊙ )哇"
               "还没表白的,今晚...额额 你懂得"
               "没有女友，你混到了不少基友" :show-number))

(defvar *func* '("first-meet" "since-morning-party" "i-do-not-know-when-to-begin"
                 "bad-news-came" "xiong-qi" "last-day" "my-suggestion"))

(loop for fn in *func*
  do (say fn))
