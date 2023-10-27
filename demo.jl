

function demo()
    alph = "O|2"
    k = key(n)
    printkey(k)
    alph = "_ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    p = vec_from("THIS_IS_A_TEST_OF_THE_TERNARY_CURIUM_CRYPTOSYSTEM")
    c  = encrypt(p,k,r)
    d  = decrypt(c,k,r)
    @printf "p        "
    printvec(p)
    @printf "c        "
    printvec(c)
    alph = "_ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    @printf "t(p)     "
    print(string_from(p),"\n")
    @printf "t(c)     "
    print(string_from(c),"\n")
    # @printf "d        "
    # printvec(d)
    # @printf "p == d   "
    # printvec(p .== d)
    # @printf "p != c   "
    # printvec(p .!= c)
    if p != d @printf "ERROR" end
end

function codedemo()
    k = key(n)
    p = text(t)
    c  = encode(p,k)
    d  = decode(c,k)
    @printf "p        "
    printvec(p)
    @printf "c        "
    printvec(c)
    # @printf "d        "
    # printvec(d)
    if p != d @printf "ERROR" end
end

function trantest()
    alph = "_ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    p = vec_from("THIS_IS_A_TEST_OF_THE_TERNARY_CURIUM_CRYPTOSYSTEM")
    print(p)
    print(string_from(p))
end
