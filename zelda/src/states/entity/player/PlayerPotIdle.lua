

PlayerPotIdle = Class{__includes=EntityIdleState}


function PlayerPotIdle:init(player)
    self.entity = player
end

function PlayerPotIdle:enter(params)

    self.pot = params.object
end

function PlayerPotIdle:update(dt)

    self.entity:changeAnimation('pot-idle-' .. self.entity.direction)

    self.pot.x = self.entity.x
    self.pot.y = self.entity.y - self.pot.height + 5

    EntityIdleState.update(self, dt)

    if love.keyboard.isDown('left') or love.keyboard.isDown('right') or
       love.keyboard.isDown('up') or love.keyboard.isDown('down') then
        self.entity:changeStateWithParams('pot-walking', {
            object = self.pot
        })

    else if love.keyboard.wasPressed('return') then
        self.entity:changeStateWithParams('pot-throw', {
            object = self.pot
        })
        end
    end
end


function PlayerPotIdle:render()
    EntityIdleState.render(self)
    self.pot:render(0, 0)
end 
