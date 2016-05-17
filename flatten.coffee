###
# Flatten an arbitrarily deep nested array
#
# @param {Array} arr
# @return {Array}
# @api public
###

flatten = (arr, r) ->
    if r==undefined and !Array.isArray(arr) then throw "an array input expected"

    r = r || []
    len = arr.length
    i = -1
    while ++i < len
        if Array.isArray(arr[i])
            flatten arr[i], r
        else
            r.push arr[i]
    return r

module.exports=flatten
