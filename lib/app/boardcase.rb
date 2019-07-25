class Boardcase #case, avec 9 instances.
attr_accessor :symbol ,:boardcase

def initialize(symbol, boardcase)
    @symbol = [X, O, nil]
    @boardcase = [0..8]

end
end
#empty case
