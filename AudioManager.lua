-- AudioManager SINGLETON object definition
AudioManager = {neighbours = {},
                masking = {},

                isActive = false,

                new = function ()
                    log("ERROR AudioManager is a singleton object with global access")
                end
}

function AudioManager:init()

    self.isActive = false
    self.masking = {false, false, false, false, false}
    -- group            1      2       3       4     5  
    self.neighbours = {{2}, {1, 3}, {2, 4}, {3, 5}, {4}}

end

-- det bliver bare dødlækkert når det spiller