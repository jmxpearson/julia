@test Base.Cartesian.exprresolve(:(1 + 3)) == 4
ex = Base.Cartesian.exprresolve(:(if 5 > 4; :x; else :y; end))
@test ex.args[2] == QuoteNode(:x)
