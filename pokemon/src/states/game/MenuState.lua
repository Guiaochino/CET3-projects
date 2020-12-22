--[[
    GD50
    Pokemon

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

MenuState = Class{__includes = BaseState}

function MenuState:init(stats, onClose)
    self.stats = stats
    self.onClose = onClose
    self.statsMenu = Menu {
        x = 110,
        y = 1,
        width = 176,
        height = 208,
        items = {
            {
                text = ('Player Statistics'),
                onSelect = function ()
                end
            },
            {
                text = self:createText('HP'),
                onSelect = function ()
                end
            },
            {
                text = self:createText('Attack'),
                onSelect = function ()
                end
            },
            {
                text = self:createText('Defense'),
                onSelect = function ()
                end
            },
            {
                text = self:createText('Speed'),
                onSelect = function ()
                end
            }
        },
        noSelect = true
    }
end

function MenuState:createText(type)
    local X, Y, Z = ''

    if type == 'HP' then
        X = self.stats.X_HP
        Y = self.stats.Y_HP
        Z = self.stats.Z_HP
    elseif type == 'Attack' then
        X = self.stats.X_ATTACK
        Y = self.stats.Y_ATTACK
        Z = self.stats.Z_ATTACK
    elseif type == 'Defense'  then
        X = self.stats.X_DEFENSE
        Y = self.stats.Y_DEFENSE
        Z = self.stats.Z_DEFENSE
    elseif type == 'Speed'  then
        X = self.stats.X_SPEED
        Y = self.stats.Y_SPEED
        Z = self.stats.Z_SPEED
    end

    return type .. ': ' .. tostring(X) .. ' + ' .. tostring(Y) .. ' = ' .. tostring(Z)
end

function MenuState:update(dt)
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') or love.keyboard.wasPressed('space') then
        gStateStack:pop()
        self.onClose()
    end
    self.statsMenu:update(dt)
end

function MenuState:render()
    self.statsMenu:render()
end
