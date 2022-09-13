;如果没有在set.ini设置按键的话，就按这里的默认设置执行
keysInit:
global keyset:=CLSets.Keys


if(!CLSets.global.default_hotkey_scheme)
    ; "capslox" | “capslock-plus”
    CLSets.global.default_hotkey_scheme:="capslox"

if(CLSets.global.default_hotkey_scheme == "capslock_plus") {
    keySchemeInit_capslockPlus()
} else {
    keySchemeInit_capslox()
}

return


keySchemeInit_capslox(){
    global

    if(!keyset.press_caps) 
        keyset.press_caps:="keyFunc_disable"

    if(!keyset.caps_s)
        keyset.caps_s:="keyFunc_toggleCapsLock"

    if(!keyset.caps_k)
        keyset.caps_k:="keyFunc_moveDown"
    if(!keyset.caps_i)
        keyset.caps_i:="keyFunc_moveUp"
    if(!keyset.caps_l)
        keyset.caps_l:="keyFunc_moveRight"
    if(!keyset.caps_j)
        keyset.caps_j:="keyFunc_moveLeft"
    return
}



;----------------------------------------------------
keySchemeInit_capslockPlus(){
    global

    if(!keyset.press_caps) 
        keyset.press_caps:="keyFunc_disable"



    if(!keyset.caps_s)
        keyset.caps_s:="keyFunc_toggleCapsLock"
    if(!keyset.caps_d)
        keyset.caps_d:="keyFunc_moveDown"
    if(!keyset.caps_e)
        keyset.caps_e:="keyFunc_moveUp"
    if(!keyset.caps_f)
        keyset.caps_f:="keyFunc_moveRight"
    if(!keyset.caps_s)
        keyset.caps_s:="keyFunc_moveLeft"
    return
}
