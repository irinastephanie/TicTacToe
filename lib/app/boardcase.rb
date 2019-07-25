class Boardcase #case, avec 9 instances.
attr_accessor :symbol ,:id_case

def initialize(symbol, id_case)
    @symbol = [X, O, nil]
    @id_case = [0..8]

end
end
#empty case
