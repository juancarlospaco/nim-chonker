import os, strutils, rdstdin, times, json

setControlCHook((proc {.noconv.} = quit" CTRL+C Pressed,shutting down,Bye! "))

when isMainModule:
  echo """Chonker: Your Arch Linux is too fat. Lets make it lightweight...
  Arch Linux Pacman Optimizer: You can disable installing stuff that you dont use.
  You can Cancel at any time. To understand how this works see https://u.nu/ebqz
  This wont touch your current pacman.conf nor delete any files or folders.
  (ENTER = No, CTRL+C = Cancel)."""
  var pacmanconf = "# " & $now() & " by " & getEnv"USER" & " with Nim " & NimVersion & "\n[options]\n"
  for item in parseJson(static(staticRead"chonker.json")).pairs:
    if readLineFromStdin("Disable installing " & $item.key & " ? (y/N): ").normalize == "y":
      pacmanconf.add "NoExtract = " & item.val.getStr & "\n"
  let newfile = getCurrentDir() / "chonker.ini"
  writeFile(newfile, pacmanconf)
  echo $pacmanconf.countLines & " Pacman Optimizations --> " & newfile
  when defined(overwrite): moveFile(newfile, "/etc/pacman.d/chonker.conf")
  else: echo "\nsudo mv --force " & newfile & " /etc/pacman.d/chonker.conf\n"
