from django.http import JsonResponse
from django.shortcuts import render
from django.db import connection

# Create your views here.


def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]


def City_Available_Analysis(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM City_Available_Analysis")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])

    return JsonResponse(context)


def City_Potential_Analysis(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM City_Potential_Analysis")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])

    return JsonResponse(context)


def City_Total_Analysis(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM City_Total_Analysis")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])

    return JsonResponse(context)


def City_Population(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM City_Population")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])

    return JsonResponse(context)


def City_Projection(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM City_Projection")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])

    return JsonResponse(context)


def City_Total_Beds(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM City_Total_Beds")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])

    return JsonResponse(context)


def City_ICU_Beds(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM City_ICU_Beds")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])

    return JsonResponse(context)


def City_Bed_Needed(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM City_Bed_Needed")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])

    return JsonResponse(context)

def State_Abbr(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0

    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM State_Abbr")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])
    return JsonResponse(context)


def State_CityList(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0

    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM  State_CityLIst")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])
    return JsonResponse(context)

def State_ICU_Beds(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0

    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM  State_ICU_Beds")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])
    return JsonResponse(context)


def State_Total_Beds(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0

    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM  State_Total_Beds")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])
    return JsonResponse(context)


def State_Available_Analysis(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0

    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM  State_Available_Analysis")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])
    return JsonResponse(context)


def State_Bed_Needed(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0

    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM  State_Bed_Needed")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])
    return JsonResponse(context)


def State_Total_Analysis(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0

    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM  State_Total_Analysis")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])
    return JsonResponse(context)


def State_Potential_Analysis(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0

    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM  State_Potential_Analysis")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])
    return JsonResponse(context)


def State_Population(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0

    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM  State_Population")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])
    return JsonResponse(context)


def State_Projection_Data(request):
    context = {}
    context['msg'] = ""
    context['code'] = 0
    context['count'] = 0

    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM State_Projection_Data")
        context['data'] = dictfetchall(cursor)
    context['count'] = len(context['data'])
    return JsonResponse(context)
