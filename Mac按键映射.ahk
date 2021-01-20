;按键符号
;! = ALT
;^ = CTRL
;+ = SHIFT
;# = WIN

#InstallKeybdHook

Process, Priority, , High

;CapsLock功能
;禁用CapsLock
SetCapsLockState, Alwaysoff
;输入时间
CapsLock & t::Send %A_YYYY%.%A_MM%.%A_DD%
;启动程序
;Everything
CapsLock & e::Send !e
;打开Ditto
;{sc029}代表"`"
CapsLock & c::Send ^{sc029}
;打开微信
CapsLock & w::Send !^w
;打开qq
CapsLock & q::Send !^z
;将Listary与Alfred快捷键一致
#Space::#s
;方向键
CapsLock & i::Send {Up}
CapsLock & k::Send {Down}
CapsLock & j::Send {Left}
CapsLock & l::Send {Right}

;Ctrl与Alt互换
;Open
LAlt & o::Send  ^o
;New Tab
LAlt & t::Send ^t 
;Refresh
LAlt & r::Send {F5}
;Close Tab
LAlt & w::Send ^{F4}
;Close Windows
LAlt & q::Send !{F4}
;Select All
LAlt & a::Send ^a
;Copy
LAlt & c::Send ^c
;Paste
LAlt & v::Send ^v
;Cut
LAlt & x::Send ^x
;Undo
LAlt & z::Send ^z
;Redo
LAlt & y::Send ^y
;Save
LAlt & s::Send ^s
;Find
LAlt & f::Send ^f
;Print
LAlt & p::Send ^p
;Bold
LAlt & b::Send ^b

;使用符号可以避免按键冲突的情况
;新建文件夹
!+n::Send ^+n
;新建
!n::Send ^n

;文本替换
:*:{}::〔2021〕
:*:<::<>{Left}
:*:(::(){Left}
:*:"::""{Left}
:*:-[::- [ ]
::gxj::市工信局
::awb::市安委办
::sfb::市府办
::swb::市委办

;wps表格
#IfWinActive, ahk_exe et.exe
    ;一般合并（删除其他行数据，再次点击可拆分还原）
    CapsLock & h::Send ^m
    ;合并单元格（不删除数据，再次点击不可拆分还原）
    LAlt & m::Send !hmn
    ;筛选
    CapsLock & s::Send !at
    ;冻结
    CapsLock & f::Send !wff

;wps文档
#IfWinActive, ahk_exe wps.exe
    ;highlight
    CapsLock & h::Send !hi{Enter}

;Obsidian
#IfWinActive, ahk_exe obsidian.exe
    ;Edit/Preview
    LAlt & e::Send ^e