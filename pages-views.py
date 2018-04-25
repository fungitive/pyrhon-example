def index2(request):
    from app01.pager import Pagination
    current_page = request.GET.get('p')
    page_obj = Pagination(666,current_page)

    data_list = USER_LIST[page_obj.start():page_obj.end()]
    return render(request,'index2.html',{'data':data_list,'page_obj':page_obj})
