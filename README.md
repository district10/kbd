# kbd

My Keyboard Configuration. [Fork me on GitHub](https://github.com/district10/kbd)

-   Online: <http://tangzhixiong.com/kbd>
-   gh-pages branch: <https://github.com/district10/kbd/tree/gh-pages>

---

## XCAPE

download: [xcape.tar](xcape.tar)

```bash
$ tar xf xcape.tar
$ sudo apt-get install git gcc make pkg-config libx11-dev libxtst-dev libxi-dev
$ make
$ sudo make install                     # or `export PATH=/path/to/cur/dir:$PATH'
```

## Neo

if have xcape, download [neo.xmodmap](neo.xmodmap)

```bash
xmodmap ./neo.xmodmap
xcape -e "ISO_Group_Shift=space"
```

## Dvorak

if don't have xcape, download [dvorak.xmodmap](dvorak.xmodmap)

```bash
xmodmap ./dvorak.xmodmap
```

---

## Usage of `xmodmap`

man xmodmap:

```
NAME
       xmodmap - utility for modifying keymaps and pointer button mappings in X

SYNOPSIS
       xmodmap [-options ...] [filename]

DESCRIPTION
       The  xmodmap  program  is used to edit and display the keyboard modifier
       map and keymap table that are used by client applications to convert
       event keycodes into keysyms.  It is usually run from the user's session
       startup script to configure the keyboard according to personal tastes.

       -pke    This  option  indicates  that  the  current keymap table should
               be printed on the standard output in the form of expressions
               that can be fed back to xmodmap.
```

```bash
$ xmodmap -pke > dump.xmodmap
$ xmodmap ./dump.xmodmap
$ cat dump.xmodmap
keycode   8 =
keycode   9 = Escape NoSymbol Escape
keycode  10 = 1 exclam space
keycode  11 = 2 at colon
keycode  12 = 3 numbersign exclam
keycode  13 = 4 dollar Next
keycode  14 = 5 percent Prior
keycode  15 = 6 asciicircum Multi_key
keycode  16 = 7 ampersand 2
keycode  17 = 8 asterisk 0
keycode  18 = 9 Caps_Lock 1
keycode  19 = 0 parenright 0 parenright
keycode  20 = space Caps_Lock 1
keycode  21 = equal plus equal plus
keycode  22 = BackSpace BackSpace BackSpace BackSpace
keycode  23 = Super_L Super_L Super_L
keycode  24 = semicolon colon Insert
keycode  25 = comma less quotedbl
keycode  26 = period greater Up
keycode  27 = k K bracketright
keycode  28 = y Y F2
keycode  29 = f F F11
keycode  30 = g G bracketleft
keycode  31 = c C parenright
keycode  32 = l L parenleft
keycode  33 = z Z asciitilde
keycode  34 = bracketleft braceleft bracketleft braceleft
keycode  35 = bracketright braceright bracketright braceright
keycode  36 = Return Shift_Lock Control_L
keycode  37 = Control_L Control_L Control_L
keycode  38 = a A Home
keycode  39 = o O Left
keycode  40 = e E Down
keycode  41 = i I Right
keycode  42 = u U End
keycode  43 = d D Delete
keycode  44 = r R Return
keycode  45 = t T Tab
keycode  46 = s S Escape
keycode  47 = n N bar
keycode  48 = Control_R Control_R Control_R
keycode  49 = grave asciitilde grave asciitilde
keycode  50 = Shift_L NoSymbol Shift_L
keycode  51 = backslash bar backslash bar
keycode  52 = p P apostrophe
keycode  53 = q Q braceleft
keycode  54 = j J minus
keycode  55 = h H underscore
keycode  56 = x X braceright
keycode  57 = b B BackSpace
keycode  58 = m M equal
keycode  59 = w W plus
keycode  60 = v V grave
keycode  61 = slash question backslash
keycode  62 = Shift_R NoSymbol Shift_R
keycode  63 = KP_Multiply KP_Multiply KP_Multiply KP_Multiply KP_Multiply KP_Multiply XF86ClearGrab KP_Multiply KP_Multiply XF86ClearGrab
keycode  64 = Alt_L Meta_L Alt_L Meta_L
keycode  65 = Mode_switch Mode_switch ISO_First_Group
keycode  66 = Control_L Control_L Control_L
keycode  67 = F1 F1 F1 F1 F1 F1 XF86Switch_VT_1 F1 F1 XF86Switch_VT_1
keycode  68 = F2 F2 F2 F2 F2 F2 XF86Switch_VT_2 F2 F2 XF86Switch_VT_2
keycode  69 = F3 F3 F3 F3 F3 F3 XF86Switch_VT_3 F3 F3 XF86Switch_VT_3
keycode  70 = F4 F4 F4 F4 F4 F4 XF86Switch_VT_4 F4 F4 XF86Switch_VT_4
keycode  71 = F5 F5 F5 F5 F5 F5 XF86Switch_VT_5 F5 F5 XF86Switch_VT_5
keycode  72 = F6 F6 F6 F6 F6 F6 XF86Switch_VT_6 F6 F6 XF86Switch_VT_6
keycode  73 = F7 F7 F7 F7 F7 F7 XF86Switch_VT_7 F7 F7 XF86Switch_VT_7
keycode  74 = F8 F8 F8 F8 F8 F8 XF86Switch_VT_8 F8 F8 XF86Switch_VT_8
keycode  75 = F9 F9 F9 F9 F9 F9 XF86Switch_VT_9 F9 F9 XF86Switch_VT_9
keycode  76 = F10 F10 F10 F10 F10 F10 XF86Switch_VT_10 F10 F10 XF86Switch_VT_10
keycode  77 = Num_Lock NoSymbol Num_Lock
keycode  78 = Scroll_Lock NoSymbol Scroll_Lock
keycode  79 = KP_Home KP_7 KP_Home KP_7
keycode  80 = KP_Up KP_8 KP_Up KP_8
keycode  81 = KP_Prior KP_9 KP_Prior KP_9
keycode  82 = KP_Subtract KP_Subtract KP_Subtract KP_Subtract KP_Subtract KP_Subtract XF86Prev_VMode KP_Subtract KP_Subtract XF86Prev_VMode
keycode  83 = KP_Left KP_4 KP_Left KP_4
keycode  84 = KP_Begin KP_5 KP_Begin KP_5
keycode  85 = KP_Right KP_6 KP_Right KP_6
keycode  86 = KP_Add KP_Add KP_Add KP_Add KP_Add KP_Add XF86Next_VMode KP_Add KP_Add XF86Next_VMode
keycode  87 = KP_End KP_1 KP_End KP_1
keycode  88 = KP_Down KP_2 KP_Down KP_2
keycode  89 = KP_Next KP_3 KP_Next KP_3
keycode  90 = KP_Insert KP_0 KP_Insert KP_0
keycode  91 = KP_Delete KP_Decimal KP_Delete KP_Decimal
keycode  92 = ISO_Level3_Shift NoSymbol ISO_Level3_Shift
keycode  93 =
keycode  94 = less greater less greater bar brokenbar bar brokenbar
keycode  95 = F11 F11 F11 F11 F11 F11 XF86Switch_VT_11 F11 F11 XF86Switch_VT_11
keycode  96 = F12 F12 F12 F12 F12 F12 XF86Switch_VT_12 F12 F12 XF86Switch_VT_12
keycode  97 =
keycode  98 = Katakana NoSymbol Katakana
keycode  99 = Hiragana NoSymbol Hiragana
keycode 100 = Henkan_Mode NoSymbol Henkan_Mode
keycode 101 = Hiragana_Katakana NoSymbol Hiragana_Katakana
keycode 102 = Muhenkan NoSymbol Muhenkan
keycode 103 =
keycode 104 = KP_Enter NoSymbol KP_Enter
keycode 105 = Control_R NoSymbol Control_R
keycode 106 = KP_Divide KP_Divide KP_Divide KP_Divide KP_Divide KP_Divide XF86Ungrab KP_Divide KP_Divide XF86Ungrab
keycode 107 = Print Sys_Req Print Sys_Req
keycode 108 = Alt_R Meta_R Alt_R Meta_R
keycode 109 = Linefeed NoSymbol Linefeed
keycode 110 = Home NoSymbol Home
keycode 111 = Up NoSymbol Up
keycode 112 = Prior NoSymbol Prior
keycode 113 = Left NoSymbol Left
keycode 114 = Right NoSymbol Right
keycode 115 = End NoSymbol End
keycode 116 = Down NoSymbol Down
keycode 117 = Next NoSymbol Next
keycode 118 = Insert NoSymbol Insert
keycode 119 = Delete NoSymbol Delete
keycode 120 =
keycode 121 = XF86AudioMute NoSymbol XF86AudioMute
keycode 122 = XF86AudioLowerVolume NoSymbol XF86AudioLowerVolume
keycode 123 = XF86AudioRaiseVolume NoSymbol XF86AudioRaiseVolume
keycode 124 = XF86PowerOff NoSymbol XF86PowerOff
keycode 125 = KP_Equal NoSymbol KP_Equal
keycode 126 = plusminus NoSymbol plusminus
keycode 127 = Pause Break Pause Break
keycode 128 = XF86LaunchA NoSymbol XF86LaunchA
keycode 129 = KP_Decimal KP_Decimal KP_Decimal KP_Decimal
keycode 130 = Hangul NoSymbol Hangul
keycode 131 = Hangul_Hanja NoSymbol Hangul_Hanja
keycode 132 =
keycode 133 = Super_L NoSymbol Super_L
keycode 134 = Super_R NoSymbol Super_R
keycode 135 = Menu NoSymbol Menu
keycode 136 = Cancel NoSymbol Cancel
keycode 137 = Redo NoSymbol Redo
keycode 138 = SunProps NoSymbol SunProps
keycode 139 = Undo NoSymbol Undo
keycode 140 = SunFront NoSymbol SunFront
keycode 141 = XF86Copy NoSymbol XF86Copy
keycode 142 = XF86Open NoSymbol XF86Open
keycode 143 = XF86Paste NoSymbol XF86Paste
keycode 144 = Find NoSymbol Find
keycode 145 = XF86Cut NoSymbol XF86Cut
keycode 146 = Help NoSymbol Help
keycode 147 = XF86MenuKB NoSymbol XF86MenuKB
keycode 148 = XF86Calculator NoSymbol XF86Calculator
keycode 149 =
keycode 150 = XF86Sleep NoSymbol XF86Sleep
keycode 151 = XF86WakeUp NoSymbol XF86WakeUp
keycode 152 = XF86Explorer NoSymbol XF86Explorer
keycode 153 = XF86Send NoSymbol XF86Send
keycode 154 =
keycode 155 = XF86Xfer NoSymbol XF86Xfer
keycode 156 = XF86Launch1 NoSymbol XF86Launch1
keycode 157 = XF86Launch2 NoSymbol XF86Launch2
keycode 158 = XF86WWW NoSymbol XF86WWW
keycode 159 = XF86DOS NoSymbol XF86DOS
keycode 160 = XF86ScreenSaver NoSymbol XF86ScreenSaver
keycode 161 =
keycode 162 = XF86RotateWindows NoSymbol XF86RotateWindows
keycode 163 = XF86Mail NoSymbol XF86Mail
keycode 164 = XF86Favorites NoSymbol XF86Favorites
keycode 165 = XF86MyComputer NoSymbol XF86MyComputer
keycode 166 = XF86Back NoSymbol XF86Back
keycode 167 = XF86Forward NoSymbol XF86Forward
keycode 168 =
keycode 169 = XF86Eject NoSymbol XF86Eject
keycode 170 = XF86Eject XF86Eject XF86Eject XF86Eject
keycode 171 = XF86AudioNext NoSymbol XF86AudioNext
keycode 172 = XF86AudioPlay XF86AudioPause XF86AudioPlay XF86AudioPause
keycode 173 = XF86AudioPrev NoSymbol XF86AudioPrev
keycode 174 = XF86AudioStop XF86Eject XF86AudioStop XF86Eject
keycode 175 = XF86AudioRecord NoSymbol XF86AudioRecord
keycode 176 = XF86AudioRewind NoSymbol XF86AudioRewind
keycode 177 = XF86Phone NoSymbol XF86Phone
keycode 178 =
keycode 179 = XF86Tools NoSymbol XF86Tools
keycode 180 = XF86HomePage NoSymbol XF86HomePage
keycode 181 = XF86Reload NoSymbol XF86Reload
keycode 182 = XF86Close NoSymbol XF86Close
keycode 183 =
keycode 184 =
keycode 185 = XF86ScrollUp NoSymbol XF86ScrollUp
keycode 186 = XF86ScrollDown NoSymbol XF86ScrollDown
keycode 187 = parenleft NoSymbol parenleft
keycode 188 = parenright NoSymbol parenright
keycode 189 = XF86New NoSymbol XF86New
keycode 190 = Redo NoSymbol Redo
keycode 191 = XF86Tools NoSymbol XF86Tools
keycode 192 = XF86Launch5 NoSymbol XF86Launch5
keycode 193 = XF86Launch6 NoSymbol XF86Launch6
keycode 194 = XF86Launch7 NoSymbol XF86Launch7
keycode 195 = XF86Launch8 NoSymbol XF86Launch8
keycode 196 = XF86Launch9 NoSymbol XF86Launch9
keycode 197 =
keycode 198 = XF86AudioMicMute NoSymbol XF86AudioMicMute
keycode 199 = XF86TouchpadToggle NoSymbol XF86TouchpadToggle
keycode 200 = XF86TouchpadOn NoSymbol XF86TouchpadOn
keycode 201 = XF86TouchpadOff NoSymbol XF86TouchpadOff
keycode 202 =
keycode 203 = Mode_switch NoSymbol Mode_switch
keycode 204 = NoSymbol Alt_L NoSymbol Alt_L
keycode 205 = NoSymbol Meta_L NoSymbol Meta_L
keycode 206 = NoSymbol Super_L NoSymbol Super_L
keycode 207 = NoSymbol Hyper_L NoSymbol Hyper_L
keycode 208 = XF86AudioPlay NoSymbol XF86AudioPlay
keycode 209 = XF86AudioPause NoSymbol XF86AudioPause
keycode 210 = XF86Launch3 NoSymbol XF86Launch3
keycode 211 = XF86Launch4 NoSymbol XF86Launch4
keycode 212 = XF86LaunchB NoSymbol XF86LaunchB
keycode 213 = XF86Suspend NoSymbol XF86Suspend
keycode 214 = XF86Close NoSymbol XF86Close
keycode 215 = XF86AudioPlay NoSymbol XF86AudioPlay
keycode 216 = XF86AudioForward NoSymbol XF86AudioForward
keycode 217 =
keycode 218 = Print NoSymbol Print
keycode 219 =
keycode 220 = XF86WebCam NoSymbol XF86WebCam
keycode 221 =
keycode 222 =
keycode 223 = XF86Mail NoSymbol XF86Mail
keycode 224 = XF86Messenger NoSymbol XF86Messenger
keycode 225 = XF86Search NoSymbol XF86Search
keycode 226 = XF86Go NoSymbol XF86Go
keycode 227 = XF86Finance NoSymbol XF86Finance
keycode 228 = XF86Game NoSymbol XF86Game
keycode 229 = XF86Shop NoSymbol XF86Shop
keycode 230 =
keycode 231 = Cancel NoSymbol Cancel
keycode 232 = XF86MonBrightnessDown NoSymbol XF86MonBrightnessDown
keycode 233 = XF86MonBrightnessUp NoSymbol XF86MonBrightnessUp
keycode 234 = XF86AudioMedia NoSymbol XF86AudioMedia
keycode 235 = XF86Display NoSymbol XF86Display
keycode 236 = XF86KbdLightOnOff NoSymbol XF86KbdLightOnOff
keycode 237 = XF86KbdBrightnessDown NoSymbol XF86KbdBrightnessDown
keycode 238 = XF86KbdBrightnessUp NoSymbol XF86KbdBrightnessUp
keycode 239 = XF86Send NoSymbol XF86Send
keycode 240 = XF86Reply NoSymbol XF86Reply
keycode 241 = XF86MailForward NoSymbol XF86MailForward
keycode 242 = XF86Save NoSymbol XF86Save
keycode 243 = XF86Documents NoSymbol XF86Documents
keycode 244 = XF86Battery NoSymbol XF86Battery
keycode 245 = XF86Bluetooth NoSymbol XF86Bluetooth
keycode 246 = XF86WLAN NoSymbol XF86WLAN
keycode 247 =
keycode 248 =
keycode 249 =
keycode 250 =
keycode 251 =
keycode 252 =
keycode 253 =
keycode 254 =
keycode 255 =
```

add to your `.profile`:

```bash
( pgrep xcape || cd /home/tzx/git/neo_keyboard_layout/neo2015 && ./neo.sh; )
```

---

Credits

-   [district10/neo_keyboard_layout: 我的键盘布局。Neo keyboard layout variants, for Qwerty, Dvorak, Programmer Dvorak users. English ! Not German, and without greek letters.](https://github.com/district10/neo_keyboard_layout)
