A = matrix(RR, 4, [.80, .20, 0,  0,  # order beer
                   .5, .25, .25, 0,  # try to talk to girl
                    0,   0, .5, .5, # after talking to girl
                   .4,   0,   0, .6]) # leave

emission_symbols = ['She is cute', 'okay ill leave', 'hi my name is', 'Did it hurt when you feel from heaven', 'oh okay']
B = matrix(RR, 4, 5, [.02,.80,0,0,0,  # order beer
                      .1,0,.9,0,0,  # try to talk to girl
                      0,0,.1,.5,.4, # after talking to girl
                      0.2,0,0,0,8])

initial = [1,0,0,0]

model = hmm.DiscreteHiddenMarkovModel(A, B, initial, emission_symbols)
