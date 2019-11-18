;Ctrl与Alt互换
LAlt & t::Send ^t
LAlt & w::Send ^{F4}
LAlt & q::Send !{F4}

LAlt & a::Send ^a
LAlt & c::Send ^c
LAlt & v::Send ^v
LAlt & x::Send ^x
LAlt & z::Send ^z

LAlt & s::Send ^s
LAlt & f::Send ^f
LAlt & p::Send ^p


;方向键
LCtrl & p::Send {Up}
LCtrl & n::Send {Down}
LCtrl & b::Send {Left}
LCtrl & f::Send {Right}


;新建文件夹
!+n::Send ^+n


;文本替换
:*:{}::〔2019〕
:*:<>::<>{Left}
:*:()::(){Left}
:*:""::“”{Left}


;CapsLock功能
;输入时间
CapsLock & t::Send %A_YYYY%.%A_MM%.%A_DD%
;启动程序
CapsLock & e::Send !e ;Everything
CapsLock & c::Send ^{sc029} ;Ditto({sc029}代表`)


;wps表格
#IfWinActive, ahk_exe et.exe
CapsLock & h::Send !hmn ;合并单元格（不删除数据）
LAlt & m::Send ^m ;一般合并（删除数据）