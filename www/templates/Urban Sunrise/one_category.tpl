[case:[special:lang]|
  [equ:altNew=New]
  [equ:ttlThreads=Threads]
  [equ:ttlPosts=Posts]
  [equ:ttlUnread=Unread]
|
  [equ:altNew=Нови]
  [equ:ttlThreads=Теми]
  [equ:ttlPosts=Мнения]
  [equ:ttlUnread=Нови]
|
  [equ:altNew=Новые]
  [equ:ttlThreads=Темы]
  [equ:ttlPosts=Мнения]
  [equ:ttlUnread=Новые]
|
  [equ:altNew=Nouveau]
  [equ:ttlThreads=Sujets]
  [equ:ttlPosts=Messages]
  [equ:ttlUnread=Non-lus]
|
  [equ:altNew=Neu]
  [equ:ttlThreads=Themen]
  [equ:ttlPosts=Beiträge]
  [equ:ttlUnread=Ungelesen]
]

<div class="category">
  <a class="[case:[Unread]||category-unread]" href="/[Tag]/">[Description] <span>(#[Tag])</span></a>
  <div>[const:ttlThreads]<br><span>[ThreadCnt]</span></div>
  <div>[const:ttlPosts]<br><span>[PostCnt]</span></div>
  [case:[special:userid]||<div>[const:ttlUnread]<br><span>[unread]</span></div>]
</div>