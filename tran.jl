function _translate(s)
    n = findfirst(x -> x == s , alph) - 1
    if  n < 3
        n = "00" * string(n,base = 3)
    elseif n < 9
        n = "0" * string(n,base = 3)
    else
        n =  string(n,base = 3)
    end
    n
end

function translate(s)
    y = ""
    for i in eachindex(s)
        y *= _translate(s[i])
    end
    y
end

function vecfromstring(s)
    v = zeros(Int64, length(s))
    for i in eachindex(s)
        v[i] = parse(Int64, s[i:i])
    end
    v
end

function vec_from(x) vecfromstring(translate(x)) end

function string_from(v)
    s = ""
    for i in range(1,length(v), step = 3)
        n = 9*v[i] + 3*v[i+1] + v[i+2]
        s *= alph[n+1]
    end
    s
end