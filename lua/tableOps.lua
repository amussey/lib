function getKeys(tab)
    local keyset={}
    local n=0

    for k,v in pairs(tab) do
        n=n+1
        keyset[n]=k
    end
    return keyset
end

table.keys = getKeys
