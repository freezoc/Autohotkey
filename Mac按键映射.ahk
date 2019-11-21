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
CapsLock::Send ^ ;CapsLock调整为Ctrl
CapsLock & t::Send %A_YYYY%.%A_MM%.%A_DD% ;输入时间

;启动程序
CapsLock & e::Send !e ;Everything
CapsLock & c::Send ^{sc029} ;Ditto({sc029}代表`)
#Space::#s ;将Listary与Alfred快捷键一致


;wps表格
#IfWinActive, ahk_exe et.exe
CapsLock & h::Send ^m ;一般合并（删除其他行数据，再次点击可拆分还原）
CapsLock & s::Send !hlf ;筛选
LAlt & m::Send !hmn ;合并单元格（不删除数据，再次点击不可拆分还原）