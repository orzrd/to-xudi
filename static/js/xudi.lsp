(<span class="keyword">defun</span> <span class="custom">say-to-xudi</span> (&rest some-words)
  (if (equal :show-number (car (last some-words)))
    (dolist (word (butlast some-words))
      (format t "  ~a. ~a~%"  (+ (position word some-words) 1) word))
    (format t "~{~a~%~}" some-words)))

;(defmacro say-with-func (func &rest args)
;  `(funcall #',func ,@args))

(defmacro say (func &rest args)
  `(funcall (read-from-string ,func) ,@args))

(<span class="keyword">defun</span> first-meet ()
  (<span class="custom">say-to-xudi</span> "Admaster来了一个清秀的小男人-徐迪,黑黑的皮肤贱贱的笑"))

(<span class="keyword">defun</span> since-morning-party ()
  (<span class="custom">say-to-xudi</span> "原来徐迪懂fp,竟然还会clojure!!!"))

(<span class="keyword">defun</span> i-do-not-know-when-to-begin ()
  (<span class="custom">say-to-xudi</span> "徐迪成为了厂公,官居二品,杨博无法望其项背"))

(<span class="keyword">defun</span> bad-news-came ()
  (<span class="custom">say-to-xudi</span> "不记得是哪一天,厂公说他要去读研了，在苏州的XXX大学-有人欢喜有人愁"))

(<span class="keyword">defun</span> xiong-qi ()
  (<span class="custom">say-to-xudi</span> "不知从哪一天,厂公在admaster的基调引导下,开始积极表达自己:"
               "厂公去KTV唱歌了!"
               "厂公和妹子表白了(虽然被拒)!!"
               "厂公还会uno!!!" :show-number))

(<span class="keyword">defun</span> last-day ()
  (<span class="custom">say-to-xudi</span> "今天是最后一天，小明有几句话送给厂公，并且祝读研时代xing福(Not Use Hand)"))

(<span class="keyword">defun</span> my-suggestion ()
  (<span class="custom">say-to-xudi</span> "花三分之一让自己有趣-跟我读: 要-有-趣"
               "放弃java跟我们混吧: 前面一片黑暗"
               "厂公啊你不懂女人的心( ⊙o⊙ )哇"
               "还没表白的,今晚...额额 你懂得"
               "没有女友，你混到了不少基友" :show-number))

(defvar *func* '("first-meet" "since-morning-party" "i-do-not-know-when-to-begin"
                 "bad-news-came" "xiong-qi" "last-day" "my-suggestion"))

(loop for fn in *func*
  do (say fn))
