from django.shortcuts import render
from django.http import HttpResponse,JsonResponse
import os
import json
import hashlib
import mysql.connector
from django.views.decorators.csrf import csrf_exempt
# Create your views here.


def Commitfile(request):
    print(request.GET['name'])
    print(request.GET['mpc'])
    return HttpResponse('Commit File done')


def Getchecksum(request):
    path = 'C:\\Users\\Keroro\\Desktop\\checksum'
    fname = os.listdir(path)
    recipe_file_name = 'x.txt'
    with open(path+'\\'+recipe_file_name, 'rb') as file_to_check:
        data = file_to_check.read()  
        md5_returned = hashlib.md5(data).hexdigest()

    conn = mysql.connector.connect(host="localhost",port="3306",user="root",password="",database="maprecipe")
    cursor=conn.cursor()
    selectquery = "SELECT * FROM recipefile WHERE id='2'"
    cursor.execute(selectquery)
    records = cursor.fetchall()
    cursor.close()
    conn.close()
    return JsonResponse({'abc':md5_returned,'checksum':records},safe=False,json_dumps_params={'ensure_ascii':False})