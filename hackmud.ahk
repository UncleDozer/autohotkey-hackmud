; Run Hackmud macro script on hackmud startup
#IfWinActive hackmud
  {
    setkeydelay 10
    ; Ctrl-w for word deletion
    ^w::^BS
    ; Ctrl-x for copy
    ^x::^c
    ; Ctrl-c for command line clear
    ^c::Escape
    ; Alt-Enter for borderless fullscreen
    !Enter::
    {
      SetWinDelay, 500
      WinWaitActive, hackmud
      ; WinMaximize, hackmud
      WinMove, hackmud, ,0 ,0, 1920, 1080
      WinSet, Style, -0xC40000, hackmud
      WinSet, Style, -0xC00000, hackmud
      WinSet, AlwaysOnTop, On, hackmud
      Return
    }

    Return
  }
