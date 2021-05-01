require "keybow"

-- Standard numberpad with light feedback --
    set_number = 0

function setup()
    meta_key = keybow.LEFT_CTRL

    keybow.auto_lights(false)
    keybow.clear_lights()
    keybow.set_pixel(0, 128, 0, 192)
    keybow.set_pixel(1, 128, 0, 192)
    keybow.set_pixel(2, 128, 0, 192)
    keybow.set_pixel(3, 128, 0, 192) 
    keybow.set_pixel(4, 0, 255, 0)
    keybow.set_pixel(5, 128, 0, 192) 
    keybow.set_pixel(6, 0, 255, 0)
    keybow.set_pixel(7, 0, 255, 0) 
    keybow.set_pixel(8, 0, 255, 0)
    keybow.set_pixel(9, 0, 0, 0)
    keybow.set_pixel(10, 0, 255, 0)
    keybow.set_pixel(11, 0, 0, 0)
    
end

-- Standard number pad mapping --

-- Key mappings --

function handle_key_00(pressed)
    -- F5 key? Flash green, then back to purple.
    -- keybow.tap_function_key(keybow.F5, pressed)
    keybow.set_key(keybow.F5, pressed)
    if pressed then
        keybow.set_pixel(0, 0, 255, 0)
    else
        keybow.set_pixel(0, 128, 0, 192)
    end
end

function handle_key_01(pressed)
    -- Blocked. (F10 key?) Flash white, then back to purple.
    --keybow.tap_function_key(keybow.F10, pressed)
    keybow.set_key(keybow.F10, pressed)
    if pressed then
        keybow.set_pixel(1, 255, 255, 255)
    else
        keybow.set_pixel(1, 128, 0, 192)
    end
end

function handle_key_02(pressed)
    --F11 key Flash white, then back to purple.
    --keybow.tap_function_key(keybow.F11, pressed)
    keybow.set_key(keybow.F11, pressed)
    if pressed then
        keybow.set_pixel(2, 255, 255, 255)
    else
        keybow.set_pixel(2, 128, 0, 192)
    end
end

function handle_key_03(pressed)
    -- Ctrl-Shift-B
    -- Flash white, then back to purple.
    keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_DOWN)
    keybow.set_modifier(keybow.LEFT_SHIFT, keybow.KEY_DOWN)
    keybow.tap_key("b")
    keybow.set_modifier(keybow.LEFT_SHIFT, keybow.KEY_UP)
    keybow.set_modifier(keybow.LEFT_CTRL, keybow.KEY_UP)
    if pressed then
        keybow.set_pixel(3, 255, 255, 255)
    else
        keybow.set_pixel(3, 128, 0, 192) 
    end
end

function handle_key_04(pressed)
    keybow.set_media_key(keybow.MEDIA_VOL_DOWN, pressed)
    -- Flash white, then back to green.
    if pressed then
        keybow.set_pixel(4, 255, 255, 255)
    else
        keybow.set_pixel(4, 0, 255, 0)
    end
end

function handle_key_05(pressed)
    -- Blocked. (Break key?) Flash red, then back to purple.
    if pressed then
        keybow.set_pixel(5, 255, 0, 0)
    else
        keybow.set_pixel(5, 128, 0, 192) 
    end
end

function handle_key_06(pressed)
    -- Flash white, then back to green.
    keybow.set_media_key(keybow.MEDIA_PREV, pressed)
    if pressed then
        keybow.set_pixel(6, 255, 255, 255)
    else
        keybow.set_pixel(6, 0, 255, 0)
    end
end

function handle_key_07(pressed)
    -- Flash white, then back to green.
    keybow.set_media_key(keybow.MEDIA_PLAYPAUSE, pressed)
    if pressed then
        keybow.set_pixel(7, 255, 255, 255)
    else
        keybow.set_pixel(7, 0, 255, 0)
    end
end

function handle_key_08(pressed)
    -- Flash white, then back to green.
    keybow.set_media_key(keybow.MEDIA_NEXT, pressed)
    if pressed then
        keybow.set_pixel(8, 255, 255, 255)
    else
        keybow.set_pixel(8, 0, 255, 0)
    end
end

function handle_key_09(pressed)
    -- Unset. ("Previous key set") Flash red, then back to black.
    if pressed then
        if set_number == 1 then
            keybow.set_pixel(9, 0, 0, 255)
            set_number = 0
        else
            keybow.set_pixel(9, 255, 255, 255)
        end
    else
        keybow.set_pixel(9, 0, 0, 0)
    end
end

function handle_key_10(pressed)
    -- Flash white, then back to green.
    keybow.set_media_key(keybow.MEDIA_VOL_UP, pressed)
    if pressed then
        keybow.set_pixel(10, 255, 255, 255)
    else
        keybow.set_pixel(10, 0, 255, 0)
    end
end

function handle_key_11(pressed)
    -- Unset. ("Next key set")Flash red, then back to black.
    if pressed then
        if set_number == 0 then
            keybow.set_pixel(11, 0, 0, 255)
            set_number = 1
        else
            keybow.set_pixel(11, 255, 255, 255)
        end
    else
        keybow.set_pixel(11, 0, 0, 0)
    end
end
