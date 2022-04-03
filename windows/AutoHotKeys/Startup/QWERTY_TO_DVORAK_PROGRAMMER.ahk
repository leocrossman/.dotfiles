; Real Programmers DVORAK layout for AutoHotkey (MS Windows)
; See http://www.autohotkey.com/ for more information
; For this to work you have to make sure that the US (QWERTY) layout is installed,
; that is set as the default layout, and that it is set as the current layout.
; Otherwise some of the key mappings will be wrong.
;

#SingleInstance force
#NoEnv ; Recommended for performance and compatibility witih future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetTitleMatchMode 3 ; Exact matching to avoid confusing T/B with Tab/Backspace.

; + === Shift prefix
; SHIFT LAYER START
+`::~
+1::Send {1}
+2::Send {2}
+3::Send {3}
+4::Send {4}
+5::Send {5}
+6::Send {6}
+7::Send {7}
+8::Send {8}
+9::Send {9}
+0::Send {0}
+-::Send {`%}
+=::Send {``}

+q:::
+w::<
+e::>
+r::P
+t::Y
+y::F
+u::G
+i::C
+o::R
+p::L
+[::?
+]::^
+\::#

;+a::A
+s::O
+d::E
+f::U
+g::I
+h::D
+j::H
+k::T
+l::N
+`;::S
+'::_

+z::"
+x::Q
+c::J
+v::K
+b::X
+n::B
+m::M
+,::W
+.::V
+/::Z



; SHIFT LAYER END / BASE LAYER START
`::$
1::+
2::[
3::{
4::(
5::&
6::=
7::)
8::}
9::]
0::*
-::!
=::|

q::`;
w::,
e::.
r::p
t::y
y::f
u::g
i::c
o::r
p::l
[::/
]::@
\::\

;a::a
s::o
d::e
f::u
g::i
h::d
j::h
k::t
l::n
`;::s
'::-

z::'
x::q
c::j
v::k
b::x
n::b
m::m
,::w
.::v
/::z






; SHFT LAYER WITHOUT SHIFT MODIFIER
;;~::~
;!::1
;@::2
;#::3
;$::4
;%::5
;^::6
;&::7
;*::8
;(::9
;)::0
;_::Send {`%}
;+::|
;
;Q:::
;W::<
;E::>
;R::P
;T::Y
;Y::F
;U::G
;I::C
;O::R
;P::L
;{::?
;}::^
;|::#
;
;;A::A
;S::O
;D::E
;F::U
;G::I
;H::D
;J::H
;K::T
;L::N
;:::S
;"::_
;
;Z::"
;X::Q
;C::J
;V::K
;B::X
;N::B
;M::M
;<::W
;>::V
;?::Z
