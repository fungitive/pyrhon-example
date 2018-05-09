from django.shortcuts import render,HttpResponse
from django.http import JsonResponse
import json
def Imgs(request):
    return render(request,'img.html')
def get_imgs(request):
    nid = request.GET.get('nid')
    img_list = models.Imgs.objects.filter(id__gt=nid).values('id', 'src', 'title','summary')
    img_list = list(img_list)
    ret = {
        'status': True,
        'data': img_list，
    }
    # return HttpResponse(json.dumps(ret))
    return JsonResponse(ret)
    # return JsonResponse([11,22,33],safe=False)
