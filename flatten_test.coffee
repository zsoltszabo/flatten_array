test=require("nodeunit")
flatten=require("./flatten.js")

#the best documentation is tests
test.assert.throws( (()->flatten(null)))
test.assert.deepEqual(flatten([]),[])
test.assert.deepEqual(flatten([[[[]]]]),[])
test.assert.deepEqual(flatten([1]),[1])
test.assert.deepEqual(flatten([1,2]),[1,2])
test.assert.deepEqual(flatten([[1,[2,[[3]]]],4]),[1,2,3,4])