return function(scores) 
    local localScores = {table.unpack(scores)}
    table.sort(localScores)

    return { 
        scores = function() return scores end,
        latest = function() return scores[#scores] end,
        personal_best = function() return localScores[#localScores] end,
        personal_top_three = function() return {localScores[#localScores], localScores[#localScores-1], localScores[#localScores-2]} end
    }
end
