def dataSource(request):
    if (request.json):
        res = request.json
    if (request.form):
        temp = request.form
        # Flatten form data
        res = {}
        for key in temp:
            res[key] = temp[key]
    
    return res

def validateResponse(arr, res):
    for i in arr:
        if (i not in res):
            return False
    
    return True