from time import sleep
from django.shortcuts import render
from django.http import HttpResponse,JsonResponse
import os
import json
import hashlib
# import mysql.connector
from django.views.decorators.csrf import csrf_exempt
from django.core.files.storage import FileSystemStorage
# Create your views here.


# def Commitfile(request):
#     print(request.GET['mpc'])
#     path = 'C:\\Users\\Keroro\\Desktop\\approvedfile'
#     recipe_file_name = 'y.txt'
#     with open(path+'\\'+recipe_file_name, 'rb') as file_to_check:
#         data = file_to_check.read()  
#         md5_returned = hashlib.md5(data).hexdigest()
#     destination_path = 'C:\\Users\\Keroro\\Desktop\\simsharedrive'
#     file = open(destination_path+'\\y.txt','w')
#     file.write(data.decode("utf-8"))
#     file.close()
#     conn = mysql.connector.connect(host="localhost",port="3306",user="root",password="",database="maprecipe")
#     cursor=conn.cursor()
#     selectquery = "INSERT INTO recipefile(id,file_name,checksum) VALUES("+request.GET['mpc']+",'y','"+ md5_returned+"')"
#     cursor.execute(selectquery)
#     conn.commit()
#     cursor.close()
#     conn.close()

#     return HttpResponse('Commit File done')


# def Getchecksum(request):
#     path = 'C:\\Users\\Keroro\\Desktop\\simsharedrive'
#     fname = os.listdir(path)
#     recipe_file_name = 'x.txt'
#     with open(path+'\\'+recipe_file_name, 'rb') as file_to_check:
#         data = file_to_check.read()  
#         md5_returned = hashlib.md5(data).hexdigest()

#     conn = mysql.connector.connect(host="localhost",port="3306",user="root",password="",database="maprecipe")
#     cursor=conn.cursor()
#     selectquery = "SELECT * FROM recipefile WHERE id='" + request.GET['mpc'] + "'"
#     cursor.execute(selectquery)
#     records = cursor.fetchall()
#     cursor.close()
#     conn.close()
#     if(str(md5_returned) == str(records[0][2])):
#         result = "Match"
#     else:
        
#         result = "No Match"
#     return JsonResponse({'sharedrive_checksum':md5_returned,'db_checksum':records[0][2],'result':result},safe=False,json_dumps_params={'ensure_ascii':False})
@csrf_exempt 
def test_pushfiletodb(request):
    print(request.FILES['mpc'])
    myfile = request.FILES['mpc']
    fs = FileSystemStorage(location=".//commit//")
    filename = fs.save(myfile.name,myfile)
    uploaded_file_url = fs.url(filename)
    return HttpResponse("done")

# def Getreview_request(request):
#     mpc = request.GET['mpc']
#     conn = mysql.connector.connect(host="localhost",port="3306",user="root",password="",database="maprecipe")
#     cursor=conn.cursor()
#     selectquery = "SELECT * FROM recipefile WHERE id='" + mpc + "'"
#     cursor.execute(selectquery)
#     records = cursor.fetchall()
#     cursor.close()
#     conn.close()
#     lit = []
#     for i in records:
#         result = {}
#         result['mpc'] = i[0]
#         result['filename'] = i[1]
#         result['checksum'] = i[2]
#         lit.append(result)
        
#     return JsonResponse(lit[:],safe=False,json_dumps_params={'ensure_ascii':False})