function printkey(k)
    alph = "O|2"
    n = size(k)[begin]
    for r in 1:n
        for c in 1:n print(alph[k[r,c]+1], " ") end
        print("\n")
    end
    @printf "\n\n"
end

function printvec(v)
    alph = "O|2"
    for i in eachindex(v)
        print(alph[v[i]+1])
    end
    @printf "\n"
end