[css:sqlite.css]

[case:[special:lang]|
  [equ:btnList=Thread list]
  [equ:btnSettings=Settings]
  [equ:btnSQL=SQL console]
  [equ:ttlName=Script name]
  [equ:phScript=Script name]
  [equ:altEdit=Edit]
  [equ:altSave=Save]
  [equ:altDel=Delete]
  [equ:ttlStmt=SQL statement]
  [equ:btnExec=Exec]
  [equ:btnRevert=Revert]
|
  [equ:btnList=Списък теми]
  [equ:btnSettings=Настройки]
  [equ:btnSQL=SQL конзола]
  [equ:ttlName=Име на скрипта]
  [equ:phScript=Име на скрипта]
  [equ:altEdit=Редактиране]
  [equ:altSave=Запис]
  [equ:altDel=Изтриване]
  [equ:ttlStmt=SQL команди]
  [equ:btnExec=Изпълни]
  [equ:btnRevert=Отказ]
|
  [equ:btnList=Список тем]
  [equ:btnSettings=Настройки]
  [equ:btnSQL=SQL конзоль]
  [equ:ttlName=Имя скрипта]
  [equ:phScript=Имя скрипта]
  [equ:altEdit=Редактировать]
  [equ:altSave=Записать]
  [equ:altDel=Удалить]
  [equ:ttlStmt=SQL команды]
  [equ:btnExec=Выполнить]
  [equ:btnRevert=Отказ]
|
  [equ:btnList=Liste des sujets]
  [equ:btnSettings=Paramètres]
  [equ:btnSQL=Console SQL]
  [equ:ttlName=Nom du script]
  [equ:phScript=Nom du script]
  [equ:altEdit=Éditer]
  [equ:altSave=Enregistrer]
  [equ:altDel=Supprimer]
  [equ:ttlStmt=SQL statement]
  [equ:btnExec=Exec]
  [equ:btnRevert=Revert]
|
  [equ:btnList=Liste der Themen]
  [equ:btnSettings=Einstellungen]
  [equ:btnSQL=SQL-Konsole]
  [equ:ttlName=Scriptname]
  [equ:phScript=Scriptname]
  [equ:altEdit=Ändern]
  [equ:altSave=Speichern]
  [equ:altDel=Löschen]
  [equ:ttlStmt=SQL-Statement]
  [equ:btnExec=Ausführen]
  [equ:btnRevert=Zurücksetzen]
]

<div class="console">
  <form id="editform" action="/!sqlite/#sql_result" method="post">
    <p>[const:ttlStmt]:</p>
    <textarea class="sql_editor" name="source" id="source"  placeholder="SQL">[source]</textarea>
    <div>
      <a id="sql_result" style="visibility: hidden; margin: 0px; padding: 0px;"></a>
      <input class="btn" type="submit" value="[const:btnExec]" >
      <input class="btn" type="reset" value="[const:btnRevert]" >
      <input type="hidden" name="ticket" value="[Ticket]" >
    </div>
  </form>
  [html:[result]]
</div>