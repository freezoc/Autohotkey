; NOTES
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN


#InstallKeybdHook

Process, Priority, , High

;CapsLock功能
    SetCapsLockState, Alwaysoff

    ;输入时间
        CapsLock & t::Send %A_YYYY%.%A_MM%.%A_DD% 

    ;启动程序
        CapsLock & e::Send !e ;Everything
        CapsLock & c::Send ^{sc029} ;Ditto({sc029}代表`)
        CapsLock & w::Send !^w ;打开微信
        CapsLock & q::Send !^z ;打开qq
        #Space::#s ;将Listary与Alfred快捷键一致

    ;方向键
        LCtrl & p::Send {Up}
        LCtrl & n::Send {Down}
        LCtrl & b::Send {Left}
        LCtrl & f::Send {Right}

        CapsLock & i::Send {Up}
        CapsLock & k::Send {Down}
        CapsLock & j::Send {Left}
        CapsLock & l::Send {Right}

        
; Ctrl与Alt互换
    LAlt & t::Send ^t ;New Tab
    LAlt & r::Send {F5} ;Refresh
    LAlt & w::Send ^{F4} ;Close Tab
    LAlt & q::Send !{F4} ;Close Windows

    LAlt & a::Send ^a ;Select All
    LAlt & c::Send ^c ;Copy
    LAlt & v::Send ^v ;Paste
    LAlt & x::Send ^x ;Cut

    LAlt & z::Send ^z ;Undo
    LAlt & y::Send ^y ;Redo

    LAlt & s::Send ^s ;Save
    LAlt & f::Send ^f ;Find
    LAlt & p::Send ^p ;Print
    LAlt & b::Send ^b ;Bold

    !+n::Send ^+n ;新建文件夹


;文本替换
    :*:{}::〔2020〕
    :*:<::<>{Left}
    :*:(::(){Left}
    :*:"::""{Left}


;wps表格
    #IfWinActive, ahk_exe et.exe
    CapsLock & h::Send ^m ;一般合并（删除其他行数据，再次点击可拆分还原）
    CapsLock & s::Send !hlf ;筛选
    LAlt & m::Send !hmn ;合并单元格（不删除数据，再次点击不可拆分还原）