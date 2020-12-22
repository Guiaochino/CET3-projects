--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

GAME_OBJECT_DEFS = {
    ['switch'] = {
        type = 'switch',
        texture = 'switches',
        frame = 2,
        width = 16,
        height = 16,
        solid = false,
        defaultState = 'unpressed',
        states = {
            ['unpressed'] = {
                frame = 2
            },
            ['pressed'] = {
                frame = 1
            }
        }
    },--added heart object
    ['heart'] = {
        type = 'heart',
        texture = 'hearts',
        frame = 5,
        width = 16,
        height = 16,
        solid = false,
        defaultState ='heartspawn',
        states = {
            ['heartspawn'] = {
                frame = 5
            },
            --onConsume = function(player, object)
                --if object.consumed == false then
                    --gSounds['life-up']:setVolume(0.7)
                    ---gSounds['life-up']:play()
                    --object.consumed = true
                --end
            --end
        }
    },
    ['pot'] = {
        type = 'pot',
        texture = 'tiles',
        frame = 14,
        width = 16,
        height = 16,
        solid = true,
        consumable = false,
        defaultState = 'idle',
        states = {
            ['idle'] = {
                frame = 14
            }
        }
        
    }
}
